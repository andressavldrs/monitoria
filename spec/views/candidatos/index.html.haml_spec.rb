require 'rails_helper'

RSpec.describe "candidatos/index", type: :view do
  before(:each) do
    assign(:candidatos, [
      Candidato.create!(
        :matricula => 2,
        :nome => "Nome",
        :semestre => 3,
        :ira => 4,
        :email => "Email"
      ),
      Candidato.create!(
        :matricula => 2,
        :nome => "Nome",
        :semestre => 3,
        :ira => 4,
        :email => "Email"
      )
    ])
  end

  it "renders a list of candidatos" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
