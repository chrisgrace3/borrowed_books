# Views

here live the .erb files.

inform what the user sees. uses "<%= %>"et.al to run additional html in the "yield" area of the layout.

## layout.erb
- this is the main template of your site
- if you put stuff above the yield that might be a header
- below the yield, likely a footer
- the erb files your route has gets put in at the yield

## folder structure
- for each resource you have (db table) do a separate folder in your views folder
- for convention there are 4 basic erb files (new, edit, show (1 thing), index(all things)).
- you may have partials also in the separate folders

## erb snippet syntax

- to write something out <%= %>

```ruby
<%= @user.name %>
```

- to just execute code (for an if or loop) <% %>

```ruby
  <% if @user != nil %>
    <h1><%= @user.name%></h1>
  <% end %>
```


