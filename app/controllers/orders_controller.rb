class OrdersController < ApplicationController

    def place_order

    end

    def edit
        @order = Order.find(params[:id])
    end

    def update
        order = Order.find(params[:id])
        order.update(order_params(:grocery_list, :list_weight, :customer))
        redirect_to customer_path(order.customer)
    end

    def destroy
        order = Order.find(params[:id])
        order.destroy
        redirect_to home_path
    end

    private 

    def order_params(*args)
        params.require(:order).permit(*args)
    end
end
