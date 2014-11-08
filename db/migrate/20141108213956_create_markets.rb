class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :FMID
      t.string :market_name
      t.string :website
      t.string :street
      t.string :city
      t.string :county
      t.string :state
      t.integer :zip
      t.string :season1_date
      t.string :season1_time
      t.string :season2_date
      t.string :season2_time
      t.string :season3_date
      t.string :season3_time
      t.string :season4_date
      t.string :season4_time
      t.string :x
      t.string :y
      t.string :location
      t.string :credit
      t.string :wic
      t.string :wic_cash
      t.string :SFMNP
      t.string :SNAP
      t.string :baked_goods
      t.string :cheese
      t.string :crafts
      t.string :flowers
      t.string :eggs
      t.string :seafood
      t.string :herbs
      t.string :vegetables
      t.string :honey
      t.string :jams
      t.string :maple
      t.string :meat
      t.string :nursery
      t.string :nuts
      t.string :plants
      t.string :poultry
      t.string :prepared
      t.string :soap
      t.string :trees
      t.string :wine
      t.string :update_time

      t.timestamps
    end
  end
end
