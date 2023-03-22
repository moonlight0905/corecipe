class Comment < ApplicationRecord
  belongs_to :recipe
  belongs_to :user

  validates :text,   presence: true,            length: { maximum: 250 }
end
