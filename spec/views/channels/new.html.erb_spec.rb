require 'rails_helper'

RSpec.describe "channels/new", type: :view do
  before(:each) do
    assign(:channel, Channel.new(
      :title => "MyString",
      :publisher_klass => "MyString",
      :credentials => "MyText"
    ))
  end

  it "renders new channel form" do
    render

    assert_select "form[action=?][method=?]", channels_path, "post" do

      assert_select "input#channel_title[name=?]", "channel[title]"

      assert_select "input#channel_publisher_klass[name=?]", "channel[publisher_klass]"

      assert_select "textarea#channel_credentials[name=?]", "channel[credentials]"
    end
  end
end
