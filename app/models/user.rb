class User < ApplicationRecord
  has_many :contacts
  has_many :sent, class_name: 'Message', foreign_key: 'sender_id'
  has_many :received, class_name: 'Message', foreign_key: 'receiver_id'
  has_one_attached :photo

  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
end
