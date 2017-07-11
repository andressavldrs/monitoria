require 'rails_helper'

RSpec.describe "candidatos/show", type: :view do
  before(:each) do
    @candidato = assign(:candidato, FactoryGirl.build(:candidato))
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
