from django.urls import path,re_path
from . import views

urlpatterns = [
    path('',views.index , name="ShopHome"),
    path('food/',views.food , name="food"),
    path('health/',views.health , name="health"),
    path('beauty/',views.beauty , name="beauty"),
    path('clothes/',views.clothes , name="clothes"),
    path('furniture/',views.furniture , name="furniture"),
    path('daily_items/',views.daily_items , name="daily_items"),
    path('appliances/',views.appliances , name="appliances"),
    path('beverages/',views.beverages , name="beverages"),
    path('electronics/',views.electronics , name="electronics"),
    path('sports_equipment/',views.sports_equipment , name="sports_equipment"),
    path('cleaning/',views.cleaning , name="cleaning"),
    path('office/',views.office , name="office"),
    path('medical/',views.medical , name="medical"),
    path('signup/',views.signup , name="signup"),
    path('login/',views.login , name="login"),
    path('logout/',views.logout , name="logout"),
    path('productview/<int:id>',views.prodView , name="productview"),
    path('search/',views.search , name="search"),
    path('checkout/',views.checkout ,name="checkout"),
    path('your_orders/',views.orders ,name="your_orders"),

    path('admin_page/',views.admin_page ,name="admin"),
    path('new_product/',views.new_product ,name="query"),
    path('delete_category/',views.delete_category ,name="query"),
    path('return_order/',views.return_order,name="query"),


    path('query_output/',views.query_output ,name="query"),
    path('query_output_olap1_disinct_prods_int_year/',views.query_output_olap1_disinct_prods_int_year ,name="olap1"),
    path('query_output_olap2_brand_wise_profit_in_year/',views.query_output_olap2_brand_wise_profit_in_year ,name="olap2"),
    path('query_output_olap3_amt_spent_by_cust_each_month/',views.query_output_olap3_amt_spent_by_cust_each_month ,name="olap3"),
    path('query_output_olap4_profit_percent_of_each_brand/',views.query_output_olap4_profit_percent_of_each_brand ,name="olap4"),

    path('query_output_top10/',views.query_output_top10 ,name="query1"),
    path('query_output_all_cats_by_profit/',views.query_output_all_cats_by_profit ,name="query2"),
    path('query_output_avg_price_brands/',views.query_output_avg_price_brands ,name="query2"),
    path('query_output_purchase_history/',views.query_output_purchase_history ,name="query2"),
    path('query_output_yearly_profit/',views.query_output_yearly_profit ,name="query2"),
    path('query_output_qty_checker/',views.query_output_qty_checker ,name="query2"),
    path('query_output_product_per_brand/',views.query_output_product_per_brand ,name="query2"),

    # path('cart/',views.cart , name="cart")
    re_path(r'^cart$', views.cart, name='cart')
   
]
