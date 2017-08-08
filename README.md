This README would normally document whatever steps are necessary to get the
application up and running.

### Brief instructions to get started
```
$ git clone git@github.com:dmonojit/sample_app.git
$ cd sample_app
$ rvm install 2.2.2
$ gem install bundler -v 1.10.6
$ bundle install
$ bundle exec rake db:create db:migrate     #Database Migration
$ bundle exec rails s -p 3000               #Start server on port 3000, change the port number if required

In browser - http://localhost:3000/saveks
```
#### To run backend tests
```
RAILS_ENV=test bundle exec rake db:migrate
ruby test/controllers/saveks_controller_test.rb
```

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
