class Product < ApplicationRecord
  scope :ordered, -> { order(id: :desc) }
end
