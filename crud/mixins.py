from django.core.exceptions import PermissionDenied
from django.contrib.auth.mixins import LoginRequiredMixin

class RoleRequiredMixin(LoginRequiredMixin):
    required_role = None  # Un solo rol o una lista de roles permitidos

    def dispatch(self, request, *args, **kwargs):
        if self.required_role:
            roles_permitidos = self.required_role.split(', ') if isinstance(self.required_role, str) else self.required_role
            if request.user.role not in roles_permitidos:
                raise PermissionDenied
        return super().dispatch(request, *args, **kwargs)
