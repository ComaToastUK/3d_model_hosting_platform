Present AR
==========
The website component of a presentation aide tool for AR.

Continuous Deployment via Heroku
----
https://(something).herokuapp.com/

Technologies used
----
- Ruby on Rails
- PostgreSQL

How to set up the application
----
```
$ git clone https://github.com/comatoastuk/3d_model_hosting_platform.git
$ cd 3d_model_hosting_platform
$ bundle
$ rake db:setup
$ bin/rails db:migrate
$ rspec
$ bin/rails server
```
Tested using:
----
- RSpec
- Capybara

How to run tests
----
```sh
$ cd 3d_model_hosting_platform
$ rspec
```
