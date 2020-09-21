class ShoppersController < ApplicationController

    def index
        @shoppers = Shopper.all
    end

    def show
        @shopper = Shopper.find(params[:id])
    end

    def new
        @shopper = Shopper.new
    end

    def create
        shopper = Shopper.create(shopper_params(:name, :weight_max, :availability))
        redirect_to shopper_path(shopper)
    end

    def edit
        @shopper = Shopper.find(params[:id])
    end
    
    def update
        shopper = Shopper.find(params[:id])
        shopper.update(shopper_params(:name, :weight_max, :availability))
        redirect_to shopper_path(shopper)
    end

    def destroy
        shopper = Shopper.find(params[:id])
        shopper.destroy
        redirect_to shoppers_path
    end

    private

    def shopper_params(*args)
        params.require(:shopper).permit(*args)
    end

end
