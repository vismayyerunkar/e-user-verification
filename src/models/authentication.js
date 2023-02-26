import mongoose from 'mongoose';


// this is our database model

const authSchema = mongoose.Schema({
    contactNo:{
        type:Number,
        required:true
    },
    adharNo:{
        type:Number,
        required:true
    },
    createdAt:{
        type: Date,
        default: new Date(),
    }
});


const authModel = mongoose.model('Auth',authSchema);


export default authModel;