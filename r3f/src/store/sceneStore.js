import firebase from 'firebase/app';
import 'firebase/firestore';

const firebaseConfig = {
  // Your Firebase config here
};

firebase.initializeApp(firebaseConfig);

export const firestore = firebase.firestore();
