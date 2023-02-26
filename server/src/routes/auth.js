import express from "express";
import userDetailsModel from "../models/userDetails.js";
import otpModel from "../models/otp.js";
import Twilio from 'twilio';
import dotenv from 'dotenv';
dotenv.config();

const router = express.Router();



const client = new Twilio(process.env.accountSid, process.env.authToken);



const sendOTP = async (number) =>{
    const randomOtp = Math.floor(100000 + Math.random() * 900000);

    client.messages.create({
        body: `Your E-verification OTP is ${randomOtp}. OTP will expire in 5 minutes.`,
        from: process.env.senderContact,
        to: number
    }).then(async (message) => {
        console.log("otp sent successfull with id : " , message.sid);

        // Save the OTP in a database 
        const otp = new otpModel({
            contactNo:number,
            otp:randomOtp
        });
        await otp.save();
        return true;

    }).catch(error =>{
        console.error(error)
        return false;
    });
        

}

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

    const {adhaarNumber,firstname,middlename,lastname,dob,add1,add2,pincode,country,state,adharpic,userpic,phoneNumber} = data;
    
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
        // country:country,
        // state:state
    });

    await entry.save().then((res))
    
    res.json({"status":201,"message":"User registered successfully"});
});

router.post("/otp/verify",async (req,res)=>{
    // return if the otp is correct on not 

    const {otp,adhaarNumber} = req.body;

    // once the frontend is readty check is the contact number is getting correctly
    const user = userDetailsModel.find({
        adhaarNumber:adhaarNumber
    });

    const contactNo = user[0].contactNo;

    const data = await otpModel.find({
        'contactNo':contactNo
    });
    
    const dbOtp = data[0].otp;
    if(dbOtp === otp){
        res.json({
            statusCode:200,
            messgae:"Otp verified"
        });
    }else{
        res.json({
            statusCode:400,
            message:"Invalid Otp"
        });
    }

});

router.get("/testotp",async (req,res)=>{
    // sendOTP('+919284738002');
    // const otps = await otpModel.find();
    // console.log(otps)
    res.json({status : "otp send success"});
})

router.post("/login",async (req,res)=>{
    /*

    1) for login the user will give his/her adhar number
    2) we will check if the user exists based on the adhar number
    3) if it exixts then we can send the otp on the users mobile number 
    4) if the user enters valid otp then we can login the user

    */
    // store the users data in mongodb

    const {adhaarNumber} = req.body;
    const user = userDetailsModel.find({
        adhaarNumber:adhaarNumber
    });
    
    const OtpStatus = await sendOTP(user[0].contactNo);

    if(OtpStatus){
        res.json({
            statusCode:200,
            message:"OTP sent successfully"
        })
    }else{
        res.json({
            statusCode:400,
            message:"Failed to send otp"
        })
    }
    

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
