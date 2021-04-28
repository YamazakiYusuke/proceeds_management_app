class Category < ApplicationRecord
  has_many :selled_products, dependent: :destroy

  validates :name, presence: true
end
