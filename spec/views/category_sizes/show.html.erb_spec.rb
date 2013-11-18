require 'spec_helper'

describe "category_sizes/show" do
  before(:each) do
    @category_size = assign(:category_size, stub_model(CategorySize,
      :category => nil,
      :size => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
