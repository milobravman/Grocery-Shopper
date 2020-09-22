class CustomersController < ApplicationController

    def index
        @customers = Customer.all
    end

    def show
        @customer = Customer.find(params[:id])
    end

    def new
        @customer = Customer.new
    end

    def create # add address
        customer = Customer.create(customer_params(:name))
        redirect_to customer_path(customer)
    end

    def edit
        @customer = Customer.find(params[:id])
    end
    
    def update
        customer = Customer.find(params[:id])
        customer.update(customer_params(:name))
        redirect_to customer_path(customer)
    end

    def destroy
        customer = Customer.find(params[:id])
        Order.delete_by(customer:customer)
        customer.destroy
        redirect_to customers_path
    end

    def place_order
        customer = Customer.find(params[:id])
        #byebug # id = 7
        order = customer.orders.build
        order.save
        # id = nil
        redirect_to edit_order_path(order)
    end


    private

    def customer_params(*args)
        params.require(:customer).permit(*args)
    end

end
