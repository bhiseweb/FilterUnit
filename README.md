## Requirements

- Ruby 2.4.1
- Rails 5.1.6

## Configuration

- git clone `git@github.com:bhiseweb/FilterUnit.git`

- cd `FilterUnit`

- run `bundle install`

- setup `config/database.yml` according your db configuration.

- run `rake db:create`

- Restore DB dump `bundle exec rails db < $SQL_FILE`

- run `rake db:schema:load`

- run `rake db:migrate`

- run `rake db:seed`

- run server `rails s`
