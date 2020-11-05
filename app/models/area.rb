class Area < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '北九州地区' },
    { id: 3, name: '福岡地区' },
    { id: 4, name: '筑後地区' },
    { id: 5, name: '筑豊地区' }
  ]

  include ActiveHash::Associations
  has_many :plans
end
