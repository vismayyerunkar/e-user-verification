import React from 'react'

const UserDetails = () => {
  return (
    <div className='user-details'>
     <div className='img-holder'>
        <img src="https://rb.gy/lcvws8"/>
     </div>

     <div><h3>Name </h3> : <span> John doe </span></div>
     <div><h3>ContactNo</h3> : <span> 9900998877 </span></div>
     <div><h3>Address </h3> : <span> Dummy address </span></div>
     <div><h3>Adhaar No</h3> : <span> 887788778877 </span></div>

    <div className="verification-holder">
        <span className="user-verified">Verified</span>
        {/* <span className="user-unverified">unverified</span> */}
    </div>
    </div>
  )
}

export default UserDetails;
