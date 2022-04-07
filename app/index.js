const express = require('express')
const app = express()
const port = 3000

app.use(express.static(__dirname + '/public'))
app.get('/test', (req, res) => res.send('SERVER RUNNING!'))
app.listen(port, () => {
    console.log(`Servidor corriendo en el puerto:${port}`)
})

