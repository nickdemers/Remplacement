require 'spec_helper'

describe "utilisateurs/new" do
  before(:each) do
    assign(:utilisateur, stub_model(Utilisateur,
      :nom => "MyString",
      :prenom => "MyString",
      :identifiant => 1,
      :courriel => "MyString"
    ).as_new_record)
  end

  it "renders new utilisateur form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => utilisateurs_path, :method => "post" do
      assert_select "input#utilisateur_nom", :name => "utilisateur[nom]"
      assert_select "input#utilisateur_prenom", :name => "utilisateur[prenom]"
      assert_select "input#utilisateur_courriel", :name => "utilisateur[courriel]"
    end
  end
end
