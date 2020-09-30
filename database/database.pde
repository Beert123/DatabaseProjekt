import de.bezier.data.sql.*;
import de.bezier.data.sql.mapper.*;

SQLite db;

void setup(){
  size(100,100);
  
 
  db = new SQLite(this,"DDUTest.db");
  
  if(db.connect()){
    println("Connected to database");
    db.query("SELECT name as \"Name\" FROM SQLITE_MASTER where type =\"table\"");
    
    while (db.next()){
      println("Next");
     println(db.getString("CustomerID")); 
   }
    
  }
  if(db.connect() == false){
    println("hit");
    
  }
}
