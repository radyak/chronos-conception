MATCH (n)
DETACH DELETE n

// Persons
CREATE (Augustus:Person { name: 'Gaius Octavius', shortName: 'Augustus', from: '-0063', to: '0014' })
CREATE (Probus:Person { name: 'Marcus Aurelius Probus', shortName: 'Probus', from: '0232', to: '0282' })
CREATE (Carus:Person { name: 'Marcus Aurelius Carus', shortName: 'Carus', from: '0223', to: '0283' })
CREATE (Carinus:Person { name: 'Marcus Aurelius Carinus', shortName: 'Carinus', from: null, to: '0285' })
CREATE (Numerian:Person { name: 'Marcus Aurelius Numerius Numerianus', shortName: 'Numerian', from: '0253', to: '0284' })

CREATE (Diokletian:Person { name: 'Gaius Aurelius Valerius Diocletianus', shortName: 'Diokletian', from: '0253', to: '0284' })
CREATE (Maximian:Person { name: 'Marcus Aurelius Valerius Maximianus', shortName: 'Maximian', from: '0240', to: '0310' })
CREATE (Galerius:Person { name: 'Gaius Galerius Valerius Maximianus', shortName: 'Galerius', from: '0250', to: '0311' })
CREATE (Constantius:Person { name: 'Flavius Valerius Constantius', shortName: 'Constantius Chlorus', from: '0250', to: '0306' })

// Territories
CREATE (Rome:Territory { name: 'Roman Empire', from: '-0753', to: '0476' })
CREATE (EastRome1:Territory { name: 'Eastern Roman Empire', from: '0285', to: '0325' })
CREATE (WestRome1:Territory { name: 'Western Roman Empire', from: '0285', to: '0325' })



// Relations
CREATE (Augustus)-[:RULED {role: 'augustus', from: '-0027', to: '0014'}]->(Rome)

CREATE (Probus)-[:RULED {role: 'augustus', from: '0276', to: '0282'}]->(Rome)
CREATE (Carus)-[:RULED {role: 'augustus', from: '0282', to: '0283'}]->(Rome)
CREATE (Carinus)-[:RULED {role: 'caesar', from: '0282', to: '0283'}]->(Rome)
CREATE (Numerian)-[:RULED {role: 'caesar', from: '0283', to: '0284'}]->(Rome)
CREATE (Carinus)-[:RULED {role: 'augustus', from: '0283', to: '0285'}]->(Rome)

CREATE (Diokletian)-[:RULED {role: 'augustus', from: '0284', to: '0305'}]->(EastRome1)
CREATE (Maximian)-[:RULED {role: 'caesar', from: '0285', to: '0286'}]->(WestRome1)
CREATE (Maximian)-[:RULED {role: 'augustus', from: '0286', to: '0305'}]->(WestRome1)
CREATE (Galerius)-[:RULED {role: 'caesar', from: '0293', to: '0305'}]->(EastRome1)
CREATE (Galerius)-[:RULED {role: 'augustus', from: '0305', to: '0311'}]->(EastRome1)
CREATE (Constantius)-[:RULED {role: 'caesar', from: '0293', to: '0305'}]->(WestRome1)
CREATE (Constantius)-[:RULED {role: 'augustus', from: '0305', to: '0306'}]->(WestRome1)

CREATE (EastRome1)-[:PARTOF]->(Rome)
CREATE (WestRome1)-[:PARTOF]->(Rome)