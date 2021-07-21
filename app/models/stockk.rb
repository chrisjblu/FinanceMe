class Stockk < ApplicationRecord
    
    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(
  publishable_token: 'pk_c246478206c64fc28a14fbd34dc4bbcc',
                 endpoint: 'https://cloud.iexapis.com/v1')
                 
                 new(tickerr: ticker_symbol, name: client.company(ticker_symbol).company_name, last_price:client.price(ticker_symbol))
         #client.price(ticker_symbol)
    end
end
