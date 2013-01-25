require 'spec_helper'

describe "disponibilites/edit" do
  before(:each) do
    @disponibilite = assign(:disponibilite, stub_model(Disponibilite,
      :id_utilisateur => 1,
      :id_event_calendar => "MyString",
      :id_utilisateur_remplacant => 1,
      :statut => "MyString"
    ))
  end

  it "renders the edit disponibilite form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => disponibilites_path(@disponibilite), :method => "post" do
      assert_select "input#disponibilite_id_utilisateur", :name => "disponibilite[id_utilisateur]"
      assert_select "input#disponibilite_id_event_calendar", :name => "disponibilite[id_event_calendar]"
      assert_select "input#disponibilite_id_utilisateur_remplacant", :name => "disponibilite[id_utilisateur_remplacant]"
      assert_select "input#disponibilite_statut", :name => "disponibilite[statut]"
    end
  end
end
