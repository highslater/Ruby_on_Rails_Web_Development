
require 'httparty'
require 'pp'



class Recipe

  include HTTParty
  # bba905de52621063f29cd462774b6343
  key_value = ENV["FOOD2FORK_KEY"]
  base_uri  "http://www.food2fork.com/api"
  default_params key: key_value
  format :json

  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end

pp Recipe.for("mocha")
