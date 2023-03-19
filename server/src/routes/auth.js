import express from "express";
import userDetailsModel from "../models/userDetails.js";

const router = express.Router();

router.post("/register",async (req,res)=>{
    /*
        1) while registering the user will upload the data which will contain his data along with adharnumber and phonenumber
        2) we will check if the adharumber is valid and it is authentic and then we will check that it is not regstered already
        3) then if the adharnumber is not already registerd we can send an otp to the uses mob no and we will authenticate the user 
        4) if the user enters correct otp then we can store the data of the user in DB and can maintain the user authentication data (adharnumber will be unique identifier of the user)
        5) now the user is successfully registered

    */
   
    // store the users data in mongodb

    const data = req.body;
    console.log(data);
    const {adhaarNumber,firstname,middlename,lastname,dob,add1,add2,pincode,country,state,adhaarImage,userImage,phoneNumber} = data;
    
    const entry = new userDetailsModel({
        adhaarNumber:adhaarNumber,
        firstname:firstname,
        middlename:middlename,
        lastname:lastname,
        dob:dob,
        address_1:add1,
        address_2:add2,
        contactNo:phoneNumber,
        pincode:pincode,
        adhaar_image:adhaarImage,
        user_image:userImage,
        // country:country,
        // state:state
    });

    await entry.save().then((res))
    
    res.json({"status":201,"message":"User registered successfully"});
});

router.post("/otp/verify",(req,res)=>{
    // return if the otp is correct on not 

});


router.post("/login",(req,res)=>{
    /*

    1) for login the user will give his/her adhar number
    2) we will check if the user exists based on the adhar number
    3) if it exixts then we can send the otp on the users mobile number 
    4) if the user enters valid otp then we can login the user

    */
    // store the users data in mongodb

    const data = req.body;
    console.log(data);
    

    // create users account 
});


router.get("/check",(req,res) => {
    userDetailsModel.find().then((res)=>{
        console.log(res);
    }).catch((err)=>{
        console.log(err);
    });

})
export default router;
