class Utilisateur < ActiveRecord::Base
  attr_accessible :identifiant, :nom, :prenom, :titre, :numero_telephone, :numero_cellulaire, :courriel, :message_texte_permis, :niveau

  #Identifiant de l'établissement

end