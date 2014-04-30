require 'sqlite3'

db = SQLite3::Database.new( "test.db" )
# db.execute("CREATE TABLE tree( parent INTEGER, child INTEGER );")
# db.execute("INSERT INTO tree VALUES(2, 4);")
# db.execute("INSERT INTO tree VALUES(2, 5);")
# db.execute("INSERT INTO tree VALUES(4, 7);")
# db.execute("INSERT INTO tree VALUES(4, 8);")
# db.execute("INSERT INTO tree VALUES(5, 9);")
# db.execute("INSERT INTO tree VALUES(5, 1);")
# db.execute("INSERT INTO tree VALUES(null, 2);")
row = db.execute( "select * from tree" )
p row


# Find the Second Level of Data in the Heirarchical Structure
# SELECT * FROM tree WHERE parent IS null;

# Sub Select Statement
# SELECT * FROM tree WHERE parent = (SELECT child FROM tree WHERE parent IS NULL);

# SELECT distinct tree_clone.parent FROM tree JOIN tree AS tree_clone ON tree.parent = tree_clone.child;

# Ariel
# SELECT parent FROM 
# (SELECT * FROM tree AS tree_clone LEFT OUTER JOIN tree ON tree.child = tree_clone.parent WHERE tree.child IS NULL LIMIT 1);

# AN OUTER JOIN returns where there is no match. For example the head of a tree. 