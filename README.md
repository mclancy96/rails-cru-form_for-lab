# CRU with form_with Lab

## Objectives

1. Build RESTful actions for index, show, new, create, edit, update
2. Use form_with for all forms (no need to share forms or partials)
3. Correctly redirect when needed
4. Interlink between pages using route helpers

## Instructions

You've been tasked with building a Rails app called **Beats by Rails**. The app will need to have three separate models:

* Songs

* Artists

* Genres

The data relationship will look like this:

* A song belongs to an artist

* A song belongs to a genre

* A genre has many songs

* An artist has many songs

The tests are in the `spec/features` directory for each model. You will need to build the ability to `create`, `update`, and `show` for each model. For the song `show` page, display the song's genre and artist, and link to their respective `show` pages.

The database tables should look like this (note each column type):

table "genres"
table "songs"

```db
table "artists"
  string   "name"
  text     "bio"

table "genres"
  string   "name"

table "songs"
  string   "name"
  integer  "artist_id"
  integer  "genre_id"
```

## Key Notes

* Use [strong params](https://guides.rubyonrails.org/action_controller_overview.html#strong-parameters).
* For now, enter the `artist_id` and `genre_id` manually in the song form (no dropdowns yet).
* Use the `resource`, `model`, `migration`, and `controller` generators, but avoid the `scaffold` generator (it generates too much code automatically and doesn't help you learn the fundamentals).
  * *Top Tip: Remember to use the --no-test-framework flag when generating models and controllers to avoid generating unnecessary testing frameworks!*
* Use `bin/rails` for all commands (not `rake` or just `rails`).
* All forms should use `form_with` (not `form_for` or `form_tag`).
