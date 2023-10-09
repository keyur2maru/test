const express = require('express');
const app = express();
const PORT = 8080;

app.get('/', (req, res) => {
    res.send('Hello World from dummy-service!');
});

app.listen(PORT, () => {
    console.log(`dummy-service running on port ${PORT}`);
});
