class Artist < ApplicationRecord
  has_many :items
  has_many :invoices, through: :items
  has_many :buyers, through: :invoices
end