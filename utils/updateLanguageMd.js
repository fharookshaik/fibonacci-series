/*
use this file to update the Languages.md file. 
to run this script using the latest node
To know about installing node - https://nodejs.org/en
`node ./utils/updateLanguageMd.js`
*/

const { opendir, writeFile } = require("node:fs/promises");

const intro = `# Languages

Hello there!!

- The Fibonacci series program is already written or developed in the following languages. Feel free to check the code written in new languages.

- List of [programming languages](https://en.wikipedia.org/wiki/List_of_programming_languages)

## Code already developed in this programming language.

`;

const getLanguageList = async () => {
    const dir = await opendir("./fibonacci_series");
    const languages = [];
    for await (const dirent of dir) {
        languages.push(dirent?.name);
    }
    return languages;
};

const writeLanguageMd = async () => {
    const langs = await getLanguageList();
    langs.sort();
    const languagesList = langs.map((lang) => `- ${lang}`).join("\n") + "\n";
    await writeFile("./Languages.md", intro + languagesList);
};

writeLanguageMd();
