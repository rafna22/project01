from django.urls import path
from . import views

urlpatterns=[

path('about/',views.about),
path('contact/',views.contact),
path('',views.index),
path('register/',views.register),
path('login/',views.login),
path('logout/',views.logout),
path('display/',views.display),
path('update/',views.update),
path('delete/',views.delete),
path('single/',views.single),
path('addtocart/',views.addtocart),
path('cart/',views.carts),



path('payment/',views.payments),






########################################################################################################################################
########################################ADMIN###########################################################################################
path('admindex/',views.adm_index),
path('admtable/',views.adm_table),
path('admform/',views.adm_form),
path('admlogin/',views.adm_login),
path('admreg/',views.adm_register),
path('admlogout/',views.adm_logout),
path('admupdate/',views.adm_update),
path('admdelete/',views.adm_delete),














]