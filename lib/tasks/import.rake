require 'csv'

namespace :import do
  desc "Import buyers from CSV"
  task :buyers => :environment do
    CSV.foreach('db/data/buyers.csv', headers: true) do |row|
      Buyer.create!(row.to_hash)
    end

    ActiveRecord::Base.connection.reset_pk_sequence!('buyers')
    puts "Buyers imported."
  end

  desc "Import artists from CSV"
  task :artists => :environment do
    CSV.foreach('db/data/artists.csv', headers: true) do |row|
      Artist.create!(row.to_hash)
    end

    ActiveRecord::Base.connection.reset_pk_sequence!('artists')
    puts "Artists imported."
  end

  desc "Import items from CSV"
  task :items => :environment do
    CSV.foreach('db/data/items.csv', headers: true) do |row|
      Item.create!(row.to_hash)
    end

    ActiveRecord::Base.connection.reset_pk_sequence!('items')
    puts "Items imported."
  end

  desc "Import invoices from CSV"
  task :invoices => :environment do
    CSV.foreach('db/data/invoices.csv', headers: true) do |row|
      if row.to_hash['status'] == 'in progress'
        status = 0
      elsif row.to_hash['status'] == 'completed'
        status = 1
      elsif row.to_hash['status'] == 'cancelled'
        status = 2
      end
      Invoice.create!({ id:          row[0],
                        buyer_id:    row[1],
                        status:      status,
                        created_at:  row[4],
                        updated_at:  row[5] })
    end

    ActiveRecord::Base.connection.reset_pk_sequence!('invoices')
    puts "Invoices imported."
  end

  desc "Import transactions from CSV"
  task :transactions => :environment do
    CSV.foreach('db/data/transactions.csv', headers: true) do |row|
      if row.to_hash['result'] == 'failed'
        result = 0
      elsif row.to_hash['result'] == 'success'
        result = 1
      end
      Transaction.create!({ id:                          row[0],
                            invoice_id:                  row[1],
                            credit_card_number:          row[2],
                            credit_card_expiration:      row[3],
                            result:                      result,
                            created_at:                  row[5],
                            updated_at:                  row[6] })
    end

    ActiveRecord::Base.connection.reset_pk_sequence!('transactions')
    puts "Transactions imported."
  end

  desc "Import invoice_items from CSV"
  task :invoice_items => :environment do
    CSV.foreach('db/data/invoice_items.csv', headers: true) do |row|
      if row.to_hash['status'] == 'pending'
        status = 0
      elsif row.to_hash['status'] == 'packaged'
        status = 1
      elsif row.to_hash['status'] == 'shipped'
        status = 2
      end
      InvoiceItem.create!({ id:          row[0],
                            item_id:     row[1],
                            invoice_id:  row[2],
                            quantity:    row[3],
                            price:       row[4],
                            status:      status,
                            created_at:  row[6],
                            updated_at:  row[7] })
    end

    ActiveRecord::Base.connection.reset_pk_sequence!('invoice_items')
    puts "InvoiceItems imported."
  end

  desc "Import all from CSV"
  task :all => [:buyers, :artists, :items, :invoices, :transactions, :invoice_items]  
end