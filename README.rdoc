#Portfolio

---

##Synopsis

Portfolio was built by [Courtney Phillips](https://github.com/courtneymaepdx). Crafted as part of the Spring 2015 Ruby on Rails course curriculum at [Epicodus](https://www.epicodus.com/).

## Motivation

Portfolio was created as an exercise in Ruby on Rails app creation, especially with user authentication, authorization, database associations, integration testing, SASS, and just generally aesthetically-pleasing styles.

## Functionality

Portfolio is a basic web development portfolio with a blog, area to show off programming language skills, and gallery of specific project examples. Users can create accounts and comment on various blog posts, wheras admins can create and delete posts, delete comments, create categories and project pages, etc.

## Installation

The Portfolio can simply be viewed at its [Heroku location](http://stark-bastion-5208.herokuapp.com/). However, if you'd like to download the source code itself, simply clone this repo, navigate to the file directory in yoru terminal and do the following in order to launch the application:

- `$ postgres` to start a server
- `$ rake db:create` to load the database schema 
- '$ rake db:migrate` to load each database migration
- `$ rake db:test:prepare` to prepare the test database
- `$ rails s` to start the rails server
- Navigate to `localhost:3000` in your browser

## Miscellaneous

A sample admin account is already seeded into the database, its login credentials are available to view in the seeds.rb file. Similarly, you can manually create an account in the same fashion, if you so choose.

## Contribute

- Issue Tracker: https://github.com/courtneyphillips/rails-portfolio-2/issues
- Source Code: https://github.com/courtneyphillips/rails-portfolio-2
- Pull Requests: https://github.com/courtneyphillips/rails-portfolio-2/pulls

## Development Roadmap

Portfolio is still a work in progress. The following are features, fixes and tweaks to be implemented as the project develops. Any additional suggestions can be contributed via the Issue Tracker above.

- Aesthetic fixes, including adding additional images.
- More 'eloquent' jQuery transitions and effects.
- Expanded "About" page.
- Remove button viewing capability for functions a user is not authorized to complete (ie: the user simply won't see options to delete or edit items, and therefore wont' hit an 'access denied' page)
- Seed with real projects, descriptions, blog posts, and other content.
- Add a contact page.
- Link to live demos of projects, if possible.
- More complete sytling and aesthetics.
- Implement mailer and perhaps paperclip for user avatars on blog.

## Contact

Questions, grievances and hellos can be directed to Courtney at <courtney.mae.phillips@gmail.com>.

## License

The MIT License (MIT)

Copyright (c) 2015 Courtney Phillips

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

---
