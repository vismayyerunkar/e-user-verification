import './App.css';
import React,{ useState,useMemo, useRef } from 'react';
import CardDetails from './CardDetails';
import Cards from "./Cards"


function App() {

  const [selectedUser,setSelectedUser] = useState(""); 

  const handleUser = (user) =>{
    setSelectedUser(user)
  }

  return (
    <div className="App">
      { selectedUser ? <CardDetails selectedUser={selectedUser} clearUser={setSelectedUser} /> : <Cards handleUser={handleUser}/> }
    </div>
  )
}

export default App;
