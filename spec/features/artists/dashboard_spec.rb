require "rails_helper"

RSpec.describe "artists dashboard" do
  describe "As an artist, when I visit my dashboard" do
    before do
      visit artist_dashboard_index_path(@me)
    end

    it "I see my name" do
      expect(page).to have_content("Andra Helton")
      expect(page).to_not have_content("Someone Else")
    end

    describe "I see my links" do
      it "items link takes me to my items index" do
        expect(page).to have_link("My Items")

        click_link "My Items"
        expect(current_path).to eq(artist_items_path(@me))
        expect(current_path).to_not eq(artist_items_path(@another))
      end

      it "invoices link takes me to my invoices index" do
        expect(page).to have_link("My Invoices")

        click_link "My Invoices"
        expect(current_path).to eq(artist_invoices_path(@me))
        expect(current_path).to_not eq(artist_invoices_path(@another))
      end
    end

    # describe "I see my top 5 buyers (by # of successful transactions)" do
    #   it "I see each buyer's name" do
    #     expect(page).to have_content("1. ")
    #   end

    #   it "I see each buyer's total number of transactions"
    # end
  end
end