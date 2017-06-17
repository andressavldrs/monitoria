require 'rails_helper'

RSpec.describe "Tipos", type: :request do
  describe "GET /tipos" do
    it "works! (now write some real specs)" do
      get tipos_path
      expect(response).to have_http_status(200)
    end
  end
end
