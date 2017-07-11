FactoryGirl.define do
  factory :oferta do
    turma "A"
    association :disciplina, factory: :disciplina
  end
end
