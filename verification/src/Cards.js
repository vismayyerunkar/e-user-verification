import React, { useEffect, useState } from 'react'
import axios from 'axios'

function Cards({ handleUser }) {

  const [users, setUsers] = useState(null);

  useEffect(() => {
    axios.get("http://localhost:5000/api/auth/unverified-users").then((res) => {
      console.log(res.data);
      setUsers(res.data);
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
                  <img src={user.profile_pic} alt="img" />
                </div>
                <div className='card-info'>
                  <span>Name : {user.firstname + " " + user.lastname}</span>
                  <span>Appy date : {new Date(user.createdAt).toLocaleDateString()}</span>
                </div>
              </div>
            )
          }) : (<h3 style={{color:'white !important'}}>Loading..</h3>) }

      </div>
    </div>
  )
}


export default Cards
