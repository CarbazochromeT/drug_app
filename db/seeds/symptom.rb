ActiveRecord::Base.connection.execute(
  "SELECT nextval('symptoms_id_seq', #{Symptom.maximum(:id)}, true)"
)

Symptom.create!([
  {id: 1, name: "頭痛"},
  {id: 3, name: "熱"},
  {id: 4, name: "せき"},
  {id: 5, name: "たん"},
  {id: 6, name: "鼻水"},
  {id: 7, name: "鼻づまり"},
  {id: 8, name: "口内炎"},
  {id: 9, name: "のどの腫れ"},
  {id: 10, name: "のどの殺菌"},
  {id: 11, name: "のどの痛み"},
  {id: 12, name: "じんましん"}
])