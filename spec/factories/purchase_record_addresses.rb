FactoryBot.define do
  factory :purchase_record_address do
    post_code { '900-0000' }
    prefecture_id { '2' }
    municipality { '渋谷区渋谷' }
    street_address { '1-1-1' }
    building { '建物名' }
    telephone { '09000000000' }
    token { 'tok_abcdefghijk00000000000000000' }
  end
end
