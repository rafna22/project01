# Generated by Django 4.1.3 on 2023-01-05 04:40

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('app02', '0004_alter_tab04_image'),
    ]

    operations = [
        migrations.CreateModel(
            name='cart',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('total', models.CharField(max_length=100)),
                ('status', models.CharField(max_length=100)),
                ('pid', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app02.tab04')),
                ('uid', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app02.tab02')),
            ],
        ),
    ]