require "sinatra"
require "sinatra/reloader"
require "./services/cats"

get("/") do
  @cat_lookup = Cats.lookup("url")

  @cat_quotes = ["~Meow Meow Meow~", "nya~nya~", "Hissss", "Mrreyaaoooo", "mew", "meow", "bark", "meWOW"]
  erb(:root)
end
