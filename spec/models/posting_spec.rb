require 'rails_helper'

RSpec.describe Posting, type: :model do
  it { should belong_to(:post) }
  it { should validate_presence_of(:link) }
end
