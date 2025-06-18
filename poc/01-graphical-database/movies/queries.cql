// Find all movies
MATCH (m:Movie) RETURN m

// Find all nodes with actors and directors
MATCH (a)-[:ACTED_IN]->(m)<-[:DIRECTED]-(d) RETURN a,m,d LIMIT 10;