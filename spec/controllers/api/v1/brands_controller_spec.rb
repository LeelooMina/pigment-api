require 'rails_helper'

RSpec.describe Api::V1::BrandsController, type: :controller do
  let(:valid_brand_params) do
    {
      name: "Test Brand",
      description: "A test watercolor brand",
      website: "https://testbrand.com",
      country: "USA"
    }
  end

  describe "GET #index" do
    it "returns all brands" do
      brand = Brand.create!(valid_brand_params)
      get :index
      expect(response).to have_http_status(:ok)
      json_response = JSON.parse(response.body)
      expect(json_response.length).to eq(1)
      expect(json_response[0]['name']).to eq('Test Brand')
    end
  end

  describe "GET #show" do
    it "returns the requested brand" do
      brand = Brand.create!(valid_brand_params)
      get :show, params: { id: brand.id }
      expect(response).to have_http_status(:ok)
      json_response = JSON.parse(response.body)
      expect(json_response['name']).to eq('Test Brand')
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new brand" do
        expect {
          post :create, params: { brand: valid_brand_params }
        }.to change(Brand, :count).by(1)
        expect(response).to have_http_status(:created)
      end
    end

    context "with invalid params" do
      it "returns errors" do
        post :create, params: { brand: { name: "" } }
        expect(response).to have_http_status(:unprocessable_entity)
        json_response = JSON.parse(response.body)
        expect(json_response).to have_key('name')
      end
    end
  end
end