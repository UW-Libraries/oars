# Oars
[![CircleCI](https://circleci.com/gh/UW-Libraries/oars/tree/master.svg?style=svg)](https://circleci.com/gh/UW-Libraries/oars/tree/master)

* Ruby 2.6.3
* Hyrax 2.6.0
* Run locally
  1. Clone the git repo: `git clone git@github.com:UW-Libraries/oars.git`
  1. `cd ./oars`
  1. Install the required gems: `bundle install`
  1. Create and migrate the development database: `bundle exec rails db:create db:migrate`
  1. Create and migrate the test database: `RAILS_ENV=test bundle exec rails db:create db:migrate`
  1. Install dependencies `yarn install`
  1. Launch development instance of solr: `solr_wrapper`
  1. Launch test instance of solr: `solr_wrapper --config config/solr_wrapper_test.yml`
  1. Launch development instance of fedora: `fcrepo_wrapper`
  1. Launch test instance of fedora: `fcrepo_wrapper --config config/fcrepo_wrapper_test.yml`
  1. Launch a rails server: `bundle exec rails server`
  1. Create the default admin set: `bundle exec rake hyrax:default_admin_set:create`
  1. Create the default collection types: `bundle exec rake hyrax:default_collection_types:create`
  1. Load workflows: `bundle exec rake hyrax:workflow:load`
  1. Run the tests to ensure everything is working as expected: `rspec spec`
  1. You should now be able to go to `http://localhost:3000` and see the application
  1. Create user
  1. [Make Admin](https://github.com/samvera/hyrax/wiki/Making-Admin-Users-in-Hyrax)
