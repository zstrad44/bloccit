require 'rails_helper'

RSpec.describe AdvertisementsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    it "assigns [my_advertisement] to @advertisements" do
      get :index

      expect(assigns(:advertisement)).to eq([my_advertisement])
    end
  end

  describe "GET #show" do
    it "returns http success" do
# #16
      get :show, {id: my_advertisement.id}
      expect(response).to have_http_status(:success)
    end
    it "renders the #show view" do
# #17
      get :show, {id: my_advertisement.id}
      expect(response).to render_template :show
    end

    it "assigns my_advertisement to @advertisement" do
      get :show, {id: my_advertisement.id}
# #18
      expect(assigns(:advertisement)).to eq(my_advertisement)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "renders the #new view" do
      get :new
      expect(response).to render_template :new
    end

    it "instantiates @advertisement" do
      get :new
      expect(assigns(:advertisement)).not_to be_nil
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end

    it "increases the number of Advertisement by 1" do
      expect{advertisement:create, advertisement: {title: RandomData.random_sentence, body: RandomData.random_paragraph}}.to change(Advertisement,:count).by(1)
    end

    it "assigns the new advertisement to @advertisement" do
      advertisement :create, advertisement: {title: RandomData.random_sentence, body: RandomData.random_paragraph}
      expect(assigns(:advertisement)).to eq Advertisement.last
    end

    it "redirects to the new advertisement" do
      advertisement :create, advertisement: {title: RandomData.random_sentence, body: RandomData.random_paragraph}
      expect(response).to redirect_to Advertisement.last
    end
  end

end
