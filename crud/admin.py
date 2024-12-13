from django.contrib import admin
from .models import Producto

@admin.register(Producto)
class ProductoAdmin(admin.ModelAdmin):
    list_display = ('nombre', 'precio', 'stock', 'categoria')  # Campos visibles en la lista del admin
    search_fields = ('nombre', 'categoria')  # Habilita la búsqueda
    list_filter = ('categoria',)  # Filtros laterales