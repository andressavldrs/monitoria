require 'rails_helper'

RSpec.describe "ofertas/edit", type: :view do
  before(:each) do
    @oferta = assign(:oferta, Oferta.create!(
      :turma => "MyString"
    ))
  end

  it "renders the edit oferta form" do
    render

    assert_select "form[action=?][method=?]", oferta_path(@oferta), "post" do

      assert_select "input[name=?]", "oferta[turma]"
    end
  end
end
