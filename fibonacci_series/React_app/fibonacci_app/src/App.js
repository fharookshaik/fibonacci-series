import React, { useState } from 'react';
import ReactDOM from 'react-dom/client';

function App()
{
    
    const[state,setState] = useState({
      prev1: 0,
      prev2: 1,
      current: 1
    });

    const[heading,setHeading] = useState("Click to get your fibonacci number");

    function clickAdd(event)
    {
      setState((prevValue) => {
        let a = prevValue.prev1 + prevValue.prev2
        setHeading("Click to get your fibonacci number");
        return{
          current : a,
          prev1 : prevValue.prev2,
          prev2 : a
        }
        console.log(prevValue.current);
      })
      
    }

    function clickMinus()
    {
      setState((prevValue) => {
        let a = prevValue.current - prevValue.prev1
        let b = prevValue.prev2 - prevValue.prev1
        let c = prevValue.current - prevValue.prev2
        //console.log(prevValue.prev2);
        if(b < 0)
        {
          setHeading("Fibonacci number cannot be less than 0");
          return{
            prev1: 0,
            prev2: 1,
            current: 1
          }
          
        }
        else{
        setHeading("Click to get your fibonacci number");
        return{
          prev1 : b,
          current : prevValue.current - b,
          prev2 : prevValue.prev2 - b
        }
        console.log(prevValue.current);
      }
      })
    }
    return(
      <>
      <div className = "my-class">
        <h1>{heading}</h1>
        <br/>
        <div className = "border">
          <h1>{state.current}</h1>
          <br/>
          <button type="button" class="btn btn-primary" onClick={clickMinus}>-</button>
          <button type="button" class="btn btn-primary" onClick={clickAdd}>+</button>
        </div>
      </div>
      </>
    )
}


export default App;