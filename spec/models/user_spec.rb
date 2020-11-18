require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  describe 'ユーザー新規登録' do
    it 'nicknameが必須であること' do
      @user.nickname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include('ニックネームを入力してください')
    end

    it 'emailが必須であることい' do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include('Eメールを入力してください')
    end
    it 'emailが一意性であること' do
      @user.save
      another_user = FactoryBot.build(:user)
      another_user.email = @user.email
      another_user.valid?
      expect(another_user.errors.full_messages).to include('Eメールはすでに存在します')
    end
    it 'emailは、@を含む必要があること' do
      @user.email = 'abccom'
      @user.valid?
      expect(@user.errors.full_messages).to include('Eメールは不正な値です')
    end
    it 'passwordが必須であること' do
      @user.password = ''
      @user.valid?
      expect(@user.errors.full_messages).to include('パスワードを入力してください', 'パスワードは不正な値です', 'パスワード（確認用）とパスワードの入力が一致しません')
    end
    it 'passwordは6文字以上での入力が必須であること' do
      @user.password = '00000'
      @user.password_confirmation = '00000'
      @user.valid?
      expect(@user.errors.full_messages).to include('パスワードは6文字以上で入力してください')
    end
    it 'passwordは、半角英数字混合での入力が必須であること' do
      @user.password = '111111'
      @user.valid?
      expect(@user.errors.full_messages).to include('パスワード（確認用）とパスワードの入力が一致しません')
    end
    it 'passwordは、確認用を含めて2回入力すること' do
      @user.password_confirmation = ''
      @user.valid?
      expect(@user.errors.full_messages).to include('パスワード（確認用）とパスワードの入力が一致しません')
    end
    it 'passwordとpassword_confirmationは、値の一致が必須であること' do
      @user.password_confirmation = 'aaa111'
      @user.valid?
      expect(@user.errors.full_messages).to include('パスワード（確認用）とパスワードの入力が一致しません')
    end
  end
end
