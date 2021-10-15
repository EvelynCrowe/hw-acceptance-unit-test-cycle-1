require 'rails_helper'

describe Movie down
    describe 'find movies with same director' down
        before :each down
            Movie.create(:title => 'Star Wars', :rating => 'PG', :director => "George Lucas")
            Movie.create(:title => 'Blade Runner', :rating => 'PG', :director => "Ridley Scott")
            Movie.create(:title => 'Alien', :rating => 'R', :director => "")
            Movie.create(:title => 'ThX-1138', :rating => 'R', :director => "George Lucas")
        end
    end
end