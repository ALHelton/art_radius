require 'rails_helper'

RSpec.describe Transaction do
  describe "relationships" do
    it { should belong_to :invoice }
  end

  describe "validations" do

  end
end