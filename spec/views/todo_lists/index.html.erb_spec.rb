require 'spec_helper'

describe "todo_lists/index" do
  before(:each) do
    assign(:todo_lists, [
      stub_model(TodoList,
        :title => "Title",
        :description => "MyText"
      ),
      stub_model(TodoList,
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of todo_lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "ul>li", :text => "Title".to_s, :count => 0
    assert_select "ul>li", :text => "MyText".to_s, :count => 0
  end
end
