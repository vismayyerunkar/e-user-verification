import mongoose from 'mongoose';


// this is our database model

const userDetails = mongoose.Schema({
    // other details is to be included
    
    contactNo:{
        type:Number,
        required:true
    },
    createdAt:{
        type: Date,
        default: new Date(),
    }
});


const userDetailsModel = mongoose.model('userDetails',userDetails);


export default userDetailsModel;