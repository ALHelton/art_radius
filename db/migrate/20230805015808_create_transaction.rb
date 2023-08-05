class CreateTransaction < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.bigint :credit_card_number
      t.date :credit_card_expiration
      t.integer :result
      t.references :invoice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
