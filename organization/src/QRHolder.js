import React,{useEffect} from 'react';
import QRCode from "react-qr-code";


const QRHolder = ({skt}) => {

 console.log(skt)

  return (
    <div className='qr-scanner'>
        <h3>Please Scan the QR code to verify</h3>
        <QRCode value={skt?.id ?? "12" } />
    </div>
  )
}


export default React.memo(QRHolder);