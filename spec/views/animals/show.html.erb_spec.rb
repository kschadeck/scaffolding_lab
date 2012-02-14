require 'spec_helper'

describe "animals/show.html.erb" do
  before(:each) do
    @animal = assign(:animal, stub_model(Animal,
      :name => "Name",
      :owner => "Owner",
      :vet_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Owner/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
