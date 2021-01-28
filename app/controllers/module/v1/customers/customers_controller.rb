class Module::V1::Customers::CustomersController < ApplicationController

    def allCustomers
        customers = Customer.all
        
        render json: {
            :message => 'Customer retrieved successfully',
            :data => customers
        }
    end
end
