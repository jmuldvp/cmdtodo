class User < ApplicationRecord
  before_save { self.email = email.downcase if email.present? }

  validates :email, length: { minimum: 4, maximum: 100 }, presence: true

  has_many :items, dependent: :destroy
  has_many :lists, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable
end
