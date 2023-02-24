import express from "express";
import cors from "cors"
import bodyParser from "body-parser";
import registerRoutes from "./routes/auth.js"
import mongoose from "mongoose"

const app = express();
app.use(express.json());
app.use(cors({origin:'*',credentials:true}));
app.use(bodyParser.json({limit:"30mb",extended:true}));   //to set the limit of image upload
app.use(bodyParser.urlencoded({limit:"30mb",extended:true}));

// define routes
app.use("/api/auth",registerRoutes);

app.get('/check',(req,res)=>{
    res.json({
        res:"Get success"
    })
})

const PORT = 5000;
const CONNECTION_URL = 'mongodb+srv://vismay:password1111@cluster0.3fkx0wm.mongodb.net/project-db?retryWrites=true&w=majority'
mongoose.set('strictQuery', false);

const main = async () =>{

    try{

        mongoose.connect(CONNECTION_URL,{useNewUrlParser:true,useUnifiedTopology:true}).then(()=>{
        console.log("connected to database")
        app.listen(PORT,()=>{
            console.log(`server running on port : ${PORT}`);
        })}).catch((err)=>console.log(err));
    
    }catch(err){
        console.log(err);
        console.log("Some error occured while starting  the server")
        process.exit();
    }
}

main().catch(console.error);

