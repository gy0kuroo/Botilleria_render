from django.db import models
from django.contrib.auth.models import AbstractUser
from django.db import models

class CustomUser(AbstractUser):
    ADMIN = 'admin'
    VENDEDOR = 'vendedor'
    SUPERVISOR = 'supervisor'

    ROLE_CHOICES = [
        (ADMIN, 'Administrador'),
        (VENDEDOR, 'Vendedor'),
        (SUPERVISOR, 'Supervisor'),
    ]

    role = models.CharField(
        max_length=10,
        choices=ROLE_CHOICES,
        default=VENDEDOR,
    )

    def __str__(self):
        return self.username