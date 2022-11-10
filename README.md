# The Flatiron Terrific Todos frontend server app

This app has been created for use with a group where accountability for performance of tasks is crucial.  Any user can be assigned a todo.  Anyone can view, update, create, or delete a todo.  Users can be added and assigned tasks by anyone with access to this app and individual users' specific todos can be found via search



## MVP

- Use Active Record to interact with a database.
- Have at least two models with a one-to-many relationship.
- At a minimum, set up the following API routes in Sinatra:
  - create and read actions for both models
  - full CRUD capability for one of the models
- Build a separate React frontend application that interacts with the API to
  perform CRUD actions.
- Implement proper front end state management. You should be updating state using a
  setState function after receiving your response from a POST, PATCH, or DELETE 
  request. You should NOT be relying on a GET request to update state. 
- Use good OO design patterns. You should have separate classes for each of your
  models, and create instance and class methods as necessary. 
- Routes in your application (both client side and back end) should follow RESTful
  conventions.
- Use your back end optimally. Pass JSON for related associations to the front 
  end from the back end. You should use active record methods in your controller to grab
  the needed data from your database and provide as JSON to the front end. You
  should NOT be relying on filtering front end state or a separate fetch request to
  retrieve related data.

For example, build a todo list application with a React frontend interface and a
Sinatra backend API, where a user can:

- **Create** a new todo
- **Read** a list of all todos
- **Update** an individual todo
- **Delete** a todo

## Getting Started

Fork and clone this repo, along with it's associated front end repo [here][https://github.com/KyrianOnwe/my-app-frontend].  `cd` into the local repo folder and run `bundle install` to install all the dependencies for this app.  This backend is prepopulated with data for easier review and run through of core functionality.  To remove the seeded data, run `rake db:drop` from the local backend terminal.

## How to use

After running `bundle install`, to start the backend server at anytime: From a terminal, `cd` into the local repo folder and run `rake server`.  To shut down the server, simply hold down `[CTRL]` on the wsl terminal or `[command]`on the MacOS terminal on which the server is running and press `c` on the keyboard.  
Use the [frontend][https://github.com/KyrianOnwe/my-app-frontend] server in conjunction with this backend server for a more comfortable user experience when making adjustments or viewing the data.

## Troubleshooting
If an error occurs while running `rake server`, please run `bundle exec rake server`.  ALWAYS be sure that the backend server is running prior to running the frontend server to avoid instability.

## Resources
- https://linuxhint.com/30_bash_script_examples/
- https://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/
- https://www.rubyguides.com/2019/02/ruby-rake/
- https://www.rubyguides.com/2018/09/rack-middleware/
- https://www.rubyguides.com/
- https://www.seancdavis.com/posts/how-to-write-a-custom-rake-task/


