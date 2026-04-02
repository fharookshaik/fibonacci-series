import React, { useState } from 'react';

const Fibonacci = () => {
  const [n, setN] = useState(0);
  const [fibSeries, setFibSeries] = useState([]);

  const calculateFibonacci = (n) => {
    const series = [0, 1];
    for (let i = 2; i < n; i++) {
      series[i] = series[i - 1] + series[i - 2];
    }
    return series;
  };

  const handleChange = (event) => {
    const inputValue = parseInt(event.target.value);
    if (isNaN(inputValue) || inputValue < 0) {
      setN(0);
    } else {
      setN(inputValue);
    }
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    const fibSeries = calculateFibonacci(n);
    setFibSeries(fibSeries);
  };

  return (
    <div>
      <form onSubmit={handleSubmit}>
        <label>
          Enter the number of Fibonacci numbers (n):
          <input type="number" value={n} onChange={handleChange} />
        </label>
        <button type="submit">Generate Fibonacci Series</button>
      </form>
      <div>
        <h3>Fibonacci Series:</h3>
        <ul>
          {fibSeries.map((num, index) => (
            <li key={index}>{num}</li>
          ))}
        </ul>
      </div>
    </div>
  );
};

export default Fibonacci;
/*
The code I provided is a complete React component, and it will work when integrated into a React application. However, to run the React component, you need to set up a basic React project and include this component within it.

Here's a step-by-step guide to running the code:

1. Make sure you have Node.js and npm (Node Package Manager) installed on your system.

2. Create a new directory for your React project and navigate into it using your terminal or command prompt.

3. Create a new React project by running the following command:
            npx create-react-app fibonacci-app
This command will create a new React project in a directory named `fibonacci-app`. You can choose any other suitable name if you like.

4. Navigate into the newly created project directory:

            cd fibonacci-app

5. Replace the contents of the `src/App.js` file with the code for the `Fibonacci` component. You can remove the existing code in `App.js` and paste the code I provided for the `Fibonacci` component.

6. Save the changes to `App.js`.

7. Now, start the React development server by running the following command:

            npm start
This will launch your React application, and you can access it in your web browser at `http://localhost:3000`.

You should see the Fibonacci input form with an input field and a button. You can now input any number into the input field, click the "Generate Fibonacci Series" button, and it will display the Fibonacci series up to the given number below the form.

Remember that this code assumes you have a proper React development environment set up. If you encounter any issues or errors, make sure to follow the steps correctly, and if necessary, double-check your Node.js and npm installations.
*/