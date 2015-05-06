# RSpec Model Testing Example

In-class example from 5/6/15.

Use this as a guideline when creating your own model tests. Practice makes perfect when it comes to RSpec.

Also, you can use the following notes as a guideline for how to set up:

  * RSpec rails
  * FactoryGirl
  * FFaker

## Setup

To use BDD with Rails, we're going to once again use RSpec.

  1. Create a new rails application (don't forget to include `-T` since we'll be using RSpec for testing rather than the built-in testing framework.)
  2. Add the `rspec-rails` gem to your `Gemfile` and run `bundle install`
  3. Run `rails g rspec:install`
	  -  You'll want to check your `.rspec` file to make sure it doesn't include a line that says `--warnings`
  4. Add the following gems to your `Gemfile` and then run `bundle install`
	  - `factory_girl_rails`
	  - `ffaker`
  5.  Now we want to create our model and our factories for our tests:
	  -  `rails g rspec:model Post`
	  -  `rails g factory_girl:model Post`
  6.  We'll also want to add the following line to `spec/rails_helper.rb` so we can use FactoryGirl `build` and `create` methods in our tests:
	  -  `config.include FactoryGirl::Syntax::Methods`
  7. And now we'll want to set up our `sqlite` databases:
	   -  `rake db:migrate`
	   -  `rake db:test:prepare`
		   -	What does `test:prepare` do? Look it up!    
