require 'rails_helper'

RSpec.describe "selecionados/new", type: :view do
  before(:each) do
    assign(:selecionado, Selecionado.new(
      :disciplina => nil,
      :oferta => nil
    ))
  end

  it "renders new selecionado form" do
    render

    assert_select "form[action=?][method=?]", selecionados_path, "post" do

      assert_select "input[name=?]", "selecionado[disciplina_id]"

      assert_select "input[name=?]", "selecionado[oferta_id]"
    end
  end
end
