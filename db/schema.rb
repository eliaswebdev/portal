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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160615124855) do

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255, null: false
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size",    limit: 4
    t.integer  "assetable_id",      limit: 4
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width",             limit: 4
    t.integer  "height",            limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "documentos", force: :cascade do |t|
    t.integer  "noticia_id", limit: 4
    t.string   "nome",       limit: 255
    t.text     "descricao",  limit: 65535
    t.string   "arquivo",    limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "documentos", ["noticia_id"], name: "index_documentos_on_noticia_id", using: :btree

  create_table "editorias", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.boolean  "status"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "marcadores", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "marcadores_noticias", force: :cascade do |t|
    t.integer "marcador_id", limit: 4
    t.integer "noticia_id",  limit: 4
  end

  add_index "marcadores_noticias", ["marcador_id"], name: "index_marcadores_noticias_on_marcador_id", using: :btree
  add_index "marcadores_noticias", ["noticia_id"], name: "index_marcadores_noticias_on_noticia_id", using: :btree

  create_table "noticias", force: :cascade do |t|
    t.integer  "user_id",         limit: 4
    t.integer  "editoria_id",     limit: 4
    t.string   "titulo",          limit: 255
    t.string   "subtitulo",       limit: 255
    t.text     "conteudo",        limit: 65535
    t.datetime "data_publicacao"
    t.string   "imagem",          limit: 255
    t.boolean  "status"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "noticias", ["editoria_id"], name: "index_noticias_on_editoria_id", using: :btree
  add_index "noticias", ["user_id"], name: "index_noticias_on_user_id", using: :btree

  create_table "permissions", force: :cascade do |t|
    t.integer  "role_id",    limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "permissions", ["role_id"], name: "index_permissions_on_role_id", using: :btree
  add_index "permissions", ["user_id"], name: "index_permissions_on_user_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id",       limit: 4
    t.string   "avatar",        limit: 255
    t.date     "date_of_birth"
    t.string   "gender",        limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "value",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "telefones", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "operadora",  limit: 255
    t.integer  "ddd",        limit: 4
    t.string   "numero",     limit: 255
    t.boolean  "whatsapp"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "telefones", ["user_id"], name: "index_telefones_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "documentos", "noticias"
  add_foreign_key "marcadores_noticias", "marcadores"
  add_foreign_key "marcadores_noticias", "noticias"
  add_foreign_key "noticias", "editorias"
  add_foreign_key "noticias", "users"
  add_foreign_key "permissions", "roles"
  add_foreign_key "permissions", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "telefones", "users"
end
