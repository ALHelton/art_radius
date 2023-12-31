require 'rails_helper'

RSpec.describe Invoice do
  describe "relationships" do
    it { should belong_to :buyer }
    it { should have_many :transactions }
    it { should have_many :invoice_items }
    it { should have_many(:items).through(:invoice_items) }
  end

  describe "validations" do

  end
end