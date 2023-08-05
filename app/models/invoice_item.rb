class InvoiceItem < ApplicationRecord
  belongs_to :invoice
  belongs_to :item

  before_create :copy_item_price

  private

  def copy_item_price
    self.price = item.price
  end
end