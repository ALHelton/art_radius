require 'rails_helper'

RSpec.describe Item do
  describe "relationships" do
    it { should belong_to :artist }
    it { should have_many :invoice_items }
    it { should have_many(:invoices).through(:invoice_items) }
  end

  describe "validations" do

  end
end