require 'rails_helper'

RSpec.describe 'Customer API Request', :type => :request do
    let(:customers) { create(:customer)}

    describe 'Retrieve All Customers' do
        context 'GET All Customers' do
            it 'should return 200 OK when get all customers' do
                customers

                get "/module/v1/customers/index"

                puts response.body
            end
        end
    end
end
