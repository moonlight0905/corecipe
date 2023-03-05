class Recipe < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :servings


  has_one_attached :image
    def self.search(search)
      if search != ""
        search = "%#{search}%"
        Tweet.find_by_sql(["select * from tweets where text like ? ", search])
      else
        Tweet.all
      end
    end

  belongs_to :user
end
