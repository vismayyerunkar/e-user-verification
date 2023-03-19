import React from 'react';
import QRCode from "react-qr-code";


const QRHolder = () => {
  return (
    <div className='qr-scanner'>
        <h3>Please Scan the QR code to verify</h3>
        <QRCode value="1x2x3x" />
    </div>
  )
}


export default QRHolder;