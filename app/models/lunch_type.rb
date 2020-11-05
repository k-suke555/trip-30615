class LunchType < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '和食' },
    { id: 3, name: '中華' },
    { id: 4, name: '洋食' },
    { id: 5, name: '和洋折衷' },
    { id: 6, name: 'イタリアン' },
    { id: 7, name: 'フレンチ' },
    { id: 8, name: 'カフェ・スイーツ・軽食' },
    { id: 9, name: '居酒屋・バー' },
    { id: 10, name: 'アジア・エスニック' },
    { id: 11, name: 'その他・不明' }
  ]

  include ActiveHash::Associations
  has_many :plans
end
