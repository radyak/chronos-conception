// Show everything
MATCH (n)-[r]->(m)
RETURN n,r,m

/////////////////////////////////////


// Find all persons
MATCH (p:Person) RETURN p

// Find all persons born in the 3rd century
MATCH (p:Person)
WHERE p.from >= '0200' AND p.from < '0299'
RETURN p
ORDER BY p.from DESC

// Find persons who reigned as augustus
MATCH (p:Person)-[r:RULED {role: 'augustus'}]->(t:Territory) RETURN p,r,t;

// Find persons who reigned the Roman Empire as augustus
MATCH (p:Person)-[r:RULED {role: 'augustus'}]->(t:Territory {name: 'Roman Empire'}) RETURN p,r,t;

/////////////////////////////////////


// Find all territories, that are part of others
MATCH (t1:Territory)-[p:PARTOF]->(t2:Territory) RETURN t1,p,t2;
