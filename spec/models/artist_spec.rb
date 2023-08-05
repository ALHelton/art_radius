require 'rails_helper'

RSpec.describe Artist do
  describe "relationships" do
    it { should have_many :items }
    it { should have_many(:invoices).through(:items) }
    it { should have_many(:buyers).through(:invoices) }
  end

  describe "validations" do

  end
end