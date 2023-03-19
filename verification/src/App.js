import './App.css';
import React,{ useState,useMemo } from 'react';
import CardDetails from './CardDetails';
import Cards from "./Cards"

function App() {

  const [selectedUser,setSelectedUser] = useState(null);

  const handleUser = (data)=>{
    console.log(data);
    setSelectedUser(data);
  }

  return (
    <div className="App">
      { selectedUser ? <CardDetails selectedUser={selectedUser} clearUser={setSelectedUser} /> :<Cards handleUser={handleUser}/> }
    </div>
  );
}

export default App;
