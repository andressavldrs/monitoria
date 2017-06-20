require 'rails_helper'

RSpec.describe "selecionados/show", type: :view do
  before(:each) do
    @selecionado = assign(:selecionado, Selecionado.create!(
      :disciplina => nil,
      :oferta => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
