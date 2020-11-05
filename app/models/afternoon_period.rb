class AfternoonPeriod < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '１時間未満' },
    { id: 3, name: '１〜２時間' },
    { id: 4, name: '３〜４時間' },
    { id: 5, name: '５時間以上' },
    { id: 6, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :plans
end
