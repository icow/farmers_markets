class MarketsController < ApplicationController
  include MarketsHelper
  require 'madison'
  
  before_action :set_market, only: [:show, :edit, :update, :destroy]
  # before_filter :sluggit

  # GET /markets
  # GET /markets.json
  def index
    term = params[:query]
    if term != '' && term != nil
      if term.to_i > 0
        # if over term must be an integer
        zip = term.to_i
        @markets = Market.where(zip: zip)
      else
        @markets = Market.where("city = '#{term}' OR state = '#{term}' OR market_name = '#{term}'")
      end
      term = term.titleize
    else
      @markets = Market.all
    end
    @markets = @markets.all.paginate(page: params[:page], per_page: 25)
    @coords = []
    @markets.each {|m| @coords << m.latlong }

    lats = @coords.collect {|latlong| latlong[0]}
    @avg_lat = lats.sum/lats.size.to_f

    longs = @coords.collect {|latlong| latlong[1]}
    @avg_long = longs.sum/longs.size.to_f
  end

  def admin_index
    @markets = Market.limit(20)
  end

  # GET /markets/1
  # GET /markets/1.json
  def show
  end

  # GET /markets/new
  def new
    @market = Market.new
  end

  # GET /markets/1/edit
  def edit
  end

  # POST /markets
  # POST /markets.json
  def create
    @market = Market.new(market_params)

    respond_to do |format|
      if @market.save
        format.html { redirect_to @market, notice: 'Market was successfully created.' }
        format.json { render :show, status: :created, location: @market }
      else
        format.html { render :new }
        format.json { render json: @market.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /markets/1
  # PATCH/PUT /markets/1.json
  def update
    respond_to do |format|
      if @market.update(market_params)
        format.html { redirect_to @market, notice: 'Market was successfully updated.' }
        format.json { render :show, status: :ok, location: @market }
      else
        format.html { render :edit }
        format.json { render json: @market.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /markets/1
  # DELETE /markets/1.json
  def destroy
    @market.destroy
    respond_to do |format|
      format.html { redirect_to markets_url, notice: 'Market was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_market
      @market = Market.find_by(slug: params[:slug])
      # print "Market Name: "
      # puts @market.market_name
      # puts @market.inspect
      # puts "@market.market_name: #{@market.market_name}"
      # puts @market.market_name
      # binding.pry
    end

    # def sluggit
    #   if @market
    #     @slug = set_market.slug
    #     puts "@slug: #{@slug}"
    #     # binding.pry
    #   end
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def market_params
      params.require(:market).permit(:FMID, :market_name, :website, :street, :city, :county, :state, :zip, :season1_date, :season1_time, :season2_date, :season2_time, :season3_date, :season3_time, :season4_date, :season4_time, :x, :y, :location, :credit, :wic, :wic_cash, :SFMNP, :SNAP, :baked_goods, :cheese, :crafts, :flowers, :eggs, :seafood, :herbs, :vegetables, :honey, :jams, :maple, :meat, :nursery, :nuts, :plants, :poultry, :prepared, :soap, :trees, :wine, :update_time)
    end
end
