class Order < ApplicationRecord
  validates_presence_of :name, :price, :imageUrl
end
