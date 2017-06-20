require 'rails_helper'

RSpec.describe "disciplinas/show", type: :view do
  before(:each) do
    @disciplina = assign(:disciplina, Disciplina.create!(
      :codigo => 2,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Nome/)
  end
end
