class CreateStockks < ActiveRecord::Migration[6.1]
  def change
    create_table :stockks do |t|
      t.string :tickerr
      t.string :name
      t.decimal :last_price

      t.timestamps
    end
  end
end
