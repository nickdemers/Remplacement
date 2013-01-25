require 'spec_helper'

describe "disponibilites/show" do
  before(:each) do
    @disponibilite = assign(:disponibilite, stub_model(Disponibilite,
      :id_utilisateur => 1,
      :id_event_calendar => "Id Event Calendar",
      :id_utilisateur_remplacant => 2,
      :statut => "Statut"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Id Event Calendar/)
    rendered.should match(/2/)
    rendered.should match(/Statut/)
  end
end
