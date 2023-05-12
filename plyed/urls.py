from django.urls import path
from plyed.views import HomeView

urlpatterns = [
    path('', HomeView.as_view(), name='home-page'),
]