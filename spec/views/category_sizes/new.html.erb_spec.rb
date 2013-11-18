require 'spec_helper'

describe "category_sizes/new" do
  before(:each) do
    assign(:category_size, stub_model(CategorySize,
      :category => nil,
      :size => nil
    ).as_new_record)
  end

  it "renders new category_size form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", category_sizes_path, "post" do
      assert_select "input#category_size_category[name=?]", "category_size[category]"
      assert_select "input#category_size_size[name=?]", "category_size[size]"
    end
  end
end
