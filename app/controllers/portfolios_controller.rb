class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :show, :update, :destroy]
  access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit ]}, site_admin: :all

  layout "portfolio"

    def index 
        # @portfolio_items = Portfolio.ruby_on_rails_portfolio_items
        # @portfolio_items = Portfolio.angular
        @portfolio_items = Portfolio.by_position
    end

    def sort 
      params[:order].each do |key,value| 
        Portfolio.find(value[:id]).update(position:  value[:position])
      end
      render nothing: true
    end



    def angular 
      @angular_items = Portfolio.angular
    end

    def new
        @portfolio_item = Portfolio.new
        3.times {@portfolio_item.technologies.build }
    end
    

    def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your Portfolio item is now live!' }
        # format.json { render :show, status: :created, location: @portfolio_item }
      else
        format.html { render :new }
        # format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
     end
  end



    def edit 
        
    end

    def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'The Record successfully updated.' }
        # format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        # format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end


  def show 

  end

  def destroy 

   @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Record was successfully destroyed.' }
    #   format.json { head :no_content }
    end
   end


private
   def portfolio_params
      params.require(:portfolio).permit(:title, 
                                        :subtitle, 
                                        :body, 
                                        technologies_attributes: [:name]
                                        )
   end

   def set_portfolio_item
     @portfolio_item = Portfolio.find(params[:id])
   end


end
