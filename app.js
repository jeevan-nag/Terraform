const http = require('http');

const hostname = 'localhost';
const port = 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello World\n');
});


server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});

// const a = require('E:/G1_Projects/Terraform/learning-terraform/tfkey.ppk')

// const fs = require('fs');
// const { Client } = require('ssh2');

// const privateKey = fs.readFileSync('E:/G1_Projects/Terraform/learning-terraform/tfkey.ppk');
// const conn = new Client();

// conn.on('ready', () => {
//   console.log('Client :: ready');
//   conn.exec('echo "Hello World"', (err, stream) => {
//     if (err) throw err;
//     stream.on('close', (code, signal) => {
//       console.log(`Stream :: close :: code: ${code}, signal: ${signal}`);
//       conn.end();
//     }).on('data', (data) => {
//       console.log(`STDOUT: ${data}`);
//     }).stderr.on('data', (data) => {
//       console.log(`STDERR: ${data}`);
//     });
//   });
// }).connect({
//   host: '15.223.113.130',
//   port: 22,
//   username: 'Server',
//   privateKey,
// });
