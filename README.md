# README

## How to start the Rails server:
1. Make sure that you are running Ruby Version 2.6.1.  Check your version by running `ruby --version` from the command line.  (Check out [rbenv](https://github.com/rbenv/rbenv) for managing different versions of ruby).
2. Install dependencies by running `bundle install` from the project directory.
3. Drop any existing database in your project with `rails db:drop`
4. Run the migrations to create your database by running `rails db:migrate`
5. Seed your database with sample information with `rails db:seed`
6. Start up the server by running `rails s`.
7. The server will start on [localhost:3000](http://localhost:3000/) though this is currently not configured to return anything.

## URL path to view db objects:

* users: [localhost:3000/api/v1/users](http://localhost:3000/api/v1/users)
* teacher_coaches: [localhost:3000/api/v1/teacher_coaches](http://localhost:3000/api/v1/teacher_coaches)
* observations: [localhost:3000/api/v1/observations](http://localhost:3000/api/v1/observations)
* moves: [localhost:3000/api/v1/moves](http://localhost:3000/api/v1/moves)
* feedbacks: [localhost:3000/api/v1/feedbacks](http://localhost:3000/api/v1/feedbacks)
* action_steps: [localhost:3000/api/v1/action_steps](http://localhost:3000/api/v1/action_steps)

## How to access the Rails console:
* Run `rails c` from the command line.
