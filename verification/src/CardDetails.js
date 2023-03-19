import React from 'react'
import axios from 'axios';

const CardDetails = ({clearUser,selectedUser}) => {

  const verifyUser = ()=>{
    console.log("tring to verify")
    axios.post("http://localhost:5000/api/auth/verify-user",{
      adhaarNumber:selectedUser.adhaarNumber
    }).then((res)=>{
      console.log(res);
    })
  }

  return (
    <>
      <div className="top-container">
          <img className="f-img" src="" alt="user-img" />
          <img className="s-img" src="" alt="adhar-img" />
        </div>
        <div className="content">
            <div className="left-bar">
               <h3><span className="info-title">Name :</span><span>{selectedUser.firstname + " " + selectedUser.lastname}</span></h3>
               <h3><span className="info-title">Gender :</span><span>{selectedUser.gender ?? "Not specified"}</span></h3>
               <h3><span className="info-title">Adhaar no :</span><span>{selectedUser.adhaarNumber}</span></h3>
               <h3><span className="info-title">Contact no :</span><span>{selectedUser.contactNo}</span></h3>
               <h3><span className="info-title">Address :</span><span>{selectedUser.address_1 + " " + selectedUser.address_2}</span></h3>
               <h3><span className="info-title">D.O.B :</span><span>{selectedUser.dob}</span></h3>
            </div>
            <div className="ryt-bar">
                <button className="btn" onClick={()=>verifyUser()}>Verify</button>
                <button className="cancel-btn" onClick={()=>clearUser(null)}>Cancel</button>
            </div>
        </div>
    </>
  )
}

export default CardDetails;

