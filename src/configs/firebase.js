// Import the functions you need from the SDKs you need
import {
    initializeApp
} from "firebase/app";
import {
    getAnalytics
} from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
    apiKey: process.env.FIREBASE_API_KEY,
    authDomain: "abaso-dev.firebaseapp.com",
    projectId: "abaso-dev",
    storageBucket: "abaso-dev.appspot.com",
    messagingSenderId: "982012367",
    appId: "1:982012367:web:a0d909bc37486e574602ba",
    measurementId: "G-8XEQ26TBQV"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);