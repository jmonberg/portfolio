#Portfolio

---

## Functionality

Portfolio is a basic web development portfolio with a blog, area to show off programming language skills, and gallery of specific project examples. Users can create accounts and comment on various blog posts, wheras admins can create and delete posts, delete comments, create categories and project pages, etc.

## Installation

- `$ postgres` to start a server
- `$ rake db:create` to load the database schema
- '$ rake db:migrate` to load each database migration
- `$ rake db:test:prepare` to prepare the test database
- `$ rails s` to start the rails server
- Navigate to `localhost:3000` in your browser

## Miscellaneous

A sample admin account is already seeded into the database, its login credentials are available to view in the seeds.rb file. Similarly, you can manually create an account in the same fashion, if you so choose.


## License

The MIT License (MIT)

Copyright (c) 2015 John Monberg

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
