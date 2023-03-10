class Recipe < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :servings

  validates :recipe_name,             presence: true,            length: { maximum: 40 }
  validates :category_id,             presence: true
  validates :servings_id,             presence: true
  validates :ingredients1,            presence: true,            length: { maximum: 40 }
  validates :ingredients2,                                       length: { maximum: 40 }                      
  validates :ingredients3,                                       length: { maximum: 40 } 
  validates :ingredients4,                                       length: { maximum: 40 } 
  validates :ingredients5,                                       length: { maximum: 40 } 
  validates :ingredients6,                                       length: { maximum: 40 } 
  validates :cooking_instructions1,   presence: true,            length: { maximum: 250 }
  validates :cooking_instructions2,                              length: { maximum: 250 }
  validates :cooking_instructions3,                              length: { maximum: 250 }
  validates :cooking_instructions4,                              length: { maximum: 250 }
  validates :cooking_instructions5,                              length: { maximum: 250 }
  validates :cooking_instructions6,                              length: { maximum: 250 }
  validates :remarks,                                            length: { maximum: 1000 }

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
