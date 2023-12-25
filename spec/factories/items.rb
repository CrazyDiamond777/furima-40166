FactoryBot.define do
  factory :item do
    association :user

    item_name { '商品名' }
    description { '商品の説明' }
    category_id { '2' }
    item_condition_id { '2' }
    delivery_charge_id { '2' }
    prefecture_id { '2' }
    delivery_date_id { '2' }
    item_price { '300' }

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.jpg'), filename: 'test_image.jpg')
    end
  end
end
