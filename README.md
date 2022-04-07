# README

## Steps to reproduce this repo

```s
# Create new
$ rails new demo-activestorage-development
```

You also need to uncomment `image_processing` in the Gemfile and run `bundle install`.

```s
# Init active storage
$ bin/rails active_storage:install
$ bin/rails db:migrate
```

> Note: Since we are using integers and not UUIDs, we did not have to change anything on the column type.

At this point, we could update our `config/storage.yml` for our production storage, but we won't do that for our example as `local` and `test` are ready.

At this point, we need to create a record that has an attachment. We can following the basic example.

```s
# Generate the model
$ bin/rails g model User avatar:attachment
$ bin/rails db:migrate
```

Let's also generate a User controller and view to test an upload.

```s
# Generate controller
$ bin/rails g controller User index create
```

Update the routes.

```rb
Rails.application.routes.draw do
  root "user#index"
end
```

Update the controllers.
