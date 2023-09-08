# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Administrator(models.Model):
    sno = models.IntegerField()
    username = models.CharField(primary_key=True, max_length=45)
    userpass = models.CharField(max_length=45)

    def __str__(self):
        return self.username

    class Meta:
        managed = False
        db_table = 'administrator'


class Bills(models.Model):
    bill_no = models.ForeignKey('Ledger', models.DO_NOTHING, db_column='bill_no')
    category = models.ForeignKey('Category', models.DO_NOTHING)
    product = models.ForeignKey('Product', models.DO_NOTHING)
    brand = models.ForeignKey('Brand', models.DO_NOTHING)
    quantity = models.IntegerField()
    subtotal = models.DecimalField(max_digits=10, decimal_places=0, blank=True, null=True)
    bill_id = models.AutoField(primary_key=True)

   

    class Meta:
        managed = False
        db_table = 'bills'


class Brand(models.Model):
    brand_id = models.IntegerField(primary_key=True)
    brand_name = models.CharField(max_length=45)

    def __str__(self):
        return self.brand_name

    class Meta:
        managed = False
        db_table = 'brand'


class Category(models.Model):
    category_id = models.IntegerField(primary_key=True)
    category_name = models.CharField(max_length=45)
    category_info = models.CharField(max_length=200, blank=True, null=True)

    def __str__(self):
        return self.category_name

    class Meta:
        managed = False
        db_table = 'category'


class CategoryToProduct(models.Model):
    category_id = models.IntegerField()
    product_id = models.IntegerField()
    category_to_product_id = models.AutoField(primary_key=True)

 

    class Meta:
        managed = False
        db_table = 'category_to_product'


class Customer(models.Model):
    customer_id = models.AutoField(primary_key=True)
    cust_name = models.CharField(max_length=45)
    cust_pass = models.CharField(max_length=45)
    cust_type = models.IntegerField(blank=True, null=True)
    email = models.CharField(unique=True, max_length=45, blank=True, null=True)
    residence = models.CharField(max_length=1000, blank=True, null=True)
    cust_status = models.CharField(max_length=45, blank=True, null=True)

    def __str__(self):
        return self.cust_name

    class Meta:
        managed = False
        db_table = 'customer'

class Finance(models.Model):
    category_id = models.IntegerField()
    category_name = models.CharField(max_length=45)
    product_id = models.IntegerField()
    product_name = models.CharField(max_length=45)
    brand_id = models.IntegerField()
    brand_name = models.CharField(max_length=45)
    selling_price = models.DecimalField(max_digits=10, decimal_places=0)
    quantity = models.IntegerField()
    cost_price = models.DecimalField(max_digits=10, decimal_places=0)
    bill_no = models.IntegerField()
    subtotal = models.DecimalField(max_digits=10, decimal_places=0, blank=True, null=True)
    date_of_purchase = models.DateField()
    customer_id = models.IntegerField()
    cust_name = models.CharField(max_length=45)
    finance_id = models.AutoField(primary_key=True)

    class Meta:
        managed = False
        db_table = 'finance'

class Inventory(models.Model):
    category = models.ForeignKey(Category, models.DO_NOTHING)
    product = models.ForeignKey('Product', models.DO_NOTHING)
    brand = models.ForeignKey(Brand, models.DO_NOTHING)
    selling_price = models.DecimalField(max_digits=10, decimal_places=0)
    quantity = models.IntegerField()
    cost_price = models.DecimalField(max_digits=10, decimal_places=0)
    inventory_id = models.AutoField(primary_key=True)



    class Meta:
        managed = False
        db_table = 'inventory'


class Items(models.Model):
    category_name = models.CharField(max_length=45)
    product_name = models.CharField(max_length=45)
    brand_name = models.CharField(max_length=45)
    quantity = models.IntegerField()
    cost_price = models.DecimalField(max_digits=10, decimal_places=0)
    item_id = models.AutoField(primary_key=True)
    image = models.ImageField(upload_to="shop/images",default="")
    descript = models.CharField(max_length=16000,default="")
    selling_price = models.IntegerField(blank=True, null=True)

    def __str__(self):
        return str(self.item_id)+") "+self.brand_name+" "+self.product_name

    class Meta:
        managed = False
        db_table = 'items'


class Ledger(models.Model):
    bill_no = models.IntegerField(primary_key=True)
    date_of_purchase = models.DateField()
    customer = models.ForeignKey(Customer, models.DO_NOTHING)



    class Meta:
        managed = False
        db_table = 'ledger'


class Product(models.Model):
    product_id = models.IntegerField(primary_key=True)
    product_name = models.CharField(max_length=45)
    image = models.TextField(blank=True, null=True)

    
    def __str__(self):
        return self.product_name

    class Meta:
        managed = False
        db_table = 'product'


class ProductToBrand(models.Model):
    product_id = models.IntegerField()
    brand_id = models.IntegerField()
    product_to_brand_id = models.AutoField(primary_key=True)

   

    class Meta:
        managed = False
        db_table = 'product_to_brand'
