import express from "express";

const PORT = process.env.PORT || 5000

const app = express()

app.use(express.json())

app.listen(PORT, () => console.log(`server run http://localhost:${PORT}`))