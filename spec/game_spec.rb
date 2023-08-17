require "rspec"
require_relative "../lib/game"

describe Game do
    describe "Initialize" do
        game1 = Game.new('2010-01-03', 'true', '2019-02-04')
        game2 = Game.new('2010-01-03', 'false', '2019-02-04')
        it "Sets publish date" do
            expect(game1.publish_date).to eq('2010-01-03')
        end
        it "Checks if multiplayer or not" do
            expect(game1.multiplayer).to eq('true')
            expect(game2.multiplayer).to_not eq('true')
        end
        it "last played date" do
            expect(game1.last_played_at).to eq('2019-02-04')
        end
    end

    describe "can be archived" do
        it "Should return true" do
        game = Game.new('2010-01-03', 'true', '2019-02-04')
        expect(game.can_be_archived?).to be_truthy
        end
        it "Should return false" do
        game = Game.new('2010-01-03', 'true', '2023-02-04')
        expect(game.can_be_archived?).to be_falsey
        end
    end
end