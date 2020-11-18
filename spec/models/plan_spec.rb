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
      expect(@plan.errors.full_messages).to include('プラン名を入力してください')
    end

    it '地域の情報が必須であること' do
      @plan.area = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include('地域を入力してください', '地域は--以外を選択してください')
    end

    it '地域の情報は--が選択されていると保存ができないこと' do
      @plan.area_id = 1
      @plan.valid?
      expect(@plan.errors.full_messages).to include('地域は--以外を選択してください')
    end

    it '画像を1枚つけることが必須であること' do
      @plan.image = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include('画像を入力してください')
    end

    it 'ランチプラン名が必須であること' do
      @plan.lunch_title = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include('ランチプラン名を入力してください')
    end

    it 'ランチプランの説明が必須であること' do
      @plan.lunch_description = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include('ランチプランの説明を入力してください')
    end

    it 'ランチプランのジャンルが必須であること' do
      @plan.lunch_type = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include('ランチのジャンルを入力してください', 'ランチのジャンルは--以外を選択してください')
    end

    it 'ランチプランのジャンルは--が選択されていると保存ができないこと' do
      @plan.lunch_type_id = 1
      @plan.valid?
      expect(@plan.errors.full_messages).to include('ランチのジャンルは--以外を選択してください')
    end

    it 'ランチプランの予定金額が必須であること' do
      @plan.lunch_price = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include('ランチの予定金額を入力してください', 'ランチの予定金額は--以外を選択してください')
    end

    it 'ランチプランの予定金額は--が選択されていると保存ができないこと' do
      @plan.lunch_price_id = 1
      @plan.valid?
      expect(@plan.errors.full_messages).to include('ランチの予定金額は--以外を選択してください')
    end

    it '午後のプラン名が必須であること' do
      @plan.afternoon_title = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include('午後のプラン名を入力してください')
    end

    it '午後のプランの説明が必須であること' do
      @plan.afternoon_description = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include('午後のプランの説明を入力してください')
    end

    it '午後のプランのジャンルが必須であること' do
      @plan.afternoon_type = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include('午後のジャンルを入力してください', '午後のジャンルは--以外を選択してください')
    end

    it '午後のプランのジャンルは--が選択されていると保存ができないこと' do
      @plan.afternoon_type_id = 1
      @plan.valid?
      expect(@plan.errors.full_messages).to include('午後のジャンルは--以外を選択してください')
    end

    it '午後のプランの予定金額が必須であること' do
      @plan.afternoon_price = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include('午後の予定金額を入力してください', '午後の予定金額は--以外を選択してください')
    end

    it '午後のプランの予定金額は--が選択されていると保存ができないこと' do
      @plan.afternoon_price_id = 1
      @plan.valid?
      expect(@plan.errors.full_messages).to include('午後の予定金額は--以外を選択してください')
    end

    it '午後のプランの予定時間が必須であること' do
      @plan.afternoon_period = nil
      @plan.valid?
      expect(@plan.errors.full_messages).to include('午後の予定時間を入力してください', '午後の予定時間は--以外を選択してください')
    end

    it '午後のプランの予定時間は--が選択されていると保存ができないこと' do
      @plan.afternoon_period_id = 1
      @plan.valid?
      expect(@plan.errors.full_messages).to include('午後の予定時間は--以外を選択してください')
    end
  end
end
