require 'rails_helper'

RSpec.describe DeveloperPublisher do
  let(:publisher) { DeveloperPublisher.new }
  let(:post) { FactoryGirl.create(:post) }

  describe "#publish" do
    subject { publisher.publish(post) }

    it { expect{ subject }.to change{ post.postings.count }.by(1) }
    it { should be_a(Posting) }
  end
end

