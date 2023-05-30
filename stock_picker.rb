prices = [17,3,6,9,15,8,6,1,10]
def stock_picker(prices)
    profit = 0
    low_price = prices[0]
    low_index = 0
    result = []
    prices.each_with_index do |price_1, index| #this is used for getting the lowest price
        if price_1 < low_price
            low_price = price_1
            low_index = index
            puts low_price
        end
        if price_1 - low_price > profit #comparing the highest profit we can get with the prices we have
            #puts low_price
            profit = price_1 - low_price
            #puts profit
            result = [low_index, index]
        end
        #if price - low_price > profit
           # profit = price - low_price
            #puts price
    end
    #puts result
end
stock_picker(prices)