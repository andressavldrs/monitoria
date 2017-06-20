require 'rails_helper'

RSpec.describe "ofertas/show", type: :view do
  before(:each) do
    @oferta = assign(:oferta, Oferta.create!(
      :turma => "Turma"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Turma/)
  end
end
