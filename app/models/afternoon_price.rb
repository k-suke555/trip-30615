class AfternoonPrice < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '無料~1,000' },
    { id: 3, name: '~2,000' },
    { id: 4, name: '~3,000' },
    { id: 5, name: '~5,000' },
    { id: 6, name: '~1万' },
    { id: 7, name: '~2万' },
    { id: 8, name: '2万~' },
    { id: 9, name: 'その他・不明' }
  ]

  include ActiveHash::Associations
  has_many :plans
end
