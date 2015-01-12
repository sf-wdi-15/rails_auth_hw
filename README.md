# Rails Auth HW
## User and Session Setup


## Part 1:Add Users To Your Blog App

We want users to be able to sign into our blogging application, and to do this we will need to add a `user` model as well as both a `users`, and `sessions` controller to handle `/sign_up` and `/login` respectively.

Use the [notes](https://github.com/sf-wdi-15/notes/tree/master/week_07_more_rails/day_1_rails_auth/dawn_auth_start) to repeat the logic required to setup the application.

## Part 2: Restricting Access

Add a before action to your `articles` controller to avoid people doing anything with articles unless `logged_in?`.


## Part 3: Bonus

* Create a `SitesController` that manages the `index`, `contact`, and `about` for your blog.
* Add `gem 'dotenv-rails'` to your application, and put your super secret api keys inside.
* Add a migration to save your `keywords` after you make the first `get_keywords` request.

