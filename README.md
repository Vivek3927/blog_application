##### 1. Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [3.3.1](https://github.com/Vivek3927/blog_application.git)
- Rails [7.1.3](https://github.com/Vivek3927/blog_application.git)

##### 2. Check out the repository

```bash
git clone https://github.com/Vivek3927/blog_application.git
cd blog_application
bundle install
```
##### 3. Install Bootstrap5 & Configuration

```bash
rails css:install:bootstrap
./bin/importmap pin @rails/ujs
./bin/importmap pin bootstrap
#Modify in config/importmap.rb
##Remove :
pin "bootstrap", to: "https://ga.jspm.io/npm:bootstrap@5.3.3/dist/js/bootstrap.esm.js"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.8/lib/index.js"
##Add :
pin "bootstrap", to: "https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
```

##### 4. Create database.yml file

Copy the sample database.yml file and edit the database configuration as required.

```bash
cp config/database.yml.sample config/database.yml
```

##### 5. Create and setup the database

Run the following commands to create and setup the database.

```ruby
rails db:create
rails db:migrate
```

##### 5. Start the Rails server

You can start the rails server using the command given below.

```ruby
rails s
```

And now you can visit the site with the URL http://localhost:3000
