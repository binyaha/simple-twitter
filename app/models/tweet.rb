class Tweet < ApplicationRecord
  validates_length_of :description, maximum: 140
  validates_presence_of :description
  belongs_to :user, optional: true
  has_many :replies, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :like_users, through: :likes, source: :user


  def is_liked?(user)
    self.like_users.include?(user)
  end


end
