.PHONY: test syncdb migrate run unittest
PYTHONPATH=`pwd`

test:
	$ python manage.py test functional_tests

run:
	$ python manage.py runserver

unittest:
	$ python manage.py test taskbuster.test

migrate:
	PYTHONPATH=`pwd` $ python manage.py runserver migrate

collectstatic:
	PYTHONPATH=`pwd` $(MANAGE) collectstatic --noinput

