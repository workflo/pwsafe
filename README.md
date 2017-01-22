# Password Safe

### Setup

* always use this command for bundle during development in local machine:

    bundle install --without production

* always use this command for bundle for production environmnet:

    bundle install --without development test

* Database creation and initialization:

    rake db:setup
