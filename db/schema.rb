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

ActiveRecord::Schema.define(:version => 20130813030534) do

  create_table "agronomia", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "agronomiadecanatos", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "agronomiagaleras", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "agronomiaquimicas", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "artes", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "auditoriummarmols", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cafetines", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comedorues", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "derechos", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "economia1s", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "economia2s", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "economia3s", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "economia4s", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "economia5s", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "economia6s", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "humanidades1s", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "humanidades2s", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "humanidades3s", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mecanicacomplejos", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "medicinas", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "odontologia1s", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "odontologia2s", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "odontologia3s", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "odontologiaimprenta", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "periodismos", :force => true do |t|
    t.datetime "Fecha_hora"
    t.integer  "WhTot"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
