# Super Joins Example!

This is an example of custom joins.

```
git clone https://github.com/justinhuynh/super_joins_example.git

bundle
```

Rename the `config/database.example.yml` and check to see that the database names work for you.

```
rake db:create
rake db:migrate
rake db:seed
```

Run `pry -r ./app.rb`. Paste the following into `pry`:

```
fluffy = User.find_by(name: "Fluffy")
whiskers = User.find_by(name: "Whiskers")
maizie = User.find_by(name: "Maizie")
monster = User.find_by(name: "Monster")

park = Trip.find_by(title: "To the park")
pet_store = Trip.find_by(title: "To the pet store")
```

Try the following commands:

```
fluffy.trips
fluffy.is_leading
fluffy.treasurer_of
```

Check out the migrations and models to see the syntax for custom/multiple associations between tables. I'll update with more stuff later.
