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

##### 3. Create database.yml file

Copy the sample database.yml file and edit the database configuration as required.

```bash
cp config/database.yml.sample config/database.yml
```

##### 4. Create and setup the database

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
