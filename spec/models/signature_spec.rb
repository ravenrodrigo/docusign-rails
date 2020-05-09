require 'rails_helper'

RSpec.describe Signature, type: :model do
  describe "database table" do
    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:signee_id).of_type(:integer) }
    it { is_expected.to have_db_column(:position_id).of_type(:integer) }
  end

  describe Signature do
    it { should belong_to(:signee).class_name('Signee') }
    it { should belong_to(:position).class_name('Position') }
  end
  
  describe "validations" do
    subject (:signature) { build(:signature) }
    it { should validate_presence_of(:signee_id) }
    it { should validate_presence_of(:position_id) }
  end
end
