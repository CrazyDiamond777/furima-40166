class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
 belongs_to :user
 has_one_attached :image
 
#空の投稿を禁止
validates :item_name, presence: true
validates :description, presence: true
validates :category_id, presence: true
validates :item_condition_id, presence: true
validates :delivery_charge_id, presence: true
validates :prefecture_id, presence: true
validates :delivery_date_id, presence: true
validates :item_price, presence: true
validates :image, presence: true

#各プルダウンとの連携
belongs_to :category
belongs_to :item_condition
belongs_to :delivery_charge
belongs_to :prefecture
belongs_to :delivery_date

#「---」の保存禁止
validates :category_id, numericality: { other_than: 1 , message: "can't be blank"}
validates :item_condition_id, numericality: { other_than: 1 , message: "can't be blank"}
validates :delivery_charge_id, numericality: { other_than: 1 , message: "can't be blank"}
validates :prefecture_id, numericality: { other_than: 1 , message: "can't be blank"}
validates :delivery_date_id, numericality: { other_than: 1 , message: "can't be blank"}


validates :item_price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999 }
validates :item_price, numericality: { only_integer: true, message: 'is out of setting range' }

end
