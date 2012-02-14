require 'spec_helper'

describe "animals/index.html.erb" do
  before(:each) do
    assign(:animals, [
      stub_model(Animal,
        :name => "Name",
        :owner => "Owner",
        :vet_id => 1
      ),
      stub_model(Animal,
        :name => "Name",
        :owner => "Owner",
        :vet_id => 1
      )
    ])
  end

  it "renders a list of animals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Owner".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
