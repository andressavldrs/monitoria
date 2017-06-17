require 'rails_helper'

RSpec.describe "candidatos/edit", type: :view do
  before(:each) do
    @candidato = assign(:candidato, Candidato.create!(
      :matricula => 1,
      :nome => "MyString",
      :semestre => 1,
      :ira => 1,
      :email => "MyString"
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
    end
  end
end
