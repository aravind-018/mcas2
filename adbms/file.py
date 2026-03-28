import pymongo
conn=pymongo.MongoClient("mongodb://localhost:27017/")
print(conn.list_database_names())
db=conn["student"]
print(db.list_collection_names())
col=db["mark"]
# data={"rollno":1,"name":"sachin","marks":108}
data={"rollno":2,"name":["sachin","dhoni","kholi"],"marks":10718}
col.insert_one(data)