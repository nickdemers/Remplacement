require 'spec_helper'

describe "utilisateurs/index" do
  before(:each) do
    assign(:utilisateurs, [
      stub_model(Utilisateur,
        :nom => "Nom",
        :prenom => "Prenom",
        :titre => "Titre"
      ),
      stub_model(Utilisateur,
        :nom => "Nom",
        :prenom => "Prenom",
        :identifiant => 1,
        :titre => "Titre"
      )

    ])
  end

  it "renders a list of utilisateurs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
    assert_select "tr>td", :text => "Prenom".to_s, :count => 2
    assert_select "tr>td", :text => "Titre".to_s, :count => 2
  end
end
