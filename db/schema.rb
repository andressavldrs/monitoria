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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170617200227) do

  create_table "candidatos", force: :cascade do |t|
    t.integer "matricula"
    t.string "nome"
    t.integer "semestre"
    t.decimal "ira"
    t.string "email"
    t.integer "oferta_id"
    t.integer "tipo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["oferta_id"], name: "index_candidatos_on_oferta_id", unique: true
    t.index ["tipo_id"], name: "index_candidatos_on_tipo_id", unique: true
  end

  create_table "disciplinas", force: :cascade do |t|
    t.integer "codigo"
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ofertas", force: :cascade do |t|
    t.string "turma"
    t.integer "disciplina_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina_id"], name: "index_ofertas_on_disciplina_id", unique: true
  end

  create_table "tipos", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
