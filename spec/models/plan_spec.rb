require 'rails_helper'

RSpec.describe Plan, type: :model do
  describe '計画投稿機能' do
    before do
      @plan = FactoryBot.build(:plan)
    end

    it '全ての情報が正しく入力できていれば保存できること' do
      expect(@plan).to be_valid
    end

    it 'プラン名が必須であること' do
      @plan.title = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include("Title can't be blank")
    end

    it '地域の情報が必須であること' do
      @plan.area = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include("Area can't be blank", 'Area は--以外を選択してください')
    end

    it '地域の情報は--が選択されていると保存ができないこと' do
      @plan.area_id = 1
      @plan.valid?
      expect(@plan.errors.full_messages).to include('Area は--以外を選択してください')
    end

    it '画像を1枚つけることが必須であること' do
      @plan.image = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include("Image can't be blank")
    end

    it 'ランチプラン名が必須であること' do
      @plan.lunch_title = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include("Lunch title can't be blank")
    end

    it 'ランチプランの説明が必須であること' do
      @plan.lunch_description = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include("Lunch description can't be blank")
    end

    it 'ランチプランのジャンルが必須であること' do
      @plan.lunch_type = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include("Lunch type can't be blank", 'Lunch type は--以外を選択してください')
    end

    it 'ランチプランのジャンルは--が選択されていると保存ができないこと' do
      @plan.lunch_type_id = 1
      @plan.valid?
      expect(@plan.errors.full_messages).to include('Lunch type は--以外を選択してください')
    end

    it 'ランチプランの予定金額が必須であること' do
      @plan.lunch_price = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include("Lunch price can't be blank", 'Lunch price は--以外を選択してください')
    end

    it 'ランチプランの予定金額は--が選択されていると保存ができないこと' do
      @plan.lunch_price_id = 1
      @plan.valid?
      expect(@plan.errors.full_messages).to include('Lunch price は--以外を選択してください')
    end

    it '午後のプラン名が必須であること' do
      @plan.afternoon_title = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include("Afternoon title can't be blank")
    end

    it '午後のプランの説明が必須であること' do
      @plan.afternoon_description = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include("Afternoon description can't be blank")
    end

    it '午後のプランのジャンルが必須であること' do
      @plan.afternoon_type = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include("Afternoon type can't be blank", 'Afternoon type は--以外を選択してください')
    end

    it '午後のプランのジャンルは--が選択されていると保存ができないこと' do
      @plan.afternoon_type_id = 1
      @plan.valid?
      expect(@plan.errors.full_messages).to include('Afternoon type は--以外を選択してください')
    end

    it '午後のプランの予定金額が必須であること' do
      @plan.afternoon_price = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include("Afternoon price can't be blank", 'Afternoon price は--以外を選択してください')
    end

    it '午後のプランの予定金額は--が選択されていると保存ができないこと' do
      @plan.afternoon_price_id = 1
      @plan.valid?
      expect(@plan.errors.full_messages).to include('Afternoon price は--以外を選択してください')
    end

    it '午後のプランの予定時間が必須であること' do
      @plan.afternoon_period = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include("Afternoon period can't be blank", 'Afternoon period は--以外を選択してください')
    end

    it '午後のプランの予定時間は--が選択されていると保存ができないこと' do
      @plan.afternoon_period_id = 1
      @plan.valid?
      expect(@plan.errors.full_messages).to include('Afternoon period は--以外を選択してください')
    end
  end
end
