json.array!(@markets) do |market|
  json.extract! market, :id, :FMID, :market_name, :website, :street, :city, :county, :state, :zip, :season1_date, :season1_time, :season2_date, :season2_time, :season3_date, :season3_time, :season4_date, :season4_time, :x, :y, :location, :credit, :wic, :wic_cash, :SFMNP, :SNAP, :baked_goods, :cheese, :crafts, :flowers, :eggs, :seafood, :herbs, :vegetables, :honey, :jams, :maple, :meat, :nursery, :nuts, :plants, :poultry, :prepared, :soap, :trees, :wine, :update_time
  json.url market_url(market, format: :json)
end
