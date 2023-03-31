require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before do
    @recipe = FactoryBot.create(:recipe)
  end

  describe 'レシピ情報登録' do
    context 'レシピ情報を登録できる場合' do
      it 'recipe_name, category, servings, ingredients1, cooking_instructions1が存在すれば登録できる' do
        expect(@recipe).to be_valid
      end
    end
    context 'レシピ情報を登録できない場合' do
      it 'recipe_nameが空では登録できない' do
        @recipe.recipe_name = ''
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Recipe name can't be blank")
      end
      it 'recipe_nameが41文字以上では登録できない' do
        @recipe.recipe_name = Faker::Lorem.characters(number: 41)
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Recipe name is too long (maximum is 40 characters)")
      end
      it 'category_idが空では登録できない' do
        @recipe.category_id = ''
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Category can't be blank")
      end
      it 'servings_idが空では登録できない' do
        @recipe.servings_id = ''
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Servings can't be blank")
      end
      it 'ingredients1が空では登録できない' do
        @recipe.ingredients1 = '' 
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Ingredients1 can't be blank")
      end
      it 'ingredients1が41文字以上では登録できない' do
        @recipe.ingredients1 = Faker::Lorem.characters(number: 41)
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Ingredients1 is too long (maximum is 40 characters)")
      end
      it 'cooking_instructions1が空では登録できない' do
        @recipe.cooking_instructions1 = '' 
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Cooking instructions1 can't be blank")
      end
      it 'cooking_instructions1が251文字以上では登録できない' do
        @recipe.cooking_instructions1 = Faker::Lorem.characters(number: 251)
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Cooking instructions1 is too long (maximum is 250 characters)")
      end
      it 'remarksが1001文字以上では登録できない' do
        @recipe.remarks = Faker::Lorem.characters(number: 1001)
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Remarks is too long (maximum is 1000 characters)")
      end
      it 'ユーザーが紐付いていなければ登録できない' do
        @recipe.user = nil
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include('User must exist')
      end
    end
  end
end
