.PHONY: test syncdb migrate run
PYTHONPATH=`pwd`

test:
	$ python functional_tests/all_users.py

run:
	$ python manage.py runserver

migrate:
	PYTHONPATH=`pwd` $ python manage.py runserver migrate

collectstatic:
	PYTHONPATH=`pwd` $(MANAGE) collectstatic --noinput

