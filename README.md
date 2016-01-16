This is simple application form.
Database is running thanks to sqlite gem. Visit gemfile to see it, and potentially, change it.
Adding new columns to the database should be done by rails generate migration add_nameofthecolumn_to_tablename nameofthecolumnt:forexamplestring.
After generating migration rake db:migrate needs to be run.
I made the form on Cloud 9 IDE and my server runs at https://application-form-adamzaczek.c9users.io/.
I named this project application-form if that's what the last taks on the list was about.