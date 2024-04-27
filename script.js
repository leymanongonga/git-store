firebase.initialize.App({
    apiKey: "AIzaSyAOh8w7-XgLwFBwavvwk_BYphmPOruTPDo",
    authDomain: "plp-task-management.firebaseapp.com",
    projectId: "plp-task-management",
    storageBucket: "plp-task-management.appspot.com",
    messagingSenderId: "333370840798",
    appId: "1:333370840798:web:51fbecf9b94af4e040544f"   
}); 


const db=firebase.firestore();

// function to add task
function addTask(){
 const taskinput=document.getElementsById("task-input");
 const task = taskInput.value.trim();
 if(task !== ""){
    db.collection("task").add({
      task: task,
      timestamp: firebase.firestore.fieldValue.serverTimestamp()  
    });
    taskInput.value = "";
    console.log("task added.");
 } 
}