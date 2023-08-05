class ChangePriceToBeIntegerInItems < ActiveRecord::Migration[7.0]
  def change
    change_column :items, :price, :integer
  end
end
