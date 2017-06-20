require 'rails_helper'

RSpec.describe "tipos/edit", type: :view do
  before(:each) do
    @tipo = assign(:tipo, Tipo.create!(
      :descricao => "MyString"
    ))
  end

  it "renders the edit tipo form" do
    render

    assert_select "form[action=?][method=?]", tipo_path(@tipo), "post" do

      assert_select "input[name=?]", "tipo[descricao]"
    end
  end
end
