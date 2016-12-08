# README

Getting Started
------------------

### System Setup

* Install RVM and create a gemeset for project

* Install Ruby version >=2.2.2

* Install Rails version 5.0.0

* Install bundler

* Install Image Magick ( http://www.imagemagick.org/script/index.php )

* Install PostgreSQL
    sudo apt-get update
    sudo apt-get install postgresql postgresql-contrib libpq-dev

### Application Setup

* git clone https://github.com/rdevendra/tokri.git <your_local_folder_name> 

* run bundle install

* Setup Database by creating config/database.yml
```shell
    bundle exec rake db:create
    bundle exec rake db:migrate
    bundle exec rake db:seed
    bundle exec rake spree_sample:load
```    

* run rails s

* ...
