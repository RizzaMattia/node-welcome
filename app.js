const express = require('express');
const app = express();
const port = 3000;

// Quando visiti la home, stampa "Benvenuto!" su una pagina web
app.get('/', (req, res) => {
  res.send('<h1>Benvenuto!</h1>');
});

// Avvia il server
app.listen(port, () => {
  console.log(`Server in esecuzione su http://localhost:${port}`);
});
