import de.bezier.data.sql.*;
import de.bezier.data.sql.mapper.*;

SQLite db;

void setup(){
  size(100,100);
  
 
  db = new SQLite(this,"DDUTest.db");
  
  if(db.connect()){
    println("Connected to database");
    db.query("SELECT * Tables");
    
    while (db.next()){
     println(db.getString("CustomerID")); 
   }
    
  }
  if(db.connect() == false){
    println("hit");
    
  }
}
