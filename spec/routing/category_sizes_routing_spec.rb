require "spec_helper"

describe CategorySizesController do
  describe "routing" do

    it "routes to #index" do
      get("/category_sizes").should route_to("category_sizes#index")
    end

    it "routes to #new" do
      get("/category_sizes/new").should route_to("category_sizes#new")
    end

    it "routes to #show" do
      get("/category_sizes/1").should route_to("category_sizes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/category_sizes/1/edit").should route_to("category_sizes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/category_sizes").should route_to("category_sizes#create")
    end

    it "routes to #update" do
      put("/category_sizes/1").should route_to("category_sizes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/category_sizes/1").should route_to("category_sizes#destroy", :id => "1")
    end

  end
end
