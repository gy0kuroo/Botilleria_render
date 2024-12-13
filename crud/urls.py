from django.urls import path, include
from .views import AdminDashboardView, VendedorDashboardView, SupervisorDashboardView, ProductoListView, ProductoCreateView, ProductoUpdateView, ProductoDeleteView,DescontarStockView

urlpatterns = [
    # Paneles
    path('admin-dashboard/', AdminDashboardView.as_view(), name='admin_dashboard'),
    path('vendedor-dashboard/', VendedorDashboardView.as_view(), name='vendedor_dashboard'),
    path('supervisor-dashboard/', SupervisorDashboardView.as_view(), name='supervisor_dashboard'),

    # Supervisor
    path('<int:pk>/editar/', ProductoUpdateView.as_view(), name='producto_update'),
    path('<int:pk>/eliminar/', ProductoDeleteView.as_view(), name='producto_delete'),

    # Vendedor
    path('vendedor_dashboard/', ProductoListView.as_view(template_name='crud/vendedor_dashboard.html'), name='vendedor_dashboard'),
    path('<int:pk>/descontar-stock/', DescontarStockView.as_view(), name='descontar_stock'),

    # Crear producto (sin cambios)
    path('nuevo/', ProductoCreateView.as_view(), name='producto_create'),
    path('usuarios/', include('usuarios.urls')),
]
