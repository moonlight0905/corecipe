class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string          :recipe_name,                 null: false                                       
      t.integer         :servings_id,                 null: false
      t.integer         :category_id,                 null: false
      t.string          :ingredients1,                null: false
      t.string          :ingredients2
      t.string          :ingredients3
      t.string          :ingredients4
      t.string          :ingredients5
      t.string          :ingredients6
      t.string          :cooking_instructions1,       null: false
      t.string          :cooking_instructions2
      t.string          :cooking_instructions3
      t.string          :cooking_instructions4
      t.string          :cooking_instructions5
      t.string          :cooking_instructions6
      t.text            :remarks
      t.references      :user,                        null: false,     foreign_key: true
      t.timestamps
    end
  end
end
