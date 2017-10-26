# Controllers

- used as an end point where the routes live
- will be in ruby if the base language is ruby, outside of sinatra this will likely change to a different language/ file type.

- base structure:
  {http method type} {resource path/ where being routed to} {"do" to indicate the block opening. Will not work with "don't"}
  {Data retrieved from models/ logic for specific tasks}
  {redirect/ erb view render. (where to go to next)}
  {end... because you can't "do" forever. Unless you're singing "hey jude"}

```ruby
get/post/put/delete "/data_type(plural)/new_etc." do
  p "Hey, lookit the logic!!!"
  redirect someplace/useful
end
```






