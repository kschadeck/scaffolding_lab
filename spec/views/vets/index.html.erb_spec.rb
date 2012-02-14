require 'spec_helper'

describe "vets/index.html.erb" do
  before(:each) do
    assign(:vets, [
      stub_model(Vet,
        :name => "Name",
        :address => "Address",
        :phone => "Phone"
      ),
      stub_model(Vet,
        :name => "Name",
        :address => "Address",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of vets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
