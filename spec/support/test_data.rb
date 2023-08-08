module TestData
  def setup_test_data

    #artists
    @me = create(:artist, name: "Andra Helton")
    @another = create(:artist)


    #buyers
    @buyer1 = create(:buyer)
    @buyer2 = create(:buyer)
    @buyer3 = create(:buyer)
    @buyer4 = create(:buyer)
    @buyer5 = create(:buyer)
    @buyer6 = create(:buyer)
    @buyer7 = create(:buyer)
    @buyer8 = create(:buyer)
    @buyer9 = create(:buyer)
    @buyer10 = create(:buyer)


    #invoices
    @invoice1 = create(:invoice, buyer: @buyer1) #buyer1
    @invoice2 = create(:invoice, buyer: @buyer1)
    # -----------------------------------------------
    @invoice3 = create(:invoice, buyer: @buyer2) #buyer2
    @invoice4 = create(:invoice, buyer: @buyer2)
    @invoice5 = create(:invoice, buyer: @buyer2)
    @invoice6 = create(:invoice, buyer: @buyer2)
    @invoice7 = create(:invoice, buyer: @buyer2)
    # -----------------------------------------------
    @invoice8 = create(:invoice, buyer: @buyer3) #buyer3
    @invoice9 = create(:invoice, buyer: @buyer3)
    @invoice10 = create(:invoice, buyer: @buyer3)
    @invoice11 = create(:invoice, buyer: @buyer3)
    # -----------------------------------------------
    @invoice12 = create(:invoice, buyer: @buyer4) #buyer4
    @invoice13 = create(:invoice, buyer: @buyer4)
    @invoice14 = create(:invoice, buyer: @buyer4)
    @invoice15 = create(:invoice, buyer: @buyer4)
    @invoice16 = create(:invoice, buyer: @buyer4)
    # -----------------------------------------------
    @invoice17 = create(:invoice, buyer: @buyer5) #buyer5
    @invoice18 = create(:invoice, buyer: @buyer5)
    @invoice19 = create(:invoice, buyer: @buyer5)
    # -----------------------------------------------
    @invoice20 = create(:invoice, buyer: @buyer6) #buyer6
    @invoice21 = create(:invoice, buyer: @buyer6)
    @invoice22 = create(:invoice, buyer: @buyer6)
    @invoice23 = create(:invoice, buyer: @buyer6)
    @invoice24 = create(:invoice, buyer: @buyer6)
    @invoice25 = create(:invoice, buyer: @buyer6)
    # -----------------------------------------------
    @invoice26 = create(:invoice, buyer: @buyer7) #buyer7
    # -----------------------------------------------
    @invoice27 = create(:invoice, buyer: @buyer8) #buyer8
    # -----------------------------------------------
    @invoice28= create(:invoice, buyer: @buyer9) #buyer9
    # -----------------------------------------------
    @invoice29 = create(:invoice, buyer: @buyer10) #buyer10


    #items
    @item1 = create(:item, artist: @me) #me(artist)
    @item2 = create(:item, artist: @me)
    @item3 = create(:item, artist: @me)
    @item4 = create(:item, artist: @me)
    @item5 = create(:item, artist: @me)
    # -----------------------------------------------
    @item6 = create(:item, artist: @another) #another(artist)


    #invoice_items
    @ii1 = create(:invoice_item, invoice: @invoice1, item: @item5, quantity: 2, price: 3000) #invoice1 - me, buyer1
    @ii2 = create(:invoice_item, invoice: @invoice1, item: @item2, quantity: 1, price: 7200)
    @ii3 = create(:invoice_item, invoice: @invoice1, item: @item4, quantity: 1, price: 4000)
    @ii4 = create(:invoice_item, invoice: @invoice1, item: @item1, quantity: 1, price: 2000)
    @ii5 = create(:invoice_item, invoice: @invoice2, item: @item3, quantity: 1, price: 5600) #invoice2
    @ii6 = create(:invoice_item, invoice: @invoice2, item: @item2, quantity: 1, price: 7200)
    @ii7 = create(:invoice_item, invoice: @invoice2, item: @item5, quantity: 1, price: 3000)
    # -----------------------------------------------
    @ii8 = create(:invoice_item, invoice: @invoice3, item: @item3, quantity: 1, price: 5600) #invoice3 - me, buyer2
    @ii9 = create(:invoice_item, invoice: @invoice3, item: @item2, quantity: 1, price: 7200)
    @ii10 = create(:invoice_item, invoice: @invoice3, item: @item5, quantity: 1, price: 3000)
    @ii11 = create(:invoice_item, invoice: @invoice4, item: @item3, quantity: 1, price: 5600) #invoice4
    @ii11 = create(:invoice_item, invoice: @invoice4, item: @item4, quantity: 1, price: 4000)
    @ii12 = create(:invoice_item, invoice: @invoice5, item: @item2, quantity: 1, price: 7200) #invoice5
    @ii13 = create(:invoice_item, invoice: @invoice6, item: @item1, quantity: 2, price: 2000) #invoice6
    @ii14 = create(:invoice_item, invoice: @invoice7, item: @item2, quantity: 1, price: 7200) #invoice7
    @ii15 = create(:invoice_item, invoice: @invoice7, item: @item1, quantity: 2, price: 2000)
    # -----------------------------------------------
    @ii16 = create(:invoice_item, invoice: @invoice8, item: @item3, quantity: 1, price: 5600) #invoice8 - me, buyer3
    @ii17 = create(:invoice_item, invoice: @invoice9, item: @item4, quantity: 2, price: 4000) #invoice9
    @ii18 = create(:invoice_item, invoice: @invoice10, item: @item2, quantity: 1, price: 7200) #invoice10
    @ii19 = create(:invoice_item, invoice: @invoice11, item: @item2, quantity: 1, price: 7200) #invoice11
    # -----------------------------------------------
    @ii20 = create(:invoice_item, invoice: @invoice12, item: @item1, quantity: 4, price: 2000) #invoice12 - me, buyer4
    @ii21 = create(:invoice_item, invoice: @invoice13, item: @item2, quantity: 1, price: 7200) #invoice13
    @ii22 = create(:invoice_item, invoice: @invoice14, item: @item1, quantity: 3, price: 2000) #invoice14
    @ii23 = create(:invoice_item, invoice: @invoice15, item: @item3, quantity: 1, price: 5600) #invoice15
    @ii24 = create(:invoice_item, invoice: @invoice16, item: @item4, quantity: 1, price: 4000) #invoice16
    # -----------------------------------------------
    @ii25 = create(:invoice_item, invoice: @invoice17, item: @item1, quantity: 1, price: 2000) #invoice17 - me, buyer5
    @ii26 = create(:invoice_item, invoice: @invoice18, item: @item1, quantity: 2, price: 2000) #invoice18
    @ii27 = create(:invoice_item, invoice: @invoice19, item: @item1, quantity: 1, price: 2000) #invoice19
    # -----------------------------------------------
    @ii28 = create(:invoice_item, invoice: @invoice20, item: @item1, quantity: 2, price: 2000) #invoice2 - me, buyer6
    @ii29 = create(:invoice_item, invoice: @invoice21, item: @item1, quantity: 2, price: 2000) #invoice21 
    @ii30 = create(:invoice_item, invoice: @invoice22, item: @item4, quantity: 2, price: 4000) #invoice22 
    @ii31 = create(:invoice_item, invoice: @invoice23, item: @item3, quantity: 2, price: 5600) #invoice23
    @ii32 = create(:invoice_item, invoice: @invoice24, item: @item5, quantity: 2, price: 3000) #invoice24 
    @ii33 = create(:invoice_item, invoice: @invoice25, item: @item5, quantity: 2, price: 3000) #invoice25 
    # -----------------------------------------------
    @ii34 = create(:invoice_item, invoice: @invoice26, item: @item1, quantity: 2, price: 2000) #invoice26 - me, buyer7
    # -----------------------------------------------
    @ii35 = create(:invoice_item, invoice: @invoice27, item: @item2, quantity: 1, price: 7200) #invoice27 - me, buyer8
    # -----------------------------------------------
    @ii36 = create(:invoice_item, invoice: @invoice28, item: @item4, quantity: 2, price: 4000) #invoice28 - me, buyer9
    @ii37 = create(:invoice_item, invoice: @invoice28, item: @item2, quantity: 1, price: 7200) #invoice28
    # -----------------------------------------------
    @ii38 = create(:invoice_item, invoice: @invoice29, item: @item6, quantity: 1, price: 10000) #invoice29 - another, buyer10


    # transactions
    @t1f = create(:transaction, invoice: @invoice1, result: 0) #invoice1 - failed - buyer1
    @t1 = create(:transaction, invoice: @invoice1, result: 1) #invoice1 - success
    @t2f = create(:transaction, invoice: @invoice2, result: 0) #invoice2 - failed
    @t2 = create(:transaction, invoice: @invoice2, result: 1) #invoice2 - success
    @t3 = create(:transaction, invoice: @invoice3, result: 1) #invoice3 - success - buyer2
    @t4f = create(:transaction, invoice: @invoice4, result: 0) #invoice4 - failed
    @t4 = create(:transaction, invoice: @invoice4, result: 1) #invoice4 - success
    @t5f = create(:transaction, invoice: @invoice5, result: 0) #invoice5 - failed
    @t5 = create(:transaction, invoice: @invoice5, result: 1) #invoice5 - success
    @t6 = create(:transaction, invoice: @invoice6, result: 1) #invoice6 - success
    @t7 = create(:transaction, invoice: @invoice7, result: 1) #invoice7 - success
    @t8 = create(:transaction, invoice: @invoice8, result: 1) #invoice8 - success - buyer3
    @t9f = create(:transaction, invoice: @invoice9, result: 0) #invoice9 - failed
    @t10f = create(:transaction, invoice: @invoice10, result: 1) #invoice10 - failed
    @t11 = create(:transaction, invoice: @invoice11, result: 1) #invoice11 - success
    @t12f = create(:transaction, invoice: @invoice12, result: 0) #invoice12 - failed - buyer4
    @t12 = create(:transaction, invoice: @invoice12, result: 1) #invoice12 - success
    @t13 = create(:transaction, invoice: @invoice13, result: 1) #invoice13 - success
    @t14 = create(:transaction, invoice: @invoice14, result: 1) #invoice14 - success
    @t15 = create(:transaction, invoice: @invoice15, result: 1) #invoice15 - success
    @t16 = create(:transaction, invoice: @invoice16, result: 1) #invoice16 - success
    @t17 = create(:transaction, invoice: @invoice17, result: 1) #invoice17 - success - buyer5
    @t18 = create(:transaction, invoice: @invoice18, result: 1) #invoice18 - success
    @t19f = create(:transaction, invoice: @invoice19, result: 0) #invoice19 - failed
    @t20f = create(:transaction, invoice: @invoice20, result: 0) #invoice20 - failed - buyer6
    @t20 = create(:transaction, invoice: @invoice20, result: 1) #invoice20 - success
    @t21 = create(:transaction, invoice: @invoice21, result: 1) #invoice21 - success
    @t22 = create(:transaction, invoice: @invoice22, result: 1) #invoice22 - success
    @t23 = create(:transaction, invoice: @invoice23, result: 1) #invoice23 - success
    @t24 = create(:transaction, invoice: @invoice24, result: 1) #invoice24 - success
    @t25f = create(:transaction, invoice: @invoice25, result: 0) #invoice25 - failed
    @t25 = create(:transaction, invoice: @invoice25, result: 1) #invoice25 - success
    @t26 = create(:transaction, invoice: @invoice26, result: 1) #invoice26 - success - buyer7
    @t27 = create(:transaction, invoice: @invoice27, result: 1) #invoice27 - success - buyer8
    @t28 = create(:transaction, invoice: @invoice28, result: 1) #invoice28 - success - buyer9
    @t29 = create(:transaction, invoice: @invoice29, result: 1) #invoice29 - success - buyer10

    # Number Successful Transactions by Buyer (for @me)
    # buyer1 = 2
    # buyer2 = 5
    # buyer3 = 2
    # buyer4 = 5
    # buyer5 = 2
    # buyer6 = 6
    # buyer7 = 1
    # buyer8 = 1
    # buyer9 = 1

    # Grand Total Purchase by Buyer (for @me)
    # buyer1 = $350.00
    # buyer2 = $478.00
    # buyer3 = $128.00
    # buyer4 = $308.00
    # buyer5 = $60.00
    # buyer6 = $392.00
    # buyer7 = $40.00
    # buyer8 = $72.00
    # buyer9 = $152.00

    # Top 5 by number of transactions: buyer6, buyer2, buyer4, buyer1, buyer3
    # ties will be settled based on grand total purchase amount

    # Top 5 by grand total purchases: buyer2, buyer6, buyer1, buyer4, buyer 9
    # ties will be settled based on higher number of transactions
  end
end