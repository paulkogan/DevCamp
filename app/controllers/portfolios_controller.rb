class PortfoliosController < ApplicationController


  def index
    @portfolios = Portfolio.all
  end

  def new 
    @portfolio = Portfolio.new
  end

  def show
    #@portfolio = Portfolio.last - faker
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
        #format.html { redirect_to @portfolio, notice: 'Portfolio was successfully created.' }
        #format.json { render :show, status: :created, location: @portfolio }
      else
        format.html { render :new }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def portfolio_params
    params.require(:portfolio).permit(:title, :body, :thumb_img)
  end


end
