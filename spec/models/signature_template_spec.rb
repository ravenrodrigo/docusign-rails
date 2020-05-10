require 'rails_helper'

RSpec.describe SignatureTemplate, type: :model do
  describe "database table" do
    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:user_id).of_type(:integer) }
    it { is_expected.to have_db_column(:file).of_type(:binary) }
  end

  describe SignatureTemplate do
    it { should belong_to(:user).class_name('User') }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:user_id) }
    it { is_expected.to validate_presence_of(:file) }
    it { is_expected.to validate_presence_of(:created_at) }
    it { is_expected.to validate_presence_of(:updated_at) }
  end
end
