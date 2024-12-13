# Generated by Django 5.1.3 on 2024-11-30 22:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('usuarios', '0003_delete_producto'),
    ]

    operations = [
        migrations.AlterField(
            model_name='customuser',
            name='role',
            field=models.CharField(choices=[('admin', 'Administrador'), ('vendedor', 'Vendedor'), ('supervisor', 'Supervisor')], default='vendedor', max_length=10),
        ),
    ]