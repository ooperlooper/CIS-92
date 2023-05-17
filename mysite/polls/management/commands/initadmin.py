from django.core.management.base import BaseCommand, CommandError
from django.contrib.auth.models import User

class Command(BaseCommand):
    help = 'Create a new superuser'

    def add_arguments(self, parser):
        parser.add_argument('username', type=str, help='Username for the new superuser')
        parser.add_argument('email', type=str, help='Email for the new superuser')
        parser.add_argument('password', type=str, help='Password for the new superuser')

    def handle(self, *args, **options):
        username = options['username']
        email = options['email']
        password = options['password']

        try:
            user = User.objects.create_superuser(username=username, email=email, password=password)
            self.stdout.write(self.style.SUCCESS(f'Successfully created superuser: {username}'))
        except:
            print("no admin")

