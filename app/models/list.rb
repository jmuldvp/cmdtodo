class List < ApplicationRecord
  has_many :items, dependent: :destroy
  belongs_to :user

  validates :name, length:{ minimum: 2, maximum: 100 }, presence: true
end
