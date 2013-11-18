require 'spec_helper'

describe "category_sizes/index" do
  before(:each) do
    assign(:category_sizes, [
      stub_model(CategorySize,
        :category => nil,
        :size => nil
      ),
      stub_model(CategorySize,
        :category => nil,
        :size => nil
      )
    ])
  end

  it "renders a list of category_sizes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
