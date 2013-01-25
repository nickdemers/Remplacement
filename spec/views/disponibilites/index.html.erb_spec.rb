require 'spec_helper'

describe "disponibilites/index" do
  before(:each) do
    assign(:disponibilites, [
      stub_model(Disponibilite,
        :id_utilisateur => 1,
        :id_event_calendar => "Id Event Calendar",
        :id_utilisateur_remplacant => 2,
        :statut => "Statut"
      ),
      stub_model(Disponibilite,
        :id_utilisateur => 1,
        :id_event_calendar => "Id Event Calendar",
        :id_utilisateur_remplacant => 2,
        :statut => "Statut"
      )
    ])
  end

  it "renders a list of disponibilites" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Id Event Calendar".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Statut".to_s, :count => 2
  end
end
