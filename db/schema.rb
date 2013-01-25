# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130119194651) do

  create_table "disponibilites", :force => true do |t|
    t.integer  "id_utilisateur"
    t.string   "id_event_calendar"
    t.integer  "id_utilisateur_remplacant"
    t.string   "statut"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "utilisateurs", :primary_key => "identifiant", :force => true do |t|
    t.string   "nom",                                :null => false
    t.string   "prenom",                             :null => false
    t.string   "courriel"
    t.string   "titre"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "numero_telephone",     :limit => 45
    t.string   "numero_cellulaire",    :limit => 45
    t.boolean  "message_texte_permis"
    t.integer  "niveau"
  end

end
