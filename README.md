# Bookshelf

A Sinatra/ActiveRecord App demonstrating Validation and Associations

Build from Launch Academy's Sinatra Active Record Starter Kit


## Getting Started

```no-highlight
# Clone it
git clone git@github.com:LaunchAcademy/bookshelf

# Move into the directory
cd bookshelf

# Install all the gems
bundle install

# Setup the development and test databases
rake db:create db:migrate db:test:prepare

# Run the test suite
rake

# Start the app
ruby app.rb
```


## Rake Tasks

This app uses the [sinatra-activerecord](https://github.com/janko-m/sinatra-activerecord) gem, which provides the following rails-like rake tasks:

```no-highlight
rake db:create            # create the database from config/database.yml from the current Sinatra env
rake db:create_migration  # create an ActiveRecord migration
rake db:drop              # drops the data from config/database.yml from the current Sinatra env
rake db:migrate           # migrate the database (use version with VERSION=n)
rake db:rollback          # roll back the migration (use steps with STEP=n)
rake db:schema:dump       # dump schema into file
rake db:schema:load       # load schema into database
rake db:seed              # load the seed data from db/seeds.rb
rake db:setup             # create the database and load the schema
rake db:test:prepare      # Prepare test database from development schema
```
