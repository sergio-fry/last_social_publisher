require 'rails_helper'

RSpec.describe "channels/show", type: :view do
  before(:each) do
    @channel = assign(:channel, Channel.create!(
      :title => "Title",
      :publisher_klass => "Publisher Klass",
      :credentials => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Publisher Klass/)
    expect(rendered).to match(/MyText/)
  end
end
