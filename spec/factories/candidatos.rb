FactoryGirl.define do
  factory :candidato do
    matricula 100000000
    nome "John Smith"
    semestre 2
    ira 5
    email "johnsmith@email.com"
    association :oferta, factory: :oferta
    association :tipo, factory: :tipo
  end
end
