require 'spec_helper'

describe "vets/show.html.erb" do
  before(:each) do
    @vet = assign(:vet, stub_model(Vet,
      :name => "Name",
      :address => "Address",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Phone/)
  end
end
