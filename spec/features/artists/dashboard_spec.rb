require "rails_helper"

RSpec.describe "artists dashboard" do
  describe "As an artist, when I visit my dashboard" do
    before do

      #artists
      @me = create(:artist, name: "Andra Helton")
      @another = create(:artist)

      #buyers
      @buyer1 = create(:buyer)
      @buyer3 = create(:buyer)
      @buyer4 = create(:buyer)

      #invoices
      @invoice1 = create(:invoice, buyer: @buyer1) #buyer1
      @invoice2 = create(:invoice, buyer: @buyer1)
      # -----------------------------------------------
      @invoice3 = create(:invoice, buyer: @buyer3) #buyer3
      @invoice4 = create(:invoice, buyer: @buyer4) #buyer4

      #items
      @item1 = create(:item, artist: @me) #me
      @item2 = create(:item, artist: @me)
      @item3 = create(:item, artist: @me)
      @item4 = create(:item, artist: @me)
      @item5 = create(:item, artist: @me)
      # -----------------------------------------------
      @item6 = create(:item, artist: @another) #another

      #invoice_items
      @ii1 = create(:invoice_item, invoice: @invoice1, item: @item5, quantity: 2) #invoice1 - me, buyer1
      @ii2 = create(:invoice_item, invoice: @invoice1, item: @item2, quantity: 3)
      @ii3 = create(:invoice_item, invoice: @invoice1, item: @item4, quantity: 1)
      @ii4 = create(:invoice_item, invoice: @invoice1, item: @item1, quantity: 1)
      # -----------------------------------------------
      @ii5 = create(:invoice_item, invoice: @invoice2, item: @item3, quantity: 2) #invoice2 - me, buyer1
      @ii6 = create(:invoice_item, invoice: @invoice2, item: @item2, quantity: 3)
      @ii7 = create(:invoice_item, invoice: @invoice2, item: @item5, quantity: 1)
      # -----------------------------------------------
      @ii8 = create(:invoice_item, invoice: @invoice3, item: @item4, quantity: 7) #invoice3 - me, buyer3
      @ii9 = create(:invoice_item, invoice: @invoice3, item: @item2, quantity: 6)
      # -----------------------------------------------
      @ii8 = create(:invoice_item, invoice: @invoice4, item: @item6, quantity: 7) #invoice4 - another, buyer4

      #visit
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
      end

      it "invoices link takes me to my invoices index" do
        expect(page).to have_link("My Invoices")

        click_link "My Invoices"
        expect(current_path).to eq(artist_invoices_path(@me))
      end
    end
  end
end