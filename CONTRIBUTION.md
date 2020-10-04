# Steps for Contribution 

**1.** Fork this repository. This will make you to create a copy of this repository under our github account.<br>
**2.** Clone the forked repository by using the following command.<br>
        
        git clone "https://github.com/<your-github-username>/fibonacci_series"

**3.** Create a new branch or just use the main branch
 - To create a new branch

        cd fibonacci_series
        git checkout -b <your-branch-name>

**4.** Check out the [Languages.md](Languages.md) and search for the programming language that you want to code the program.
 - If the particular programming language exists, it means that someone has written the program in that language. 
   - Don't feel down. However you can see the existing code and changes to the exsiting program is highly welcome if you write the program even simpler.
 - If you didn't find the programming language that you want to code.  
    - Create a new file name as follows

            fibonacci.<extension_of_particular_language>

            e.g., fibonacci.py or fibonacci.c

**5.** Create a new program in different Programming language or Make necessary changes to the existing code.

**6.** Once You're are done with your changes commit them by the following commands.

        git add files-you-edited
        git commit -m "Commit message"

**7.** Push your changes to Github

        git push origin <current-branch-name>

        eg., if you're on main branch,
                git push origin main 

**8.** Create a pull Request
 - If you go to your repository on GitHub, you’ll see a <button>Compare & pull request</button> button. Click on that button. We'll review your code and merge it if it passes all the tests.

Happy Coding !!!