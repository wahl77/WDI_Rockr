# Summary

On the homepage, there are buttons for New Venue and New Concert. When either button is clicked, an AJAX form pops up with options to Cancel or Save. Venues have a name. Concerts have an artist name, a date/time, and a dropdown menu to select a venue. When the form is submitted, the homepage is updated with a venue list ordered by name with the concerts playing at each venue - ordered by date/time.

# Setup

1. `bundle install`
2. Add credentials to **.env** (`RACK_ENV=development, DB_USER, DB_PASS`).
3. `rake db:create`
4. `rake db:migrate`
5. `rake db:seed`
6. `foreman start`