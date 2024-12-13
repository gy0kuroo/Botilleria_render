from django.urls import path
from django.contrib.auth.views import LoginView 
from .views import RegisterView, ProfileView, RoleRedirectView, UserUpdateView, UserDeleteView, UserListView

urlpatterns = [
    path('register/', RegisterView.as_view(), name='register'),
    path('profile/', ProfileView.as_view(), name='profile'),
    path('redirect/', RoleRedirectView.as_view(), name='role_redirect'),
    path('login/', LoginView.as_view(template_name='usuarios/login.html'), name='login'),
    path('users/', UserListView.as_view(), name='user_list'),  # Lista de usuarios
    path('users/<int:pk>/edit/', UserUpdateView.as_view(), name='user_edit'),  # Editar usuario
    path('users/<int:pk>/delete/', UserDeleteView.as_view(), name='user_delete'),
]