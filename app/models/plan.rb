class Plan < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area
  belongs_to :lunch_type
  belongs_to :lunch_price
  belongs_to :afternoon_type
  belongs_to :afternoon_price
  belongs_to :afternoon_period

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image

  with_options presence: true do
    validates :title, :area
    validates :lunch_title, :lunch_description, :lunch_type, :lunch_price
    validates :afternoon_title, :afternoon_description, :afternoon_type, :afternoon_price, :afternoon_period
    validates :image
  end
  validates :area_id, :lunch_type_id, :lunch_price_id, :afternoon_type_id, :afternoon_price_id, :afternoon_period_id, numericality: { other_than: 1, message: 'は--以外を選択してください' }

  def self.search(search)
    if search != ""
      Plan.where('title LIKE(?)', "%#{search}%")
        .or(Plan.where('lunch_title LIKE(?)', "%#{search}%"))
          .or(Plan.where('lunch_description LIKE(?)', "%#{search}%"))
            .or(Plan.where('afternoon_title LIKE(?)', "%#{search}%"))
              .or(Plan.where('afternoon_description LIKE(?)', "%#{search}%"))
    else
      Plan.all
    end
  end

end


