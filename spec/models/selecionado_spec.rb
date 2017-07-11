require 'rails_helper'

RSpec.describe Selecionado, type: :model do
  describe "validates" do
    it "be valid" do
      expect(FactoryGirl.create(:selecionado)).to be_valid
    end
    
    describe "raise record invalid" do

      it "when Candidato is blank" do
        expect { create(:selecionado, candidato_id: nil) }.to raise_error(ActiveRecord::RecordInvalid)
      end
    end
  end
end
