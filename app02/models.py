from django.db import models

# Create your models here.
class tab02(models.Model):
	name=models.CharField(max_length=100)
	email=models.CharField(max_length=200)
	password=models.CharField(max_length=100)
	phone=models.CharField(max_length=100)

class tab03(models.Model):
	name=models.CharField(max_length=100)
	email=models.CharField(max_length=100)
	phone=models.CharField(max_length=100)
	password=models.CharField(max_length=200)

class tab04(models.Model):
	name=models.CharField(max_length=100)
	price=models.CharField(max_length=100)
	offer=models.CharField(max_length=100)
	image=models.ImageField(upload_to='product/')
	category=models.CharField(max_length=100)
	
class cart(models.Model):
	uid=models.ForeignKey(tab02, on_delete=models.CASCADE)
	pid=models.ForeignKey(tab04, on_delete=models.CASCADE)
	total=models.CharField(max_length=100)
	status=models.CharField(max_length=100)




	

class payment(models.Model):
	uid=models.ForeignKey(tab02, on_delete=models.CASCADE)
	# pid=models.ForeignKey(tab04, on_delete=models.CASCADE)
	date=models.CharField(max_length=100)
	total=models.CharField(max_length=100)
	status=models.CharField(max_length=100)
