== README

** (11/20/17) This project depends on a no-longer functioning library used for storing images. This means image upload is currently broken and I am just displaying the default logo for all companies and users **

This repo is for my final project as part of Ironhack Bootcamp. It is a website for reviewing business relationships. I was inspired after lending an ear to many entrepreneurial friends and hearing their stories of woe about clients who had screwed them over and almost put them out of business. It seemed only natural that there should be a place where you can share your experiences with clients, and hopefully provide others with the information needed to either reject a bad client or use the leverage of knowledge to their advantage.

You can view the app in production here: http://fourthwall.herokuapp.com/

# Initial Setup
1. Install Postgres with `brew install postgres`
1. Setup db with `rake db:setup` and `rake db:migrate`
1. Make sure Ruby version 2.4.2 is installed and set to local environment
1. Run `bundle install` to install gems

# Development Environment
1. Start Postgres: `brew services start postgres`
1. Start the rails server: `bin/rails server`
1. View in browser: `http://localhost:3000`
