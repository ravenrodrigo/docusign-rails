require 'rails_helper'

RSpec.describe Signee, type: :model do
  describe "database table" do
    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:user_id).of_type(:integer) }
    it { is_expected.to have_db_column(:document_id).of_type(:integer) }
    it { is_expected.to have_db_column(:role).of_type(:integer) }
  end

  describe Signee do
    it { should have_one(:document).class_name('Document') }
  end

  describe "validations" do
    subject(:signee) { build(:signee) }
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:document_id) }
    it { should validate_presence_of(:role) }
  end
end
