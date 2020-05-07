require 'rails_helper'

RSpec.describe Position, type: :model do
  describe "database table" do
    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:document_id).of_type(:integer) }
    it { is_expected.to have_db_column(:x).of_type(:float) }
    it { is_expected.to have_db_column(:y).of_type(:float) }
  end

  describe "associations" do
    subject(:position) { build(:position) }
    it { should belong_to(:document).class_name('Document') }
  end

  describe "validations" do
    subject(:position) { build(:position) }
    it { should validate_presence_of(:document_id) }
    it { should validate_numericality_of(:x) }
    it { should validate_numericality_of(:y) }
  end
end
