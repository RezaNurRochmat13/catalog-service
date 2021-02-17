FactoryBot.define do
  factory :customer do
    username {Faker::Artist.name}
    address {Faker::Address.city}
    phone {Faker::PhoneNumber.cell_phone}
  end
end
