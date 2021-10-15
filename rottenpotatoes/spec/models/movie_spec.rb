require 'rails_helper'

describe Movie do
    describe 'find movies with same director' do
        before :each do
            Movie.create(:title => 'Star Wars', :rating => 'PG', :director => "George Lucas")
            Movie.create(:title => 'Blade Runner', :rating => 'PG', :director => "Ridley Scott")
            Movie.create(:title => 'Alien', :rating => 'R', :director => "")
            Movie.create(:title => 'ThX-1138', :rating => 'R', :director => "George Lucas")
        end
        it 'should find movies with same director' do
            expect(Movie.where(director: "Ridley Scott").length).to eq(1)
            expect(Movie.where(director: "George Lucas").length).to eq(2)
            expect(Movie.where(director: "").length).to eq(1)
        end
        it 'should not find movies with different directors' do
            Movie.where(director: "Ridley Scott").each { |movie| 
                expect(movie.director).to eq("Ridley Scott")
                expect(movie.director).to_not eq("George Lucas")
                expect(movie.director).to_not eq("")
            }
        end
    end
end