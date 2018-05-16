SELECT g1.Name As gref_gid, ST_AsText(g1.location) As gref_description, 
g2.Name As gnn_gid, ST_AsText(g2.location) As gnn_description 
    FROM HW_Location5 As g1, HW_Location5 As g2   
WHERE g1.id = 9 and g1.id <> g2.id  
ORDER BY ST_Distance(g1.location,g2.location) 
LIMIT 3;
