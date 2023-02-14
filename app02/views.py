from django.shortcuts import render,redirect
from django.http import HttpResponseRedirect
from . models import *
import datetime

# Create your views here.

def about(request):
	return render(request,'about.html')

def contact(request):
	return render(request,'contact.html')

def index(request):
	query=tab04.objects.all()
	return render(request,'index.html',{"data":query})

def register(request):
	if request.method=='POST':
		name=request.POST['name']
		email=request.POST['email']
		password=request.POST['password']
		phone=request.POST['phone']
		check=tab02.objects.filter(email=email)
		if check:
			return render(request,'register.html',{"error":"email already taken"})
		else:
			user=tab02(name=name,email=email,password=password,phone=phone)
			user.save()
			return render(request,'index.html')
	else:
		return render(request,'register.html')

def login(request):
	if request.method=='POST':
		email=request.POST['email']
		password=request.POST['password']
		check=tab02.objects.filter(email=email,password=password)
		if check:
			for x in check:
				request.session['myid']=x.id
				request.session['myname']=x.name
			return render(request,'index.html',{"success":"logged in"})
		else:
			return render(request,'login.html',{"error":"invalid data"})
	else:
		return render(request,'login.html')
def logout(request):
	if request.session.has_key('myid'):
		del request.session['myid']
		del request.session['myname']
		return HttpResponseRedirect('/')

	else:
		return redirect('/')

def display(request):
	data=tab02.objects.all()
	return render(request,'display.html',{'datas':data})

def update(request):
	if request.method=='POST':
		name=request.POST['name']
		email=request.POST['email']
		password=request.POST['password']
		phone=request.POST['phone']
		regid=request.GET['regid']
		data=tab02.objects.filter(id=regid).update(name=name,email=email,password=password,phone=phone)
		return redirect('/display')
	else:
		regid=request.GET['regid']
		data=tab02.objects.filter(id=regid)
		return render(request,'update.html',{'data':data})

def delete(request):
	regid=request.GET['regid']
	data=tab02.objects.filter(id=regid).delete()
	return redirect('/display')

def single(request):
	pid=request.GET['pid']
	query=tab04.objects.filter(id=pid)
	return render(request,'single.html',{"data":query})

def addtocart(request):
	if request.session.has_key('myid'):
		if request.method=='POST':
			pid=request.GET['pid']
			prd=tab04.objects.filter(id=pid)
			for x in prd:
				price=x.offer
			qty=1
			total=int(price)*int(qty)
			prdid=tab04.objects.get(id=pid)
			uid=request.session['myid']
			userid=tab02.objects.get(id=uid)
			check=cart.objects.filter(uid=uid,pid=pid,status="pending")
			if check:
				data=cart.objects.filter(uid=uid,status="pending")
				total=0
				for x in data:
					price=x.total
					total=int(price)+total
				return render(request,"cart.html",{"data":data,"error":"already exist","total":total})
			else:
				add=cart(uid=userid,pid=prdid,total=total,status="pending")
				add.save()
				data=cart.objects.filter(uid=uid,status="pending")
				total=0
				for x in data:
					price=x.total
					total=int(price)+total
				return render(request,"cart.html",{"data":data,"total":total})
		else:
			pid=request.GET['pid']
			query=tab04.objects.filter(id=pid)
			return render(request,'single.html',{"data":query})



	else:
		return redirect('/login/')

def carts(request):
	uid=request.session['myid']
	data=cart.objects.filter(uid=uid,status="pending")
	total=0
	for x in data:
		price=x.total
		total=int(price)+total

	return render(request,"cart.html",{"data":data,"total":total})


def payments(request):
	if request.method == "POST":
		uid=request.session['myid']
		userid=tab02.objects.get(id=uid)
		amount=request.POST['total']
		cdate=datetime.datetime.now().date()

		add=payment(uid=userid,date=cdate,total=amount,status="paid")
		add.save()
		cart.objects.filter(uid=uid,status="pending").update(status="paid")
		return HttpResponseRedirect("/")
	else:
		price=request.GET['gt']
		return render(request,'payment/index.html',{"total":price})
 





###########################################################################################################################################
#####################################ADMIN###############################################################################################

def adm_index(request):
	return render(request,'admin/index.html')


def adm_login(request):
	return render(request,'admin/login.html')

def adm_register(request):
	if request.method=='POST':
		name=request.POST['name']
		email=request.POST['email']
		phone=request.POST['phone']
		password=request.POST['password']
		check=tab03.objects.filter(email=email)
		if check:
			return render(request,'admin/registration.html',{"error":"email already taken"})
		else:
			user=tab03(name=name,email=email,phone=phone,password=password)
			user.save()
			return render(request,'admin/index.html')
	else:
		return render(request,'admin/registration.html')
def adm_login(request):
	if request.method=='POST':
		email=request.POST['email']
		password=request.POST['password']
		check=tab03.objects.filter(email=email,password=password)
		if check:
			for x in check:
				request.session['myid']=x.id
				request.session['myname']=x.name
				return render(request,'admin/index.html',{"success":"logged in"})
		else:
		    return render(request,'admin/login.html',{"error":"invalid details"})

	else:
		return render(request,'admin/login.html')

def adm_logout(request):
	if request.session.has_key('myid'):
		del request.session['myid']
		del request.session['myname']
		return HttpResponseRedirect('/admindex/')

	else:
		return redirect('/admindex/')

def adm_form(request):
	if request.method =='POST':
		name=request.POST['name']
		price=request.POST['price']
		offer=request.POST['offer']
		cimage=request.FILES['image']
		check=tab04.objects.filter(name=name)
		if check:
			return render(request,'admin/form_component.html',{"error":"already registered product"})
		else:
			user=tab04(name=name,price=price,offer=offer,image=cimage)
			user.save()
			return render(request,'admin/form_component.html',{"success":"product saved"})

	else:
		return render(request,'admin/form_component.html')

def adm_table(request):
	data=tab04.objects.all()
	return render(request,'admin/basic_table.html',{'datas':data})

def adm_update(request):
	if request.method=='POST':
		name=request.POST['name']
		price=request.POST['price']
		offer=request.POST['offer']
		cimage=request.FILES['image']
		regid=request.GET['regid']
		data=tab04.objects.filter(id=regid).update(name=name,price=price,offer=offer,cimage=image)
		return redirect('/admtable/')
	else:
		regid=request.GET['regid']
		data=tab04.objects.filter(id=regid)
		return render(request,'admin/adm_update.html',{'data':data})

def adm_delete(request):
	regid=request.GET['regid']
	data=tab04.objects.filter(id=regid).delete()
	return redirect('/admtable/')








