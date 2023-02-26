# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Era.destroy_all
GreatMonument.destroy_all

monuments = [
  ['Observatoire', 'Aucun âge'],
  ['Temple des reliques', 'Aucun âge'],
  ['Oracle de Delphes', 'Aucun âge'],
  ['Tour de Babel', 'Âge du Bronze'],
  ['Statue de Zeus', 'Âge du Bronze'],
  ['Colisée', 'Âge du Fer'],
  ["Phare d'Alexandrie", 'Âge du Fer'],
  ['Hagia Sophia', 'Haut Moyen Âge'],
  ["Cathédrale d'Aix-la-Chapelle", 'Haut Moyen Âge'],
  ['Tour de Galata', 'Haut Moyen Âge'],
  ['Basilique Saint-Marc', 'Moyen Âge Classique'],
  ['Notre-Dame', 'Moyen Âge Classique'],
  ['Cathédrale Saint-Basile', 'Renaissance'],
  ['Castel del Monte', 'Renaissance'],
  ['Frauenkirche de Dresde', 'Âge Colonial'],
  ['Château de Deal', 'Âge Colonial'],
  ['Royal Albert Hall', 'Âge Industriel'],
  ['Capitole', 'Âge Industriel'],
  ['Château Frontenac', 'Ère Progressiste'],
  ['Alcatraz', 'Ère Progressiste'],
  ['Space Needle', 'Ère Moderne'],
  ['Atomium', 'Ère Moderne'],
  ['Cap Canaveral', 'Ère Postmoderne'],
  ["L'Habitat", 'Ère Postmoderne'],
  ['Temple du lotus', 'Ère Contemporaine'],
  ["Tour de l'innovation", 'Ère Contemporaine'],
  ['Tour de la trêve', 'Ère de demain'],
  ['Voyager V1', 'Ère de demain'],
  ["L'arche", 'Ère du Futur'],
  ['Forêt tropicale', 'Ère du Futur'],
  ['Statue de Gaïa', 'Futur arctique'],
  ['Chambre forte des graines', 'Futur arctique'],
  ['Orangerie arctique', 'Futur arctique'],
  ["Musée de l'Atlantide", 'Futur océanique'],
  ['Le Kraken', 'Futur océanique'],
  ['La galaxie bleue', 'Futur océanique'],
  ['Armée de terre cuite', 'Futur virtuel'],
  ["Château d'Himeji", 'Futur virtuel'],
  ['Star Gazer', 'Ère spatiale - Mars'],
  ['Le Projet Virgo', 'Ère spatiale - Mars'],
  ['Transporteur spatial', "Ère spatiale - Ceinture d'astéroïdes"],
  ['Île volante', 'Ère spatiale - Vénus'],
  ["Noyau d'I.A.", 'Ère spatiale - Lune de Jupiter']
]

eras = []
buildings = []

monuments.each do |monument|
  era = monument[1]
  building = monument[0]

  unless eras.include?(era)
    eras << era
  end

  era_index = eras.index(era) + 1

  buildings << { name: building, era_id: era_index }
end

eras.each do |era|
  Era.create(name: era)
end

buildings.each do |building|
  GreatMonument.create(name: building[:name], era_id: building[:era_id])
end

L1 = %w[50	40	40	50	50	50	50	60	60	60	60	60	70	70	80	80	90	90	90	100	100].map{|i| i.to_i}
L2 = %w[70	60	60	60	70	80	90	90	90	100	100	100	100	110	120	130	130	140	150	140	150
].map{|i| i.to_i}
L3 = %w[130	100	120	120	130	140	150	150	170	180	180	180	190	200	230	240	240	250	260	280	280
].map{|i| i.to_i}
L4 = %w[200	150	170	190	200	210	220	240	260	270	270	270	280	290	340	350	370	380	390	400	430
].map{|i| i.to_i}
L5 = %w[270	210	220	240	270	290	310	330	340	360	360	360	380	400	450	470	490	520	540	560	570
].map{|i| i.to_i}
L6 = %w[330	270	290	320	330	360	380	410	440	460	460	460	480	510	580	610	630	650	670	700	720
].map{|i| i.to_i}
L7 = %w[420	330	360	380	420	440	480	500	530	560	560	560	590	620	710	740	770	800	830	850	890
].map{|i| i.to_i}
L8 = %w[490	380	420	460	490	530	560	600	630	670	670	670	710	740	850	880	910	940	990	1020	1050
].map{|i| i.to_i}
L9 = %w[570	450	490	530	570	610	650	690	740	770	770	770	810	860	980	1020	1060	1110	1140	1180	1230
].map{|i| i.to_i}
L10 = %w[650	510	550	600	650	700	740	790	830	880	880	880	930	970	1110	1160	1210	1250	1300	1350	1390
].map{|i| i.to_i}

L1.each_with_index do |c, index|
  era = Era.find(index + 1)
  era.Level1 = c
  era.save
end
L2.each_with_index do |c, index|
  era = Era.find(index + 1)
  era.Level2 = c
  era.save
end
L3.each_with_index do |c, index|
  era = Era.find(index + 1)
  era.Level3 = c
  era.save
end
L4.each_with_index do |c, index|
  era = Era.find(index + 1)
  era.Level4 = c
  era.save
end
L5.each_with_index do |c, index|
  era = Era.find(index + 1)
  era.Level5 = c
  era.save
end
L6.each_with_index do |c, index|
  era = Era.find(index + 1)
  era.Level6 = c
  era.save
end
L7.each_with_index do |c, index|
  era = Era.find(index + 1)
  era.Level7 = c
  era.save
end
L8.each_with_index do |c, index|
  era = Era.find(index + 1)
  era.Level8 = c
  era.save
end
L9.each_with_index do |c, index|
  era = Era.find(index + 1)
  era.Level9 = c
  era.save
end
L10.each_with_index do |c, index|
  era = Era.find(index + 1)
  era.Level10 = c
  era.save
end
