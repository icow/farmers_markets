class MarketsController < ApplicationController
  before_action :set_market, only: [:show, :edit, :update, :destroy]
  include PgSearch

  # GET /markets
  # GET /markets.json
  def index
    # @markets = Market.city("Douglasville")
    puts "============================"
    puts params[:query]

    term = params[:query]

    if term != '' && term != nil

      if term.to_i > 0
        # if over term must be an integer
        zip = term.to_i
        @markets = Market.where(zip: zip)

      else
        @markets = Market.where("city = '#{term}' OR state = '#{term}' OR market_name = '#{term}'")
      end

      puts "inside first params filter"

      term = term.titleize

      puts "term: #{term}"

      


      # city = params[:query].titleize

      # binding.pry



      # @markets = Market.where("city = #{term}")

      # puts "#{@markets}: @markets"

      puts @markets

      # @markets = Market.where(city: term).join(' OR ').where(zip: term).join(' OR ').where(state: term).join(' OR ').where(market_name: term)

      # @markets = Market.all

    else

      @markets = Market.all

    end
    # @markets = Market.all
    puts "============================"
    @markets = @markets.all.paginate(page: params[:page], per_page: 25)
    # latslong
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
      @market = Market.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def market_params
      params.require(:market).permit(:FMID, :market_name, :website, :street, :city, :county, :state, :zip, :season1_date, :season1_time, :season2_date, :season2_time, :season3_date, :season3_time, :season4_date, :season4_time, :x, :y, :location, :credit, :wic, :wic_cash, :SFMNP, :SNAP, :baked_goods, :cheese, :crafts, :flowers, :eggs, :seafood, :herbs, :vegetables, :honey, :jams, :maple, :meat, :nursery, :nuts, :plants, :poultry, :prepared, :soap, :trees, :wine, :update_time)
    end
end
