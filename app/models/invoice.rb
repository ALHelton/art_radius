class Invoice < ApplicationRecord
  belongs_to :buyer
  has_many :transactions
  has_many :invoice_items
  has_many :items, through: :invoice_items
end