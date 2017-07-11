require 'rails_helper'

RSpec.describe "candidatos/index", type: :view do
  before(:each) do
    assign(:candidatos, [
      FactoryGirl.build(:candidato),
      FactoryGirl.build(:candidato)
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
