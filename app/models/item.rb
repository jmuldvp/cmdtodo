class Item < ApplicationRecord
  belongs_to :list

  validates :name, length:{ minimum: 2, maximum: 100 }, presence: true
end
