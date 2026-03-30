import pymongo
conn=pymongo.MongoClient("mongodb://localhost:27017/")
db=conn["college"]
col=db["studlist"]
#q1
# print("roll no","   ","fname"," ","lname")
# for i in col.find({"gender":"female"},{"name":1,"_id":1}):
#     print(i["_id"]," : ",i["name"]["fname"]," ",i["name"]["lname"])
#q2
# print(col.find_one({},{"sort":{"mark":-1},"name":1,"_id":1,"mark":1}))
# for i in col.find({"gender":"male","grade":"A+"},{"name":1,"_id":1}):
#     print(i["_id"]," : ",i["name"]["fname"]," ",i["name"]["lname"])
# c=0
# for i in col.find({"course":"Mechanical"},{"sort":{"mark":-1},"name":1,"_id":1}):

#     if(c<3):
#         print(i["name"]["fname"]," ",i["name"]["lname"],"",i["_id"])
#         c+=1
#     else:
#         break
# for i in col.find({"mark":{"$gt":90},"gender":"female"},{"name":1,"mark":1,"grade":1,"phone":1}):
#     print(i["name"]["fname"],"",i["name"]["lname"],"",i["mark"]," ",i["grade"],"",i["phone"]["no"])
# for i in col.find({"mark":{"$gt":80,"$lt":90}},{"name":1,"mark":1,"grade":1,"phone":1}):
#     print(i["name"]["fname"],"",i["name"]["lname"],"",i["mark"]," ",i["grade"],"",i["phone"]["no"])
# for i in col.find({"name.fname":{"$regex":"^v","$options":"i"}},{"name":1,"mark":1,"grade":1,"phone":1}):
#     print(i["name"]["fname"],"",i["name"]["lname"],"",i["mark"]," ",i["grade"],"",i["phone"]["no"])
# for i in col.find({"address.city":"Kollam"},{"name":1,"address":1}):
#     print(i["name"]["fname"],"",i["name"]["lname"],"",i["address"])  
# for i in col.find({"address.city":{"$nin":["Kollam","Thiruvananthapuram"]}},{"name":1,"address":1}):
#      print(i["name"]["fname"],"",i["name"]["lname"],"",i["address"])  
for i in col.find({"gender":"female","address.city":{"$in":["Kollam","Thiruvananthapuram"]}},{"name":1,"address":1}):
     print(i["name"]["fname"],"",i["name"]["lname"],"",i["address"]) 




    

   






