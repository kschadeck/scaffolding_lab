require 'spec_helper'

describe "animals/edit.html.erb" do
  before(:each) do
    @animal = assign(:animal, stub_model(Animal,
      :name => "MyString",
      :owner => "MyString",
      :vet_id => 1
    ))
  end

  it "renders the edit animal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => animals_path(@animal), :method => "post" do
      assert_select "input#animal_name", :name => "animal[name]"
      assert_select "input#animal_owner", :name => "animal[owner]"
      assert_select "input#animal_vet_id", :name => "animal[vet_id]"
    end
  end
end
