import express from "express";

const router = express.Router();

router.get("/",(req,res)=>{
    // get the unverified users data from mongodb so that it can be verified

    res.send(data);
});

router.post("/verified",(req,res)=>{
    // get the id of the user who is verified (from the req)
    // make the entry of the user in the blockchain network
})

export default router;
