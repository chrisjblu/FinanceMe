class StocksController < ApplicationController
    
    def search
       @stock = Stockk.new_lookup(params[:stock])
        render 'users/my_portfolio'
    end
    
end