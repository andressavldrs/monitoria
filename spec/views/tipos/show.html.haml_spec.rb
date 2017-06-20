require 'rails_helper'

RSpec.describe "tipos/show", type: :view do
  before(:each) do
    @tipo = assign(:tipo, Tipo.create!(
      :descricao => "Descricao"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descricao/)
  end
end
