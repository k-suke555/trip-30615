class AfternoonType < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '観光' },
    { id: 3, name: '自然・レジャー' },
    { id: 4, name: '屋内レジャー' },
    { id: 5, name: '文化施設' },
    { id: 6, name: '社会科見学' },
    { id: 7, name: 'イベント' },
    { id: 8, name: 'ショッピング' },
    { id: 9, name: '食事' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :plans
end
