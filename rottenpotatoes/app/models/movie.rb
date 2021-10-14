class Movie < ActiveRecord::Base
    def self.find_movies_with_same_director(id)
    list = Movie.find(id).director
    Movie.where(director: "#{list}")
  end
end
