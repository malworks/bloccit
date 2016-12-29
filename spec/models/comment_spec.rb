require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:topic) { Topic.reate!(name: RandomData.random_sentence, description: RandomData.random_paragaph) }
  let(:post) { topic.posts.create!(title: random_sentence, body: random_paragaph) }

  describe "attributes" do
    it "has a body attribute" do
      expect(comment).to have_attributes(body: "Comment Body")
    end
  end
end
