require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'validation tests' do
    it 'ensures title presence' do
      post = Post.new(content:"Example Content").save
      expect(post).to eq(false)
    end

    it 'should save successfully' do
      post = Post.new(title: "Example Title", content:"Example Content").save
      expect(post).to eq(true)
    end
  end
end
