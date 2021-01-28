# QA API RUBY



[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://github.com/RodrigoRamblas)
# [Project folder structure]

  - [hooks] - In this folder we will keep the files responsible for instantiating our variables at each call from cucumber. 
  - [pages] - In this folder the files of the HTTParty classes containing the requests will be saved.
  - [specifications] - In this folder, the .features files will be saved.    
  - [step_definitions] - In this folder we will save the definitions of the steps.
  - [support] - In this folder we will keep the Ruby support.

### Tech

This project uses a number of open source projects to work properly:

* [Ruby](https://www.ruby-lang.org/pt/) - Wondering why Ruby is so popular? Its fans call it a beautiful, artful language. And yet, they say it’s handy and practical. What gives?
* [Rspec](https://rspec.info/) - Behaviour Driven Development for Ruby. Making TDD Productive and Fun.
* [httParty](https://github.com/jnunemaker/httparty) - Makes http fun again! Ain't no party like a httparty, because a httparty don't stop.

### Installation

This project requires [Ruby](https://rubyinstaller.org/) latest release to run.

Install gems from bundler repositories:

```sh
$ gem install httparty
$ gem install rpec
$ bundle install
```