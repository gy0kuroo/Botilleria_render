from django.views.generic import TemplateView, CreateView, TemplateView, View, UpdateView, DeleteView, ListView
from django.shortcuts import redirect, get_object_or_404
from .mixins import RoleRequiredMixin
from django.urls import reverse_lazy
from .models import Producto
from .forms import ProductoForm
from django.contrib import messages
from django.core.paginator import Paginator

class AdminDashboardView(RoleRequiredMixin, TemplateView):
    required_role = 'admin'
    template_name = 'crud/admin_dashboard.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        productos = Producto.objects.all()
        paginator = Paginator(productos, 10)  # Mostrar 10 productos por página
        page_number = self.request.GET.get('page')
        context['productos'] = paginator.get_page(page_number)
        return context


class VendedorDashboardView(RoleRequiredMixin, TemplateView):
    template_name = 'crud/vendedor_dashboard.html'
    required_role = 'vendedor'


class SupervisorDashboardView(RoleRequiredMixin, ListView):
    model = Producto
    template_name = 'crud/supervisor_dashboard.html'
    context_object_name = 'productos'
    required_role = 'supervisor'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        productos_sin_stock = Producto.objects.filter(stock=0)
        if productos_sin_stock.exists():
            context['notificacion_stock'] = {
                'mensaje': f"Hay {productos_sin_stock.count()} producto(s) con stock en 0.",
                'productos': [producto.nombre for producto in productos_sin_stock]
            }
        return context

# Listar productos
class ProductoListView(ListView):
    model = Producto
    template_name = 'crud/vendedor_dashboard.html'
    context_object_name = 'productos'
    def get_queryset(self):
        # Asegúrate de que obtienes todos los productos
        return Producto.objects.all()  # Nombre plural del contexto
#crear producto
class ProductoCreateView(RoleRequiredMixin, CreateView):
    model = Producto
    form_class = ProductoForm
    template_name = 'usuarios/producto_form.html'
    #required_role = 'admin'  # Establece el rol adecuado

    def get_success_url(self):
        if self.request.user.groups.filter(name='admin').exists():
            return reverse_lazy('admin_dashboard')
        elif self.request.user.groups.filter(name='supervisor').exists():
            return reverse_lazy('supervisor_dashboard')
        elif self.request.user.groups.filter(name='vendedor').exists():
            return reverse_lazy('vendedor_dashboard')
        return reverse_lazy('login')

# Editar producto (Supervisor)
class ProductoUpdateView(RoleRequiredMixin, UpdateView):
    model = Producto
    form_class = ProductoForm
    template_name = 'usuarios/producto_form.html'
    required_role = ['supervisor', 'admin']
    def get_success_url(self):
        if self.request.user.groups.filter(name='admin').exists():
            return reverse_lazy('admin_dashboard')
        elif self.request.user.groups.filter(name='supervisor').exists():
            return reverse_lazy('supervisor_dashboard')
        return reverse_lazy('login')
# Eliminar producto (Supervisor)
class ProductoDeleteView(RoleRequiredMixin, DeleteView):
    model = Producto
    template_name = 'usuarios/producto_confirm_delete.html'
    required_role = ['supervisor', 'admin']
    def get_success_url(self):
        if self.request.user.groups.filter(name='admin').exists():
            return reverse_lazy('admin_dashboard')
        elif self.request.user.groups.filter(name='supervisor').exists():
            return reverse_lazy('supervisor_dashboard')
        return reverse_lazy('login')
    
#descontar productos, vendedor y admin
class DescontarStockView(RoleRequiredMixin, View):
    required_role = ['vendedor', 'admin']

    def post(self, request, pk):
        # Buscar el producto o devolver un error 404
        producto = get_object_or_404(Producto, pk=pk)
        try:
            # Validar cantidad ingresada
            cantidad = int(request.POST.get('cantidad', 0))
            if cantidad <= 0:
                messages.error(request, "La cantidad debe ser mayor a cero.")
            elif cantidad > producto.stock:
                messages.error(request, "La cantidad supera el stock disponible.")
            else:
                # Descontar stock y guardar
                producto.stock -= cantidad
                producto.save()
                messages.success(request, f"Se descontaron {cantidad} unidades de {producto.nombre}.")
        except ValueError:
            messages.error(request, "Ingrese un número válido.")

        # Redirigir según el rol del usuario
        if request.user.groups.filter(name='admin').exists():
            return redirect('admin_dashboard')
        elif request.user.groups.filter(name='vendedor').exists():
            return redirect('vendedor_dashboard')
        return redirect('login')  # Fallback en caso de no tener rol válido