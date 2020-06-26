class CocktailsController < ApplicationController
    def index #all tasks 
      @cocktails = Cocktail.all
    end
    
    def show
       @cocktail = Cocktail.find(params[:id])
    end

    def new
      @cocktail = Cocktail.new
    end

    def create
      @cocktail = Cocktail.new(cocktail_params)
      @cocktail.save
      redirect_to cocktails_path( @cocktail )
    end
    
      private
    
    def edit
      @cocktail = Cocktail.find(params[:id])
    end

    def update
      @cocktail = Cocktail.find(params[:id])
      @cocktail.update(cocktail_params)
      redirect_to cocktails_path( @cocktail )
    end

    def destroy
      @cocktail = Cocktail.find(params[:id])
      @cocktail.destroy!
      redirect_to cocktails_path( @cocktail )
    end

    def cocktail_params
      params.require(:cocktail ).permit(:name)
    end
end
