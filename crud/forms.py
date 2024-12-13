from django import forms
from .models import Producto
from django.contrib.auth.forms import AuthenticationForm


class ProductoForm(forms.ModelForm):
    class Meta:
        model = Producto
        fields = ['nombre', 'categoria', 'descripcion', 'stock', 'precio', 'fecha_vencimiento']
        
    nombre = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    categoria = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    descripcion = forms.CharField(widget=forms.Textarea(attrs={'class': 'form-control'}))
    stock = forms.IntegerField(widget=forms.NumberInput(attrs={'class': 'form-control'}))
    precio = forms.DecimalField(widget=forms.NumberInput(attrs={'class': 'form-control'}))
    fecha_vencimiento = forms.DateField(widget=forms.DateInput(attrs={'class': 'form-control', 'type': 'date'}))


class LoginForm(forms.Form):
    username = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control'}))
    password = forms.CharField(widget=forms.PasswordInput(attrs={'class': 'form-control'}))