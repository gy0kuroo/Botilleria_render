from django.views.generic import CreateView, TemplateView, View, UpdateView, DeleteView, ListView
from django.contrib.auth.mixins import LoginRequiredMixin
from django.urls import reverse_lazy
from django.shortcuts import redirect
from .models import CustomUser
from .forms import CustomUserCreationForm, CustomUserChangeForm



class RegisterView(CreateView):
    form_class = CustomUserCreationForm
    template_name = 'usuarios/register.html'
    success_url = reverse_lazy('login')


class ProfileView(LoginRequiredMixin, TemplateView):
    template_name = 'usuarios/profile.html'


class RoleRedirectView(LoginRequiredMixin, View):
    def get(self, request, *args, **kwargs):
        user = request.user
        # Redirigir según el rol
        if user.role == 'admin':
            return redirect('admin_dashboard')  # Define esta ruta en crud/urls.py
        elif user.role == 'vendedor':
            return redirect('vendedor_dashboard')
        elif user.role == 'supervisor':
            return redirect('supervisor_dashboard')
        else:
            return redirect('profile')  # Fallback a una página común
        
# Editar usuario
class UserUpdateView(UpdateView):
    model = CustomUser
    form_class = CustomUserChangeForm
    template_name = 'usuarios/user_form.html'  # Crea este template
    success_url = reverse_lazy('user_list')  # Redirige a la lista tras editar

# Eliminar usuario
class UserDeleteView(DeleteView):
    model = CustomUser
    template_name = 'usuarios/user_confirm_delete.html'  # Crea este template
    success_url = reverse_lazy('user_list')  # Redirige a la lista tras eliminar

# Listar usuarios
class UserListView(ListView):
    model = CustomUser
    template_name = 'usuarios/user_list.html'  # Crea este template
    context_object_name = 'users'  # Nombre de la variable en el template
