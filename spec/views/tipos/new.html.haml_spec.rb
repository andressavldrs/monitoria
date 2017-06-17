require 'rails_helper'

RSpec.describe "tipos/new", type: :view do
  before(:each) do
    assign(:tipo, Tipo.new(
      :descricao => "MyString"
    ))
  end

  it "renders new tipo form" do
    render

    assert_select "form[action=?][method=?]", tipos_path, "post" do

      assert_select "input[name=?]", "tipo[descricao]"
    end
  end
end
