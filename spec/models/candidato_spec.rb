require 'rails_helper'

RSpec.describe Candidato, type: :model do
  describe "validates" do
    it "be valid" do
      expect(FactoryGirl.create(:candidato)).to be_valid
    end
    describe "raise record invalid" do

      it "when Nome is blank" do
        expect { create(:candidato, nome: nil) }.to raise_error(ActiveRecord::RecordInvalid)
      end

      it "when Matricula is blank" do
        expect { create(:candidato, matricula: nil) }.to raise_error(ActiveRecord::RecordInvalid)
      end

      it "when Email is blank" do
        expect { create(:candidato, email: nil) }.to raise_error(ActiveRecord::RecordInvalid)
      end

      it "when IRA is less than 0" do
        expect { create(:candidato, ira: -1) }.to raise_error(ActiveRecord::RecordInvalid)
      end

      it "when IRA is greater than 5" do
        expect { create(:candidato, ira: 6) }.to raise_error(ActiveRecord::RecordInvalid)
      end
    end
  end
end
