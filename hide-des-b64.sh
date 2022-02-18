#/bin/bash
echo "Hide-DES-BASE64 version 1.0"
echo "NO COMMENT"
echo "JUST USE WITH BETTER LAYER OR IF LOW IMPORTANCE ABOUT THE DATA."
echo "$1 must  be encrypted/encoded  in this order: des( b64(  zip( rc4( $1 ) ) ) )"
echo "good luck."
sleep 10s
clear
echo "Encryption with DES..."
echo "$(openssl des < $1)" > $1.des && echo "Success."

echo "Base64 encodage..."
echo "$(b64encode < $1.des)" > $1.des.b64 && "Success."

echo "Start zip at max compression level..."
zip -9 $1.zip $1.des.b64 && echo "Done."

echo "Encryption with rc4 and made an fake .zip.parts file (like an undone download file)"
echo "$(openssl rc4 < $1.zip)" > $1.zip.parts && echo "Success."
echo "ITS OKAY NOW: CLEAN UP"
sleep 2s
clear
echo "removing the .des file..."
rm $1.des && echo "OK." #replace later by wipe  
echo "removing the .des.b64 file..."
rm $1.des.b64 && echo "OK."
echo "removing the .zip file..."
rm $1.zip && echo "OK."
echo "ALL DONE. THANK YOU FOR USING MY SCRIPT."
sleep 10s
clear
exit
