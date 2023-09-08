from django.shortcuts import render
from django.http import HttpResponse
def index(request):
    return HttpResponse("hello home ")

# Create your views here.
