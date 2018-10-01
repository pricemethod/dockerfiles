const express = require('express');
const path = require('path');
const morgan = require('morgan');
const compression = require('compression');

const app = express();

let directory = process.env.BUILD_DIRECTORY;
let port = process.env.PORT || 3300;

app.use(compression());
app.use(morgan('common'));
app.use(express.static(path.join(__dirname, directory)));
app.get('/*', (req, res) => {
    res.sendFile(path.join(__dirname, directory, 'index.html'));
});

app.listen(port, () => console.log(`Listening on ${port}`));
