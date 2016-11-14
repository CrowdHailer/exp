# Unboxed technical test

## 1. Github API tool

### Description

> We would like you to build a simple web or command line application, which should allow users to enter an arbitrary GitHub username, and be presented with a best guess of the GitHub user's favourite programming language.

> This can be computed by using the GitHub API to fetch all of the user's public GitHub repos, each of which includes the name of the dominant language for the repository.
Documentation for the GitHub API can be found at http://developer.github.com

> There is no recommended timeframe for you to complete this exercise in, do what you need to do to showcase the very best of your ability. You are also not obliged to complete the full exercise but we do ask for an indication on the amount of time that you spend completing the exercises. Please will you use this exercise to showcase your strengths in Ruby/Rails.

### Initial thoughts

1. Need to decide the algorithm to decide favourite language.
  - Could be language which is the main language in the most repos, downside that might find what is no longer the persons favourite language if they changed recently.
  - Could be main language of most recently active repo.
  - Could be most lines of code in total, though some languages naturally require more lines than others.
2. Accessing the API, both calls to find a users repos and information about those repos can be done without an API key, for that reason I would probably use front end JS only as my first choice to build a web application.
3. To show Ruby knowledge best to create a small server rendered application.
