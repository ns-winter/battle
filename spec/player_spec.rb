require 'player'

describe "Player Class" do

    it "should return the player name" do
      subject = Player.new("Nigel")
      expect(subject.name).to eq "Nigel"
  end

end
