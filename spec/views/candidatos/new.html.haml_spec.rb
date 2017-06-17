require 'rails_helper'

RSpec.describe "candidatos/new", type: :view do
  before(:each) do
    assign(:candidato, Candidato.new(
      :matricula => 1,
      :nome => "MyString",
      :semestre => 1,
      :ira => 1,
      :email => "MyString"
    ))
  end

  it "renders new candidato form" do
    render

    assert_select "form[action=?][method=?]", candidatos_path, "post" do

      assert_select "input[name=?]", "candidato[matricula]"

      assert_select "input[name=?]", "candidato[nome]"

      assert_select "input[name=?]", "candidato[semestre]"

      assert_select "input[name=?]", "candidato[ira]"

      assert_select "input[name=?]", "candidato[email]"
    end
  end
end
