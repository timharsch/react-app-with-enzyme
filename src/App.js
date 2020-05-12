import React from 'react';
import './App.css';

function App() {
  return (
    <div className="App">
      <p>This is the HomePage of enzyme-app</p>
    </div>
  );
}

function thisFuncNotCodeCovered() {
  console.log("and it is never called")
  console.log("and it is never called")
}

export default App;
