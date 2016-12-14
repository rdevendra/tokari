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
```shell
    sudo apt-get update
    sudo apt-get install postgresql postgresql-contrib libpq-dev
```

### Application Setup

* git clone https://github.com/rdevendra/tokri.git <your_local_folder_name> 

* bundle install

* Setup Database User

Create a PostgreSQL user with this command
```shell
    sudo -u postgres createuser -s tokri_user
```

Set the password for database user, enter the PostgreSQL console with this command:
```shell    
    sudo -u postgres psql
```

At the PostgreSQL prompt, enter this command to set the password for the database user that you created:
```shell
    postgres=# \password tokri_user
```
 
    
* Setup Database
```shell
    bundle exec rake db:create
    bundle exec rake db:migrate
    bundle exec rake db:seed
    bundle exec rake spree_sample:load
```    

* Start rails server

* ...
