require 'rails_helper'

RSpec.describe 'Customer API Request', :type => :request do
    let(:customer) { create(:customer)}

    describe 'Retrieve All Customers' do
        context 'GET All Customers' do
            it 'should return 200 OK when get all customers' do
                customer

                get "/module/v1/customers/index"

                expect(response).to have_http_status(200)
                expect(message).to eq("Customer retrieved successfully")
            end
        end
    end

    describe 'Retrieve Detail Customer' do
        context 'detail customer' do
            it 'should return 200 when detail customer' do
                customer

                get "/module/v1/customers/#{customer.id}"

                expect(response).to have_http_status(200)
            end
        end
    end
end
