import express from "express";
import cors from "cors"
import bodyParser from "body-parser";
import registerRoutes from "./routes/auth.js"
import mongoose from "mongoose"
const app = express();
import { createServer } from 'http';
import { Server } from "socket.io";
const server = createServer(app);
const io = new Server(server, { cors: { origin: '*' } });



// main

app.use(express.json());
app.use(cors({origin:'*',credentials:true}));
app.use(bodyParser.json({limit:"30mb",extended:true}));   //to set the limit of image upload
app.use(bodyParser.urlencoded({limit:"30mb",extended:true}));

// define routes
app.use("/api/auth",registerRoutes);

app.post('/verify-scan',(req,res)=>{
    const {id,adharnumber} = req;
    console.log(adharnumber);
    socket.broadcast.emit('newclientconnect',"dummy user data");
    return
});


io.on('connection', (socket) => {
    console.log('Connection established');

    socket.on('disconnect', () => {
      console.log('Disconnected');
    });
});      



const PORT = 5000;

// const CONNECTION_URL = 'mongodb+srv://temp:temp123@cluster0.3fkx0wm.mongodb.net/project-db?retryWrites=true&w=majority'

const CONNECTION_URL = 'mongodb+srv://vismay:password1111@cluster0.3fkx0wm.mongodb.net/project-db?retryWrites=true&w=majority'
mongoose.set('strictQuery', false);

const main = async () =>{

    try{

        mongoose.connect(CONNECTION_URL,{useNewUrlParser:true,useUnifiedTopology:true}).then(()=>{
        console.log("connected to database")
        server.listen(PORT,()=>{
            console.log(`server running on port : ${PORT}`);
        })}).catch((err)=>console.log(err));
    
    }catch(err){
        console.log(err);
        console.log("Some error occured while starting  the server")
        process.exit();
    }
}

main().catch(console.error);

