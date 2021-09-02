require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  before(:each) do
    Post.create(title: "Post1", content:"content1")
    Post.create(title: "Post2", content:"content2")
    Post.create(title: "Post3", content:"content3")
  end
  
  describe 'get /index' do
    it 'shows the index page' do
      get :index
      expect(response.status).to eq(200)
    end
  end

  context 'get show' do
    it 'shows the post' do
      get :show, params: {id: Post.first.id}
      byebug
      expect(response.status).to eq(200)
    end
  end

  context 'patch update' do
    it 'updates the post' do
      expect(response.status).to eq(200)
    end
  end

  context 'post delete' do
    it 'deletes the post' do
      expect(response.status).to eq(200)
    end
  end
end
