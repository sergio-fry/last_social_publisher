require 'rails_helper'

RSpec.describe "channels/edit", type: :view do
  before(:each) do
    @channel = assign(:channel, Channel.create!(
      :title => "MyString",
      :publisher_klass => "MyString",
      :credentials => "MyText"
    ))
  end

  it "renders the edit channel form" do
    render

    assert_select "form[action=?][method=?]", channel_path(@channel), "post" do

      assert_select "input#channel_title[name=?]", "channel[title]"

      assert_select "input#channel_publisher_klass[name=?]", "channel[publisher_klass]"

      assert_select "textarea#channel_credentials[name=?]", "channel[credentials]"
    end
  end
end
