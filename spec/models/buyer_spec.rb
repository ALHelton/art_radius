require 'rails_helper'

RSpec.describe Buyer do
  describe "relationships" do
    it { should have_many :invoices }
    it { should have_many(:items).through(:invoices) }
    it { should have_many(:artists).through(:items) }
  end

  describe "validations" do

  end
end