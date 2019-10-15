# README

Recipe Box is a nutritional tracker geared specifically towards home cooks who like to write their own recipes and experiment with others. It's a React/Redux app with a Rails backend.  It relies on Nutritionix’ natural language API for its nutritional data.

This repo is a Rails-based API serving as the backend to the React-Redux frontend, recipe-box-client.  In order to run this site, you will need to fork and clone this repo as well as recipe-box-client.

To get started:

Prerequisites:
  Ruby v.2.6.1 or higher
  Locally installed gem Foreman
    To install:
      gem install Foreman
      bundle install
  Nutritionix API account (free)
    Sign up at https://developer.nutritionix.com/    

Fork and clone Recipe Box
https://github.com/DGMarkel/recipe-box

Fork and clone Recipe Box Client into the Recipe Box directory
https://github.com/DGMarkel/recipe-box-client

Next, cd into recipe-box-client and run npm install

You'll need an App ID and key in order to fetch nutritional data from the Nutritionix API that Recipe Box relies on.  You can set up a free account at https://developer.nutritionix.com/.

Once you've set up your account and have your app id and key, create a .env file to store them in.  The .env file should look something like this:

REACT_APP_NUTRITIONIX_APP_ID=app_id
REACT_APP_NUTRITIONIX_KEY=key

Finally, add .env to .gitignore to prevent sensitive info from being shared to github.

cd into recipe-box and run foreman start -p 3000.

Foreman will automatically run bundler, servers for the frontend and backend, and load the site in browser.
