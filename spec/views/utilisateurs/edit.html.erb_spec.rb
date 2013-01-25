require 'spec_helper'

describe "utilisateurs/edit" do
  before(:each) do
    @utilisateur = assign(:utilisateur, stub_model(Utilisateur,
      :nom => "MyString",
      :prenom => "MyString",
      :identifiant => 1,
      :courriel => "MyString",
      :titre => "MyString",
      :numero_telephone => "MyString",
      :numero_cellulaire => "MyString",
      :message_texte_permis => false,
      :niveau => 3

    ))
  end

  it "renders the edit utilisateur form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => utilisateurs_path(@utilisateur), :method => "post" do
      assert_select "input#utilisateur_nom", :name => "utilisateur[nom]"
      assert_select "input#utilisateur_prenom", :name => "utilisateur[prenom]"
      assert_select "input#utilisateur_courriel", :name => "utilisateur[courriel]"
      assert_select "input#utilisateur_titre", :name => "utilisateur[titre]"
      assert_select "input#utilisateur_numero_telephone", :name => "utilisateur[numero_telephone]"
      assert_select "input#utilisateur_numero_cellulaire", :name => "utilisateur[numero_cellulaire]"
      assert_select "input#utilisateur_message_texte_permis", :name => "utilisateur[message_texte_permis]"
      assert_select "input#utilisateur_niveau", :name => "utilisateur[niveau]"
    end
  end
end
