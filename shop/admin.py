from django.contrib import admin

# Register your models here.

from .models import Bills,Product,Brand,Category,ProductToBrand,CategoryToProduct,Ledger,Items,Inventory,Customer
admin.site.register(Bills)
admin.site.register(Product)
admin.site.register(Brand)
admin.site.register(Category)
admin.site.register(ProductToBrand)
admin.site.register(CategoryToProduct)
admin.site.register(Ledger)
admin.site.register(Inventory)
admin.site.register(Customer)
admin.site.register(Items)
