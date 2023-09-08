import mysql.connector
con=mysql.connector.connect(host="localhost", user="root", password="1234root", database="atlas")
curr=con.cursor()

# Let a customer see all products of a specific category that they purchased from most
# costly to least
s='''select category_name, product_name, selling_price from product,category,inventory
where product.product_id=inventory.product_id and category.category_id=inventory.category_id
and inventory.product_id in (select product_id from bills where bill_no in (select bill_no from ledger where customer_id=2)and category_id=1) and inventory.brand_id in (select brand_id from bills where bill_no in (select bill_no from ledger where customer_id=2)and category_id=1) 
order by selling_price desc;'''
curr.execute(s)
l=curr.fetchall()
print("Category Product Price")
for a in l:
    print(str(a[0])+"     "+str(a[1])+"     "+str(a[2]))

print('\n'+"-----------------Query 1 complete------------"+'\n')






# Let the admin see which products are left in the inventory that have a
# qty of less than a (predetermined) value

s2='''select product_name,sum(quantity) from inventory,product
where product.product_id=inventory.product_id 
group by product_name
having sum(quantity)<40;'''
curr.execute(s2)
l=curr.fetchall()
print("Product Qty")
for a in l:
    print(str(a[0])+"     "+str(a[1]))

print('\n'+"-----------------Query 2 complete------------"+'\n')






# print the inventory for the user 
s3='''select category_name,product_name,brand_name,selling_price,quantity from inventory,category,product,brand
where product.product_id=inventory.product_id and category.category_id=inventory.category_id
and brand.brand_id=inventory.brand_id;'''
curr.execute(s3)
l=curr.fetchall()
print("Category Product Brand Price Qty")
for a in l:
    print(str(a[0])+"     "+str(a[1])+"     "+str(a[2])+"     "+str(a[3])+"     "+str(a[4]))

print('\n'+"-----------------Query 3 complete------------"+'\n')

