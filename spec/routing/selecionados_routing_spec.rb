require "rails_helper"

RSpec.describe SelecionadosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/selecionados").to route_to("selecionados#index")
    end

    it "routes to #new" do
      expect(:get => "/selecionados/new").to route_to("selecionados#new")
    end

    it "routes to #show" do
      expect(:get => "/selecionados/1").to route_to("selecionados#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/selecionados/1/edit").to route_to("selecionados#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/selecionados").to route_to("selecionados#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/selecionados/1").to route_to("selecionados#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/selecionados/1").to route_to("selecionados#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/selecionados/1").to route_to("selecionados#destroy", :id => "1")
    end

  end
end
