require 'rails_helper'

RSpec.describe User, type: :model do
  describe "database table" do
    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:first_name).of_type(:string) }
    it { is_expected.to have_db_column(:last_name).of_type(:string) }
    it { is_expected.to have_db_column(:email).of_type(:string) }
  end

  describe User do
    it { should have_many(:signees).class_name('Signee') }
  end

  describe "log in successfully"
end
