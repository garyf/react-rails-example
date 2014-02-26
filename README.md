# React-Rails Example

This is an example Rails 4.03 app that demonstrates the use of the [React](http://facebook.github.io/react/index.html) javascript library to build the user interface. Rails provides the backend for the React comment box example from [the React tutorial](http://facebook.github.io/react/docs/tutorial.html).

## Installation and Setup

PostgreSQL is required. With Ruby 2.0 (or later!) and gem bundler installed:

```bash
bundle install
bundle exec rake db:create:all
bundle exec rake db:migrate
rails s thin
```

Visit http://localhost:3000/. Try opening multiple tabs!

## License

See MIT-LICENSE
