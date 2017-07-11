require 'rails_helper'

RSpec.describe Oferta, type: :model do
  describe "validates" do
    it "be valid" do
      expect(FactoryGirl.create(:oferta)).to be_valid
    end
    describe "raise record invalid" do

      it "when Disciplina is blank" do
        expect { create(:oferta, disciplina_id: nil) }.to raise_error(ActiveRecord::RecordInvalid)
      end

      it "when Turma is blank" do
        expect { create(:oferta, turma: nil) }.to raise_error(ActiveRecord::RecordInvalid)
      end
    end
  end
end
