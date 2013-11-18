require 'spec_helper'

describe "sizes/new" do
  before(:each) do
    assign(:size, stub_model(Size,
      :name => "MyString",
      :code => "MyString",
      :category => nil
    ).as_new_record)
  end

  it "renders new size form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sizes_path, "post" do
      assert_select "input#size_name[name=?]", "size[name]"
      assert_select "input#size_code[name=?]", "size[code]"
      assert_select "input#size_category[name=?]", "size[category]"
    end
  end
end
