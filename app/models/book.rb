class Book < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :title, presence: true
  validates :body, presence: true, length: {maximum: 200}
  belongs_to :user
end
