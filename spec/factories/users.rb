FactoryBot.define do
  factory :user do
    nick_name              { 'ニックネーム' }
    first_name             { '名' }
    last_name              { '姓' }
    first_name_kana        { 'メイ' }
    last_name_kana         { 'セイ' }
    birth_date             { '1930-02-04' }
    email                  { Faker::Internet.email }
    password               { 'pass123' }
    password_confirmation  { 'pass123' }
  end
end
