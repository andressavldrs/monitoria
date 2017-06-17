require 'rails_helper'

RSpec.describe "Ofertas", type: :request do
  describe "GET /ofertas" do
    it "works! (now write some real specs)" do
      get ofertas_path
      expect(response).to have_http_status(200)
    end
  end
end
