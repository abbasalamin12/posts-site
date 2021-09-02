require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe 'get /index' do
    it 'shows the index page' do
      get :index
      expect(response).to be_success
    end
  end

  context 'get show' do
    it 'shows the post' do

    end
  end

  context 'patch update' do
    it 'updates the post' do

    end
  end

  context 'post delete' do
    it 'deletes the post' do

    end
  end
end
