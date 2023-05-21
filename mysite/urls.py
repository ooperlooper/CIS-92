from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path('', RedirectView.as_view(url='admin/')),
    path('polls/', include('polls.urls')),
    path('admin/', admin.site.urls),
]