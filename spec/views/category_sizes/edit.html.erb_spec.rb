require 'spec_helper'

describe "category_sizes/edit" do
  before(:each) do
    @category_size = assign(:category_size, stub_model(CategorySize,
      :category => nil,
      :size => nil
    ))
  end

  it "renders the edit category_size form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", category_size_path(@category_size), "post" do
      assert_select "input#category_size_category[name=?]", "category_size[category]"
      assert_select "input#category_size_size[name=?]", "category_size[size]"
    end
  end
end
