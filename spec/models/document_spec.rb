require 'rails_helper'

RSpec.describe Document, type: :model do
  describe "database table" do
    it { is_expected.to have_db_column(:file).of_type(:binary) }
    it { is_expected.to have_db_column(:status).of_type(:integer) }
    it { is_expected.to have_db_column(:expiration_date).of_type(:datetime) }
  end
  
  describe "validations" do
    subject(:document) { build(:document) }
    it { is_expected.to validate_presence_of(:status) }
    it { is_expected.to validate_presence_of(:expiration_date) }
  end

  describe "attachments" do
   it "is valid" do
     subject.file.attach(io: File.open(fixture_path + '/dummy.pdf'), 
                         filename: 'attachment.pdf', 
                         content_type: 'file/pdf')  
     expect(subject.file).to be_attached
   end
  end
end
