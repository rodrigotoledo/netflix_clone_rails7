# Requirements

- https://www.docker.com/
- Cool and good editor: Visual Studio
- RSpec knowledge
- Docker

# Coding and of course, testing...

Maybe in Linux systems you will need install dependencies like

```
sudo apt-get install libvips libvips-dev libvips-tools
```

This project use `guard` and `rspec` as monitor and test engine of application, so everytime that you will be code something the application should have coverage of tests.

```
bundle exec guard
```

  ...will execute `guard`, wait you code something in the project and then execute tests

The coverage of your tests will be in the `coverage` directory

## Your code need to stay good and clean

With simplecov in `rspec` we have coverage of code, but must important is keep the code with good practices. Rubocop garantee this, just run

```
rubocop . -A
```

# Execute something

As explained, the application run with `docker-compose` so execute the command and obtain results:

```
docker-compose up
```

if you want interact in console run

```
rails c
```

# Development

This project uses git flow workflow so each developer should follow the steps to build or fix something.

Inside your project run

```
git-flow init
```

To start feature

```
git-flow feature start name-of-feature
```

code, commit and the feature

```
git commit -am 'name-of-feature fixed with short text'
git-flow feature finish name-of-feature
```


# Staging

When if you have a stable to put in staging environment, create a staging running

```
git-flow release start 'name-of-release'
```

Add with code, message and finish the release

```
git-flow release finish 'name-of-release'
```

Now you can push to main and develop branchs

# Production

This project use the master branch to deploy in the production server. Actually it's using the heroku. Follow the commands to deploy in production environment

```
git checkout master
git pull origin master
git push origin heroku
heroku run rake db:migrate
```

```
rails g resource Movie title description:text
rails g resource MovieUser movie:references user:references rating:integer status timming:float
rails g resource Category title
rails g resource MovieCategory movie:references category:references
```