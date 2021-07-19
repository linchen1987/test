const url = process.env.GITPOD_WORKSPACE_URL;

const cyan = s => `\u001B[36m${s}\u001B[39m`
const bold = s => `\u001B[1m${s}\u001B[22m`

console.log('')
console.log(bold('You can now view ABT Node in the browser:'))
console.log('')
console.log('-', cyan(url.replace('https://', 'https://8080-') + '/admin'))
console.log('')