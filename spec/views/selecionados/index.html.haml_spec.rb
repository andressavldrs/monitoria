require 'rails_helper'

RSpec.describe "selecionados/index", type: :view do
  before(:each) do
    assign(:selecionados, [
      Selecionado.create!(
        :disciplina => nil,
        :oferta => nil
      ),
      Selecionado.create!(
        :disciplina => nil,
        :oferta => nil
      )
    ])
  end

  it "renders a list of selecionados" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
