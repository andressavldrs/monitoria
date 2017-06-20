require 'rails_helper'

RSpec.describe "Selecionados", type: :request do
  describe "GET /selecionados" do
    it "works! (now write some real specs)" do
      get selecionados_path
      expect(response).to have_http_status(200)
    end
  end
end
