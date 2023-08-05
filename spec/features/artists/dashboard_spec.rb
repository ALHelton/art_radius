require "rails_helper"

RSpec.describe "artists dashboard" do
  describe "As an artist, when I visit my dashboard" do
    before do
      @me = Artist.create!(name: "Andra Helton")
      @another = Artist.create!(name: "Someone Else")
   
      visit artist_dashboard_index_path(@me)
    end

    it "I see my name" do
      expect(page).to have_content("Andra Helton")
      expect(page).to_not have_content("Someone Else")
    end
  end
end