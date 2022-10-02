def stock_picker(stock_prices)
    ans = [stock_prices.sort[0] - stock_prices.sort[-1], 0, 0]
    0.upto(stock_prices.length-2) do |i|
        (i+1).upto(stock_prices.length-1) do |j|
            profit = (stock_prices[j] - stock_prices[i])
            if profit > ans[0]
                ans[0]=profit
                ans[1]=i
                ans[2]=j
            end
        end
    end
    ans.shift
    return ans
end

puts stock_picker [17,3,6,9,15,8,16,1,10]