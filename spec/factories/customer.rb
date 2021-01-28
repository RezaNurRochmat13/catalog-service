FactoryBot.define do
  factory :customer, class: Customer do
    username {Faker::Artist.name}
    address {Faker::Address.city}
    phone {Faker::PhoneNumber.cell_phone}
  end
end
