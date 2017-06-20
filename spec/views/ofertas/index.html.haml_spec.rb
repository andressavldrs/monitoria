require 'rails_helper'

RSpec.describe "ofertas/index", type: :view do
  before(:each) do
    assign(:ofertas, [
      Oferta.create!(
        :turma => "Turma"
      ),
      Oferta.create!(
        :turma => "Turma"
      )
    ])
  end

  it "renders a list of ofertas" do
    render
    assert_select "tr>td", :text => "Turma".to_s, :count => 2
  end
end
