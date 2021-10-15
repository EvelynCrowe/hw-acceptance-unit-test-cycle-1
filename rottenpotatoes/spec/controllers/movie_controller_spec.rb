require 'rails_helper'

describe MoviesController do
    describe 'find movies with same director' do
        before :each do
            Movie.create(:title => 'Star Wars', :rating => 'PG', :director => "George Lucas")
            Movie.create(:title => 'Blade Runner', :rating => 'PG', :director => "Ridley Scott")
            Movie.create(:title => 'Alien', :rating => 'R', :director => "")
            Movie.create(:title => 'ThX-1138', :rating => 'R', :director => "George Lucas")
        end
        context 'when the specified movie has a director' do
            it 'should find movies with the same director' do
                expect(Movie).to receive(:find_movies_with_same_director)
            end 
        end
        context 'when the specified movie has no director' do
            redirect_to '/movies'
        end
    end
end