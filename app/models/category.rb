class Category < ActiveHash::Base
  include ActiveHash::Associations
  has_many :recipes
  self.data = [
    { id: 1, name: 'メインのおかず' },
    { id: 2, name: 'サブのおかず' },
    { id: 3, name: 'ご飯もの' },
    { id: 4, name: '麺類' },
    { id: 5, name: 'お菓子' },
    { id: 6, name: 'ソース・スープ類' },
    { id: 7, name: 'その他' }
  ]
end
