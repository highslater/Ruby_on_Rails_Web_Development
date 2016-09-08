class Recipe < ActiveRecord::Base

  include HTTParty
  # bba905de52621063f29cd462774b6343
  #echo 'export FOOD2FORK_KEY=bba905de52621063f29cd462774b6343' >> ~/.profile

  key_value = ENV["FOOD2FORK_KEY"]
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
  base_uri  "http://#{hostport}/api"
  default_params key: key_value, q: "search"
  # key: ENV["FOOD2FORK_KEY"]fields: "image_url, title, social_rank, source_url",
  format :json


  def self.for(keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end
