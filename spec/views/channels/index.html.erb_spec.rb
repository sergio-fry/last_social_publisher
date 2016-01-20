require 'rails_helper'

RSpec.describe "channels/index", type: :view do
  before(:each) do
    assign(:channels, [
      Channel.create!(
        :title => "Title",
        :publisher_klass => "Publisher Klass",
        :credentials => "MyText"
      ),
      Channel.create!(
        :title => "Title",
        :publisher_klass => "Publisher Klass",
        :credentials => "MyText"
      )
    ])
  end

  it "renders a list of channels" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Publisher Klass".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
