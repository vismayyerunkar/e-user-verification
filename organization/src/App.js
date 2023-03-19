import './App.css';
import React,{useState} from 'react';
import QRHolder from './QRHolder';
import UserDetails from './UserDetails';

function App() {

  const [qrActive,setQrActive] = useState(false);
  const [userData,setUserData] = useState(null);



  return (
    <div className="App">
      {qrActive ? (<QRHolder/>) : (<UserDetails/>)}
    </div>
  );
}

export default App;
