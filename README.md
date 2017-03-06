# _Eureka: The Project Source_

#### By _**Kenneth Black**, 3/6/2017_

## Description

A site for new developers to find and share project ideas, and to get feedback on their implementations of the projects.

**User Stories (In Progress)**

* As a user, I can create a new Blueprint, so I can share my project ideas
* As a user, I can add User stories to my Blueprint, so I can better explain the parameters
* As a user, I can log in, so I can ensure that only I can edit the Blueprints and Projects I make.
* As a user, I can create a new Project from a Blueprint, so I can better practice my skills.
* As a user, I can provide feedback on other people’s projects.
* As a user, I can see all of the projects that I'm a part of, the statuses, and the other collaborators in one place.
* As a user, I can delete projects that are completed or that I don't need anymore, so I can focus on my other work.

* As a user, I can add other users as collaborators to my Projects, so we can better coordinate.
* As a user, I can assign roles to Project collaborators, so we can better coordinate.
* As a user, I can export my project to Trello to speed up the organization process.


## Setup/Installation Requirements

* Clone this repo: `git clone git@github.com:lawlietblack/eureka.git`
* Change to the repo directory: `cd eureka`
* Install gems: `bundle install --path vendor/bundle`
* Install the database: *instruction below*
* Run the app: `ruby app.rb`

## Database Setup Instructions

* install and start postgres
* run: `bundle exec rake db:create`
* run: `bundle exec rake db:migrate`
* run: `bundle exec rake db:test:prepare`
* seed the database(optional): `bundle exec rake db:setup`

## Technologies Used

_Ruby, Rails, ActiveRecord, Devise, SQL, Postgres, JavaScript, jQuery_

### Known Issues


### License

*MIT License*

Copyright (c) 2017 **_Kenneth Black_**