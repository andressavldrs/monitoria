require 'rails_helper'

RSpec.describe "candidatos/show", type: :view do
  before(:each) do
    @candidato = assign(:candidato, Candidato.create!(
      :matricula => 2,
      :nome => "Nome",
      :semestre => 3,
      :ira => 4,
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Email/)
  end
end
