require "rails_helper"

RSpec.describe OfertasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ofertas").to route_to("ofertas#index")
    end

    it "routes to #new" do
      expect(:get => "/ofertas/new").to route_to("ofertas#new")
    end

    it "routes to #show" do
      expect(:get => "/ofertas/1").to route_to("ofertas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ofertas/1/edit").to route_to("ofertas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ofertas").to route_to("ofertas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ofertas/1").to route_to("ofertas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ofertas/1").to route_to("ofertas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ofertas/1").to route_to("ofertas#destroy", :id => "1")
    end

  end
end
