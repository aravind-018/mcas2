import pymongo
conn=pymongo.MongoClient("mongodb://localhost:27017/")
db=conn["student"]
col=db["marks3"]
data=[{"rollno":1,"name":"Vrinda","mark1":45,"mark2":20,"mark3":32},
       {"rollno":11,"name":"aravind","mark1":47,"mark2":27,"mark3":39},
    {"rollno":12,"name":"aarjav","mark1":49,"mark2":23,"mark3":32},
       {"rollno":13,"name":"robin","mark1":45,"mark2":20,"mark3":32},
       {"rollno":19,"name":"steve","mark1":45,"mark2":20,"mark3":32},
       {"rollno":41,"name":"eleven","mark1":45,"mark2":29,"mark3":54},
       {"rollno":56,"name":"mike","mark1":45,"mark2":20,"mark3":32},
       {"rollno":47,"name":"dustin","mark1":47,"mark2":28,"mark3":32},
       {"rollno":60,"name":"lucas","mark1":40,"mark2":27,"mark3":49},
       {"rollno":15,"name":"max","mark1":49,"mark2":26,"mark3":32},
      ]
# col.insert_many(data)
print("name"," ","total")
for i in col.find():
    print(i["name"]," ",i["mark1"]+i["mark2"]+i["mark3"])
# for i in col.find({"mark1": {"$gt": 45}}, {"name": 1, "_id": 0}):
#     print(i)
# for i in col.find({"name": {"$regex": "^s"}}, {"name": 1, "_id": 0}):
#     print(i)
# for i in col.find({"name": {"$regex": "n$"}}, {"name": 1, "_id": 0}):
#     print(i)
# for i in col.find({"name": {"$regex": "ev"}}, {"name": 1, "_id": 0}):
#     print(i)
# myquery={"rollno":1}
# new_value={"$set":{"mark1":100,"name":"mary"}}
# col.update_one(myquery,new_value)
# print(col.find_one({"rollno":1},{"name":1,"_id":0,"mark1":1}))

# col.delete_one({"rollno":41})
    
    
