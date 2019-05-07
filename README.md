# README

Recipe Box is a nutritional tracker geared specifically towards home cooks who like to write their own recipes and experiment with others. It's a React/Redux app with a Rails backend.  It relies on Nutritionix’ natural language API for its nutritional data.

To get started:

Fork and clone Recipe Box
https://github.com/DGMarkel/recipe-box

Recipe Box' Rails backend runs on Ruby v.2.6.1 and runs on port 3001

For the backend:

run bundle install
run rake db: migrate

The frontend runs on port 3000:

run npm install

To get the servers started:
run foreman start -p 3000
