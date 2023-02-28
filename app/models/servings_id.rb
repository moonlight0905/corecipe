class ServingsId < ActiveHash::Base
  self.data = [
    { id: 1, name: '４人分' },
    { id: 2, name: '１人分' },
    { id: 3, name: '２人分' },
    { id: 4, name: '３人分' },
    { id: 5, name: '大人数分' },
    { id: 6, name: 'その他' }
  ]
  end