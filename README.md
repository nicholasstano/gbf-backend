# README

## How to start the Rails server:
1. Make sure that you are running Ruby Version 2.6.1.  Check your version by running `ruby --version` from the command line.  (Check out [rbenv](https://github.com/rbenv/rbenv) for managing different versions of ruby).
2. Install dependencies by running `bundle install` from the project directory.
3. Run the migrations by running `rails db:migrate`.
4. Start up the server by running `rails s`.
5. The server will start on [localhost:3000](http://localhost:3000/) though this is currently not configured to return anything.

## URL path to view db objects:

* users: [localhost:3000/api/v1/users](localhost:3000/api/v1/users)
* teacher_coaches: [localhost:3000/api/v1/teacher_coaches](localhost:3000/api/v1/teacher_coaches)
* observations: [localhost:3000/api/v1/observations](localhost:3000/api/v1/observations)
* moves: [localhost:3000/api/v1/moves](localhost:3000/api/v1/moves)
* feedbacks: [localhost:3000/api/v1/feedbacks](localhost:3000/api/v1/feedbacks)
* action_steps: [localhost:3000/api/v1/action_steps](localhost:3000/api/v1/action_steps)

## How to access the Rails console:
* Run `rails c` from the command line.

Note: Consider this template for future README versions.

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
