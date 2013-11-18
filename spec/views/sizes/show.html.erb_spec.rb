require 'spec_helper'

describe "sizes/show" do
  before(:each) do
    @size = assign(:size, stub_model(Size,
      :name => "Name",
      :code => "Code",
      :category => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Code/)
    rendered.should match(//)
  end
end
