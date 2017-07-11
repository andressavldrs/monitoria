require 'rails_helper'

RSpec.describe "candidatos/edit", type: :view do
  before(:each) do
    @candidato = assign(:candidato, Candidato.create!(
      :matricula => 100000,
      :nome => "John Smith",
      :semestre => 3,
      :ira => 3,
      :email => "MyString",
      :oferta_id => 1,
      :tipo_id => 1 
    ))
  end

  it "renders the edit candidato form" do
    render

    assert_select "form[action=?][method=?]", candidato_path(@candidato), "post" do

      assert_select "input[name=?]", "candidato[matricula]"

      assert_select "input[name=?]", "candidato[nome]"

      assert_select "input[name=?]", "candidato[semestre]"

      assert_select "input[name=?]", "candidato[ira]"

      assert_select "input[name=?]", "candidato[email]"

      assert_select "input[name=?]", "candidato[oferta_id]"

      assert_select "input[name=?]", "candidato[tipo_id]"
    end
  end
end
