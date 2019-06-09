from django import template
from math import floor
from datetime import date, time, timedelta
from appointment.models import AppointmentTime

register = template.Library()

def percentage(val, arg):
	if val is not None:
		return floor(100 - (val/arg) * 100)


def yes_no(val):
	if val is not None:
		if val:
			return 'Yes'
		return 'No'


def age(val):
	if val is not None:
		age = date.today().year - int(val)
		return age

def format_time(val):
	if val is not None:
		return val.strftime("%Y-%m-%dT%H:%M:%S")

def add_time(val):
	if val is not None:
		length = AppointmentTime.objects.last().length
		added_val = val + timedelta(hours=length)
		return added_val


register.filter('percentage', percentage)
register.filter('yes_no', yes_no)
register.filter('age', age)
register.filter('format_time', format_time)
register.filter('add_time', add_time)
