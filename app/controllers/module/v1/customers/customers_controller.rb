class Module::V1::Customers::CustomersController < ApplicationController

    def allCustomers
        customers = Customer.all
        
        render json: {
            :message => 'Customer retrieved successfully',
            :data => customers
        }
    end

    def detailCustomer
        customer = Customer.find(params[:id])

        render json: {
            :message => 'Customer retrieved!',
            :data => customer
        }
    end
end
