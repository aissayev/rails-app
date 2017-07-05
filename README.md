# README

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


Routing and Controller

# Rails app has
  1. Custom Authentication System from scratch
  2. Add Styling using bootstrap classes
  3. build one-to-many and many-to-many Associations
  4. Add profile images using gravatars
  5. Use pagination for listing views
  6. Admin users
  7. Testing
  
## Models
  1. articles
  2. users
  3. category (was developed using TDD)

# CRUD Operations in Ruby on Rails

## DB
  rails db:rollback - reverse migration

## In Model
  to add validation add this to model
  // ensures that title won't be null
    > validates :title, presence: true, length: { minimum: 3, maximum 50}

## Error checking
  > model.errors.any?
  > model.errors.full_messages

## model name Article, User
  Model name -> Singular, First letter Uppercase
  Table name -> Plural, lower case of model name
  Model name filename -> All lowercase but singular, article.rb
  Controller name -> plural of mode so articles_controller.rb


##Features
  Pagination
