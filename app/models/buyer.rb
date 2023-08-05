class Buyer < ApplicationRecord
  has_many :invoices
  has_many :items, through: :invoices
  has_many :artists, through: :items
end