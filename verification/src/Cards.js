import React, { useEffect, useState } from 'react'
import axios from 'axios'
import { ThreeDots } from  'react-loader-spinner'

function Cards({ handleUser }) {

  const [users, setUsers] = useState(null);

  useEffect(() => {
    axios.get("http://localhost:5000/api/auth/unverified-users").then((res) => {
      console.log(res.data);
      setUsers(res.data);
    }).catch((err)=>{
      setUsers([]);
    })
  }, [])


  return (
    <div className='cards'>
      <div className='cards-header'>
        <h2>Unverified users</h2>
      </div>
      <div className='cards-holder'>
        {users ? users.map((user) => {
            return (
              <div key={user?._id} onClick={() => handleUser(user)} className='card'>
                <div className='card-img-holder'>
                  <img src={user.user_image} alt="img" />
                </div>
                <div className='card-info'>
                  <span className="card-info-data">
                    <span>Name : {user.firstname + " " + user.lastname}</span>
                    <span>Appy date : {new Date(user.createdAt).toLocaleDateString()}</span>
                  </span>
                  <span style={user?.isVerified ? {color:'#33ea76',backgroundColor:'#1cd17c68'} : {color:'red',backgroundColor:'#fd000056'}} className='verified-btn'>{ user?.isVerified ? "Verified" : "unverified"}</span>
                  
                </div>
              </div>
            )
          }) : (<ThreeDots 
            height="80" 
            width="80" 
            radius="9"
            color="#fff" 
            ariaLabel="three-dots-loading"
            wrapperStyle={{}}
            wrapperClassName=""
            visible={true}
            />) }

      </div>
    </div>
  )
}


export default Cards
