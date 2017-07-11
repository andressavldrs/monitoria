require 'rails_helper'

RSpec.describe Tipo, type: :model do
  describe "validates" do
    it "be valid" do
      expect(create(:tipo)).to be_valid
    end
    describe "raise record invalid" do

      it "when Descricao is blank" do
        expect { create(:tipo, descricao: nil) }.to raise_error(ActiveRecord::RecordInvalid)
      end
    end
  end
end
