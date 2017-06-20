require 'rails_helper'

RSpec.describe "ofertas/new", type: :view do
  before(:each) do
    assign(:oferta, Oferta.new(
      :turma => "MyString"
    ))
  end

  it "renders new oferta form" do
    render

    assert_select "form[action=?][method=?]", ofertas_path, "post" do

      assert_select "input[name=?]", "oferta[turma]"
    end
  end
end
