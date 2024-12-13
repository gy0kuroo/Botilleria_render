from django.shortcuts import render, redirect
from .forms import ContactForm 
from django.core.mail import EmailMessage
from django.urls import reverse
from django.contrib import messages

def home(request):
    return render(request,"core/home.html")

def contact(request):
    contact_form = ContactForm()
    success = False

    if request.method == 'POST':
        contact_form = ContactForm(data=request.POST)

        if contact_form.is_valid():
            name = contact_form.cleaned_data.get('name', '')
            email = contact_form.cleaned_data.get('email', '')
            message = contact_form.cleaned_data.get('message', '')

            # Crear el correo electrónico
            email_message = EmailMessage(
                'Mensaje de contacto recibido',
                f'Mensaje enviado por {name} <{email}>:\n\n{message}',
                email,  # Cambia a DEFAULT_FROM_EMAIL si está configurado
                ['2e4d3383880188@inbox.mailtrap.io'],
                reply_to=[email],
            )
            try:
                email_message.send()
                success = True
                messages.success(request, 'El mensaje fue enviado con éxito.')
            except Exception as e:
                print(f"Error al enviar correo: {e}")
                messages.error(request, 'Hubo un problema al enviar el mensaje.')

    return render(request, 'core/contact.html', {'form': contact_form, 'success': success})