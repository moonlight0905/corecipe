require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.create(:comment)
  end

  describe 'コメント投稿' do
   context 'コメントを投稿できる場合' do
    it 'textが存在すれば投稿できる' do
      expect(@comment).to be_valid
    end
   end
   context 'コメントを投稿できない場合' do
    it 'textが空では投稿できない' do
      @comment.text = ''
      @comment.valid?
      expect(@comment.errors.full_messages).to include "Text can't be blank"
    end
    it 'textが251文字以上では投稿できない' do
      @comment.text = Faker::Lorem.characters(number: 251)
      @comment.valid?
      expect(@comment.errors.full_messages).to include("Text is too long (maximum is 250 characters)")
    end
    it 'ユーザーが紐付いていなければ投稿できない' do
      @comment.user = nil
      @comment.valid?
      expect(@comment.errors.full_messages).to include('User must exist')
    end
    it 'レシピが紐付いていなければ投稿できない' do
      @comment.recipe = nil
      @comment.valid?
      expect(@comment.errors.full_messages).to include('Recipe must exist')
    end
   end
  end
end
