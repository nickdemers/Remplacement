require 'spec_helper'

describe "utilisateurs/show" do
  before(:each) do
    @utilisateur = assign(:utilisateur, stub_model(Utilisateur,
      :nom => "Nom",
      :prenom => "Prenom",
      :identifiant => 1,
      :courriel => "Courriel"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nom/)
    rendered.should match(/Prenom/)
    rendered.should match(/1/)
    rendered.should match(/Courriel/)
  end
end
