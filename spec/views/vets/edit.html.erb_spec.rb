require 'spec_helper'

describe "vets/edit.html.erb" do
  before(:each) do
    @vet = assign(:vet, stub_model(Vet,
      :name => "MyString",
      :address => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit vet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vets_path(@vet), :method => "post" do
      assert_select "input#vet_name", :name => "vet[name]"
      assert_select "input#vet_address", :name => "vet[address]"
      assert_select "input#vet_phone", :name => "vet[phone]"
    end
  end
end
