require 'rails_helper'
describe ArticlesController do
  describe "GET #index" do
    it "brings up all the articles" do
      Article.create(title: "kutte landar")
      Article.create(title: "kutte landar2")
      get :index

      expect(assigns(:articles).count).to eq 2
      expect(assigns(:articles)[0].title).to eq "kutte landar"
      expect(assigns(:articles)[1].title).to eq "kutte landar2"
    end

    it "if no articles"do
      get :index

      expect(assigns(:articles).count).to eq 0
    end
  end


 describe "POST #index" do
    it "creates a new article" do

      post :create ,:article => {"title"=>"hey","text" =>"hvshv"}

      expect(assigns(:article).title).to eq "hey"
    end
 end


end

