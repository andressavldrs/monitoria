require 'rails_helper'

RSpec.describe "selecionados/edit", type: :view do
  before(:each) do
    @selecionado = assign(:selecionado, Selecionado.create!(
      :disciplina => nil,
      :oferta => nil
    ))
  end

  it "renders the edit selecionado form" do
    render

    assert_select "form[action=?][method=?]", selecionado_path(@selecionado), "post" do

      assert_select "input[name=?]", "selecionado[disciplina_id]"

      assert_select "input[name=?]", "selecionado[oferta_id]"
    end
  end
end
