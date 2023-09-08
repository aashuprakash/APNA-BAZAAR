from django.shortcuts import render,redirect
from django.http import HttpResponse
from math import ceil
from .models import Items,Customer,Bills,Ledger,Category,Product,Brand,Finance
import json
from datetime import date
import mysql.connector
con=mysql.connector.connect(host="localhost", user="root", password="1234root", database="atlasonline")
curr=con.cursor()

customer=-1
Cart=""
def index(request,flag=0):
    food= Items.objects.filter(category_name="food")
    appliances= Items.objects.filter(category_name="Appliances")
    electronics= Items.objects.filter(category_name="electronics")
    sports= Items.objects.filter(category_name="sports Equipment")
    office= Items.objects.filter(category_name="office supplies and stationary")
    medical= Items.objects.filter(category_name="medical supplies")
    products= Items.objects.all()
    params={"food":food,"appliances":appliances,"electronics":electronics,"sports":sports,"office":office,"medical":medical,"flag":flag,"customer":customer,"products":products}
    return render(request,'shop/index.html',params)

def food(request):

    products= Items.objects.filter(category_name="food")
    n=len(products)
    params={"products":products,"category":"FOOD PRODUCTS","firstRows":range(0,ceil(n/4)-1),"lastRow":range(0,n-4*(ceil(n/4)-1)),"four":range(0,4),"customer":customer}
    return render(request,'shop/food.html',params)

def health(request):
    products= Items.objects.filter(category_name="health")
    params={"products":products,"category":"HEALTH PRODUCTS","customer":customer}
    return render(request,'shop/health.html',params)

def beauty(request):
    products= Items.objects.filter(category_name="beauty")
    params={"products":products,"category":"BEAUTY PRODUCTS","customer":customer}
    return render(request,'shop/beauty.html',params)

def clothes(request):
    products= Items.objects.filter(category_name="clothes")
    params={"products":products,"category":"CLOTHES","customer":customer}
    return render(request,'shop/clothes.html',params)

def furniture(request):
    products= Items.objects.filter(category_name="furtniture")
    params={"products":products,"category":"FURNITURE","customer":customer}
    return render(request,'shop/furniture.html',params)

def daily_items(request):
    products= Items.objects.filter(category_name="Daily_Items")
    params={"products":products,"category":"DAILY ITEMS","customer":customer}
    return render(request,'shop/daily_items.html',params)

def appliances(request):
    products= Items.objects.filter(category_name="Appliances")
    params={"products":products,"category":"APPLIANCES","customer":customer}
    return render(request,'shop/appliances.html',params)

def beverages(request):
    products= Items.objects.filter(category_name="beverages")
    params={"products":products,"category":"BEVERAGES","customer":customer}
    return render(request,'shop/beverages.html',params)

def electronics(request):
    products= Items.objects.filter(category_name="electronics")
    params={"products":products,"category":"ELECTRONICS","customer":customer}
    return render(request,'shop/electronics.html',params)

def sports_equipment(request):
    products= Items.objects.filter(category_name="sports Equipment")
    params={"products":products,"category":"SPORTS EQUIPMENT","customer":customer}
    return render(request,'shop/sports_equipment.html',params)

def cleaning(request):
    products= Items.objects.filter(category_name="cleaning")
    params={"products":products,"category":"CLEANING","customer":customer}
    return render(request,'shop/cleaning.html',params)

def office(request):
    products= Items.objects.filter(category_name="office supplies and stationary")
    params={"products":products,"category":"OFFICE SUPPLIES AND STATIONERY","customer":customer}
    return render(request,'shop/office.html',params)

def medical(request):
    products= Items.objects.filter(category_name="medical supplies")
    params={"products":products,"category":"MEDICAL SUPPLIES","customer":customer}
    return render(request,'shop/medical.html',params)

def signup(request):
    if request.method=='POST':
        name=request.POST.get('name','')
        email=request.POST.get('email','')
        password=request.POST.get('password','')
        address=request.POST.get('address','')
        type=request.POST.get('cust_type','')
        # print(name,email,password,address)
        new_customer=Customer(cust_name=name,cust_pass=password, email=email,residence=address,cust_type=type)
        new_customer.save()
    return redirect("/shop/")

# create logout button then set cutomer to none if clicked
def login(request):
    global customer
    if request.method=='POST':
        email=request.POST.get('email','')
        password=request.POST.get('password','')
        temp_customer=Customer.objects.filter(email=email,cust_pass=password)
        if (len(temp_customer)==0):
            return index(request,flag=1)
        else:
            customer=temp_customer[0]
            return index(request)
        
def logout(request):
      global customer
      customer=-1
      return index(request)

def prodView(request,id):
    product= Items.objects.get(item_id=id)
    # print(id)
    params={"product":product}
    return render(request,'shop/productview.html',params)

def searchMatch(product , query):
    product_name=product.product_name.lower()
    brand_name=product.brand_name.lower()
    category_name=product.category_name.lower()
    descript=product.descript.lower()
    price=str(product.cost_price)
    query=query.lower()
    

    if ((query in descript) or (query in product_name) or (query in brand_name) or (query in category_name) or (query in price)):
        return True
    else :
        return False

def search(request):
    query= request.GET.get('search')
    temp=Items.objects.all()
    products=[a for a in temp if (searchMatch(a,query)) ]
    params={'products':products}
    return render(request,'shop/search.html',params)


def cart(request):
    global Cart
    result = request.GET.get('result', None)
  

    if (result!=None):
        Cart=result
    # print(Cart)
    d=json.loads(Cart)
    
   
    Products={}
    var=0
    for a in d:
        temp_prod=Items.objects.get(item_id=a)
        Products[temp_prod]=[d[a],d[a]*temp_prod.cost_price]
        var+=d[a]*temp_prod.cost_price
    # print(Products)
    params={'products':Products,'sum':var,'customer':customer}
    return render(request,"shop/viewCart.html",params)

def orders(request):
    p=Items.objects.filter(product_name="milk")
   


    if customer!=-1: bill_no=Ledger.objects.filter(customer=customer)
    else: bill_no=[]

    cnt=0
    orders=[]
    for a in bill_no:
        bill_entries=Bills.objects.filter(bill_no=a)
        temp_products={}
        var=0
        
        for a in bill_entries:
            
            curr_product=Items.objects.filter(category_name=a.category,product_name=a.product,brand_name=a.brand)
            # print(curr_product.product_name)
           
            temp_products[curr_product.first]=[a.quantity,a.subtotal]
            var+=a.subtotal
        cnt=cnt+1
        orders.append([temp_products,var,cnt])
        
    # print(orders)
    params={'orders':orders,'range':range(1,len(orders)+1)}
    return render(request,"shop/customer_orders.html",params)



def checkout(request):
   print(customer)
   d=json.loads(Cart)
   if customer!=-1:
       last=Ledger.objects.all()
       max=0
       for a in last:
           if a.bill_no>max:
               max=a.bill_no
       print(max+1)
       new_ledger=Ledger(bill_no=max+1, date_of_purchase =date.today(), customer=customer)
       new_ledger.save()

   ans=""
   ans+="start transaction;"
   ans+='savepoint s1;'

   final_total=0
   
   
   for a in d:
        s="select * from inventory where  inventory_id='{}'".format(a)
        curr.execute(s)
        l=curr.fetchall()
        # print(l)
        subtotal=d[a]*l[0][5]
        final_total+=subtotal

        s="insert into bills (bill_no,category_id,product_id,brand_id,quantity,subtotal) values({},{},{},{},{},{} );".format(max,l[0][0],l[0][1],l[0][2],d[a],subtotal)
        ans+=s
        
        
        # new_bill=Bills(max+1,category=Category.objects.get(category_name=temp_prod.category_name) ,product=Product.objects.get(product_name=temp_prod.product_name),brand=Brand.objects.get(brand_name=temp_prod.brand_name),quantity=d[a],subtotal=d[a]*temp_prod.cost_price)
        # new_bill.save()
   if final_total<1000:
       ans+="rollback;"
   else: ans+="commit;"
   print(ans)

   result_iterator=curr.execute(ans,multi=True)
   for res in result_iterator:
        print("Running query: ", res)  # Will print out a short representation of the query
        print(f"Affected {res.rowcount} rows" )
   if final_total<1000:
       con.commit()
   else: con.rollback()
    
   return redirect("/shop/")

def return_order(request):
    bil= request.GET.get('bill')
    print(bil)
    print(1)
    s="select category_id,product_id,brand_id,quantity from bills where bill_no={};".format(bil)
    curr.execute(s)
    l=curr.fetchall()
    print(2)

    ans=""

    s='start transaction;'
    ans+=s
    print(3)
    
    for a in l:
        s="update inventory set quantity=quantity+{} where category_id={} and product_id={} and brand_id={};".format(a[3],a[0],a[1],a[2])
        ans+=s
    print(4)
    s="delete from bills where bill_no={};".format(bil)
    ans+=s
    s="delete from ledger where bill_no={};".format(bil)
    ans+=s
    ans+="commit;"
    print(5)

    result_iterator=curr.execute(ans,multi=True)
    for res in result_iterator:
        print("Running query: ", res)  # Will print out a short representation of the query
        print(f"Affected {res.rowcount} rows" )
    con.commit()
    return render(request,'shop/admin_page.html')

    
def admin_page(request):
     return render(request,'shop/admin_page.html')

def new_product(request):
    prod_name= request.GET.get('prod_name')
    prod_categ= request.GET.get('prod_categ')
    prod_brand= request.GET.get('prod_brand')
    prod_cost= request.GET.get('prod_cost')
    prod_sell= request.GET.get('prod_sell')
    prod_qty= request.GET.get('prod_qty')
    s='''
start transaction;
SET @new_category_id=(select max(category_id)+1 from category);
SET @new_product_id=(select max(product_id)+1 from product);
SET @new_brand_id=(select brand_id from brand where brand_name='{}');
insert into category values(@new_category_id,'{}',"new category");
insert into product (product_id,product_name) values(@new_product_id,'{}');
insert into category_to_product(category_id,product_id) values(@new_category_id,@new_product_id);
insert into product_to_brand(product_id,brand_id) values(@new_product_id,@new_brand_id);
insert into inventory(category_id,product_id,brand_id,selling_price,quantity,cost_price) values(@new_category_id,@new_product_id,@new_brand_id,{},{},{});
commit; '''.format(prod_brand,prod_categ,prod_name,prod_sell,prod_qty,prod_cost)

    result_iterator=curr.execute(s,multi=True)
    for res in result_iterator:
        print("Running query: ", res)  # Will print out a short representation of the query
        print(f"Affected {res.rowcount} rows" )
    con.commit()
    return render(request,'shop/admin_page.html')


def delete_category(request):
    categ= request.GET.get('categ')
    s='''
start transaction;
SET @id=(select category_id from category where category_name='{}');
SET @productId=(select product_id from category_to_product where category_id=@id);
delete from inventory where product_id=@productId;
delete from category_to_product where product_id=@productId;
delete from product_to_brand where product_id=@productId;
delete from product where product_id=@productId;
delete from category where category_id=@id;
commit;
    '''.format(categ)
    result_iterator=curr.execute(s,multi=True)
    for res in result_iterator:
        pass
    con.commit()
    return render(request,'shop/admin_page.html')
    
    

def query_output(request):
    query= request.GET.get('custom')
    # query= "select * from customer;"
    curr.execute(query)
    # con.commit()
    l=curr.fetchall()
    headers=[]
    print (l)
    if len(l)!=0: 
        for i in curr.description:headers.append(i[0])
   
    params={"values":l,"headings":headers}

    return render(request,'shop/query_output.html',params)

def query_output_top10(request):
    l=Finance.objects.raw("select finance_id,cust_name,count(distinct bill_no) as cnt from finance group by customer_id  order by count(distinct bill_no) desc  Limit 5;")
    params={"customers":l}
        
    return render(request,'shop/query_output_top10.html',params)

def query_output_all_cats_by_profit(request):
    s=''' select category_name, ((sum(selling_price)-sum(cost_price))/sum(cost_price))*100 as profit from inventory, category
where  category.category_id=inventory.category_id
group by category_name
order by ( ((sum(selling_price)-sum(cost_price))/sum(cost_price))*100) desc;'''
    curr.execute(s)
    l=curr.fetchall()

    params={"categories":l}
        
    return render(request,'shop/query_output_all_cats_by_profit.html',params)

def query_output_avg_price_brands(request):
    s='''select brand_name ,avg(selling_price) from inventory,brand
where brand.brand_id=inventory.brand_id
group by brand_name
order by avg(selling_price);'''
    curr.execute(s)
    l=curr.fetchall()
    # print(l)
    params={"brands":l}
        
    return render(request,'shop/query_output_avg_price_brands.html',params)

def query_output_purchase_history(request):
    id=customer.customer_id

    s='''select product_name, quantity, subtotal from bills , product
where product.product_id=bills.product_id and bill_no in (select bill_no from ledger where customer_id={});'''.format(id)
    curr.execute(s)
    l=curr.fetchall()
    print(l)
    params={"orders":l}
        
    return render(request,'shop/query_output_purchase_history.html',params)

def query_output_yearly_profit(request):
    s='''select year(date_of_purchase),((sum(selling_price*bills.quantity)-sum(cost_price*bills.quantity))/sum(cost_price*bills.quantity))*100 as profit from inventory,bills,ledger
where bills.product_id=inventory.product_id and bills.category_id=inventory.category_id and bills.brand_id=inventory.brand_id and bills.bill_no=ledger.bill_no
group by year(date_of_purchase);'''
    curr.execute(s)
    l=curr.fetchall()
    # print(l)
    params={"profits":l}
        
    return render(request,'shop/query_output_yearly_profit.html',params)

def query_output_qty_checker(request):
    s='''select product_name,sum(quantity) from inventory,product
where product.product_id=inventory.product_id
group by product_name
having sum(quantity)<40;'''
    curr.execute(s)
    l=curr.fetchall()
    # print(l)
    params={"products":l}
        
    return render(request,'shop/query_output_qty_checker.html',params)

def query_output_product_per_brand(request):
    s='''select product_name,brand_name from product_to_brand,product,brand
where product_to_brand.product_id=product.product_id and product_to_brand.brand_id=brand.brand_id;'''
    curr.execute(s)
    l=curr.fetchall()
    # print(l)
    params={"products":l}
        
    return render(request,'shop/query_output_product_per_brand.html',params)

    

def query_output_olap1_disinct_prods_int_year(request):
    l=Finance.objects.raw("select finance_id,category_name,Year(date_of_purchase) as year ,sum(quantity) as Quantity_sold from finance group by category_name,Year(date_of_purchase) with rollup;")
    params={"products":l}
        
    return render(request,'shop/query_output_olap1_disinct_prods_int_year.html',params)

def query_output_olap2_brand_wise_profit_in_year(request):
    l=Finance.objects.raw("select finance_id, brand_name,Year(date_of_purchase) as year,((sum(selling_price*quantity)-sum(cost_price*quantity))) as profit  from finance group by brand_name,Year(date_of_purchase) with rollup;")
    params={"profits":l}
        
    return render(request,'shop/query_output_olap2_brand_wise_profit_in_year.html',params)

def query_output_olap3_amt_spent_by_cust_each_month(request):
    l=Finance.objects.raw("select finance_id, cust_name, month(date_of_purchase) as month, year(date_of_purchase) as year , sum(subtotal) as total from finance group by  cust_name, month(date_of_purchase), year(date_of_purchase)  with rollup;")
    params={"customers":l}
        
    return render(request,'shop/query_output_olap3_amt_spent_by_cust_each_month.html',params)

def query_output_olap4_profit_percent_of_each_brand(request):
    l=Finance.objects.raw("select finance_id, product_name, brand_name, ((sum(selling_price)-sum(cost_price))/sum(cost_price))*100 as profit_percentage from finance group by  product_name, brand_name  with rollup;")
    params={"products":l}
        
    return render(request,'shop/query_output_olap4_profit_percent_of_each_brand.html',params)




