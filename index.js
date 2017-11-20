(function()
{
    const config = 
         {
            apiKey: "AIzaSyCQTQUHVnUhGfSHjRfYLYvWU18fvbITFMs",
            authDomain: "firsttest-e58df.firebaseapp.com",
            databaseURL: "https://firsttest-e58df.firebaseio.com",
            projectId: "firsttest-e58df",
            storageBucket: "firsttest-e58df.appspot.com",
            messagingSenderId: "795179805624",
         };
          firebase.initializeApp(config);
    
    
    const preObj = document.getElementById('-KyrG2O0FdzuXq10Es53');
    const preObj1 = document.getElementById('-KyrHAbOfuk33ktFW2nS');
    const preObj2 = document.getElementById('-KyrK6Ipx8asCpGjYJBl');
    const preObj3 = document.getElementById('-KyrK6LSsSSaUoL95Ii8');
    const preObj4 = document.getElementById('Live');
    //creating database reference
    const dbRef = firebase.database().ref().child('-KyrG2O0FdzuXq10Es53');
    dbRef.on('value', snap => 
    {
        preObj.innerText = JSON.stringify(snap.val(), null, 3)
    });

    const dbRef1 = firebase.database().ref().child('-KyrHAbOfuk33ktFW2nS');
    dbRef1.on('value', snap => 
    {
        preObj1.innerText = JSON.stringify(snap.val(), null, 3)
    });
    
    const dbRef2 = firebase.database().ref().child('-KyrK6Ipx8asCpGjYJBl');
    dbRef2.on('value', snap => 
    {
        preObj2.innerText = JSON.stringify(snap.val(), null, 3)
    });

    const dbRef3 = firebase.database().ref().child('-KyrK6LSsSSaUoL95Ii8');
    dbRef3.on('value', snap => 
    {
        preObj3.innerText = JSON.stringify(snap.val(), null, 3)
    });


    const dbRef4 = firebase.database().ref().child('Live');

    dbRef4.on('value', snap => 
    {
        preObj4.innerText = JSON.stringify(snap.val(), null, 3)
    });
}());