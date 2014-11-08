require 'test_helper'

class MarketsControllerTest < ActionController::TestCase
  setup do
    @market = markets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:markets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create market" do
    assert_difference('Market.count') do
      post :create, market: { FMID: @market.FMID, SFMNP: @market.SFMNP, SNAP: @market.SNAP, baked_goods: @market.baked_goods, cheese: @market.cheese, city: @market.city, county: @market.county, crafts: @market.crafts, credit: @market.credit, eggs: @market.eggs, flowers: @market.flowers, herbs: @market.herbs, honey: @market.honey, jams: @market.jams, location: @market.location, maple: @market.maple, market_name: @market.market_name, meat: @market.meat, nursery: @market.nursery, nuts: @market.nuts, plants: @market.plants, poultry: @market.poultry, prepared: @market.prepared, seafood: @market.seafood, season1_date: @market.season1_date, season1_time: @market.season1_time, season2_date: @market.season2_date, season2_time: @market.season2_time, season3_date: @market.season3_date, season3_time: @market.season3_time, season4_date: @market.season4_date, season4_time: @market.season4_time, soap: @market.soap, state: @market.state, street: @market.street, trees: @market.trees, update_time: @market.update_time, vegetables: @market.vegetables, website: @market.website, wic: @market.wic, wic_cash: @market.wic_cash, wine: @market.wine, x: @market.x, y: @market.y, zip: @market.zip }
    end

    assert_redirected_to market_path(assigns(:market))
  end

  test "should show market" do
    get :show, id: @market
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @market
    assert_response :success
  end

  test "should update market" do
    patch :update, id: @market, market: { FMID: @market.FMID, SFMNP: @market.SFMNP, SNAP: @market.SNAP, baked_goods: @market.baked_goods, cheese: @market.cheese, city: @market.city, county: @market.county, crafts: @market.crafts, credit: @market.credit, eggs: @market.eggs, flowers: @market.flowers, herbs: @market.herbs, honey: @market.honey, jams: @market.jams, location: @market.location, maple: @market.maple, market_name: @market.market_name, meat: @market.meat, nursery: @market.nursery, nuts: @market.nuts, plants: @market.plants, poultry: @market.poultry, prepared: @market.prepared, seafood: @market.seafood, season1_date: @market.season1_date, season1_time: @market.season1_time, season2_date: @market.season2_date, season2_time: @market.season2_time, season3_date: @market.season3_date, season3_time: @market.season3_time, season4_date: @market.season4_date, season4_time: @market.season4_time, soap: @market.soap, state: @market.state, street: @market.street, trees: @market.trees, update_time: @market.update_time, vegetables: @market.vegetables, website: @market.website, wic: @market.wic, wic_cash: @market.wic_cash, wine: @market.wine, x: @market.x, y: @market.y, zip: @market.zip }
    assert_redirected_to market_path(assigns(:market))
  end

  test "should destroy market" do
    assert_difference('Market.count', -1) do
      delete :destroy, id: @market
    end

    assert_redirected_to markets_path
  end
end
