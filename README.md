# README

Recipe Box is a nutritional tracker geared specifically towards home cooks who like to write their own recipes and experiment with others. It's a React/Redux app with a Rails backend.  It relies on Nutritionix’ natural language API for its nutritional data.

This repo is a Rails-based API serving as the backend to the React-Redux frontend, recipe-box-client.  In order to run this site, you will need to fork and clone this repo as well as recipe-box-client.

To get started:

Prerequisites:
  Ruby v.2.6.1 or higher
  Locally installed gem Foreman
    To install: bundle install Foreman

Fork and clone Recipe Box
https://github.com/DGMarkel/recipe-box

Fork and clone Recipe Box Client into the Recipe Box directory
https://github.com/DGMarkel/recipe-box-client

Next, cd into recipe-box-client and run npm install

Once the dependencies are installed, cd into recipe-box and run foreman start -p 3000.

Foreman will automatically run bundler, servers for the frontend and backend, and load the site in browser.
