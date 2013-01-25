class Disponibilite < ActiveRecord::Base
  attr_accessible :id_event_calendar, :id_utilisateur, :id_utilisateur_remplacant, :statut
end
