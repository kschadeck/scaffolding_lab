require "spec_helper"

describe VetsController do
  describe "routing" do

    it "routes to #index" do
      get("/vets").should route_to("vets#index")
    end

    it "routes to #new" do
      get("/vets/new").should route_to("vets#new")
    end

    it "routes to #show" do
      get("/vets/1").should route_to("vets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/vets/1/edit").should route_to("vets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/vets").should route_to("vets#create")
    end

    it "routes to #update" do
      put("/vets/1").should route_to("vets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/vets/1").should route_to("vets#destroy", :id => "1")
    end

  end
end
