require 'rails_helper'

RSpec.describe "tipos/index", type: :view do
  before(:each) do
    assign(:tipos, [
      Tipo.create!(
        :descricao => "Descricao"
      ),
      Tipo.create!(
        :descricao => "Descricao"
      )
    ])
  end

  it "renders a list of tipos" do
    render
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
  end
end
