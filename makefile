.PHONY: test syncdb migrate run unittest
PYTHONPATH=`pwd`

test:
	$ coverage run --source='.' manage.py test

run:
	$ python manage.py runserver

migrate:
	PYTHONPATH=`pwd` $ python manage.py runserver migrate

collectstatic:
	PYTHONPATH=`pwd` $(MANAGE) collectstatic --noinput

