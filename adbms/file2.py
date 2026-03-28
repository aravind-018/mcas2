import pymongo
conn=pymongo.MongoClient("mongodb://localhost:27017")
db=conn["student"]
col=db["mark"]
data=[{"Rollno":2,"name":"aarjav","mark":35},
      {"Rollno":3,"name":"abhay","mark":34},
      {"Rollno":6,"name":"abhi","mark":36},
      {"Rollno":22,"name":"aravind","mark":37},
      {"Rollno":41,"name":"vrinda","mark":32}]
# col.insert_many(data)
for i in col.find({},{"name":1,"_id":0}).sort("mark",1):
    print (i["name"])
# print(col.find_one({"Rollno":"3"},{"name":1,"_id":0}))

