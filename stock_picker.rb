=begin
the program will take a list of stock prices and return a list of two element consist of the best day to pay and the best day to sell
=end

# the main method
def stock_picker prices_list
    profit=0
    pay_price=0
    sell_price=0
    prices_list[1,prices_list.length+1].each do |sprice|
        sprice_index=prices_list.index sprice
        prices_list[0,sprice_index].each do |pprice|
            if sprice-pprice>profit
                pay_price=pprice
                sell_price=sprice
                profit=sprice-pprice
            end
        end
    end
    best_day_to_pay=prices_list.index pay_price
    best_day_to_sell=prices_list.index sell_price
    [best_day_to_pay, best_day_to_sell]
end

p stock_picker [17,3,6,9,15,8,6,1,10]
