require 'rails_helper'

RSpec.describe "disciplinas/index", type: :view do
  before(:each) do
    assign(:disciplinas, [
      Disciplina.create!(
        :codigo => 2,
        :nome => "Nome"
      ),
      Disciplina.create!(
        :codigo => 2,
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of disciplinas" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
