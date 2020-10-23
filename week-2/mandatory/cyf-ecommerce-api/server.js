const express = require("express");
const app = express();
const { Pool } = require("pg");

const pool = new Pool({
  user: "postgres",
  host: "localhost",
  database: "cyf_ecommerce",
  password: "postgres",
  port: 5432,
});

app.get("/customers", (req, res) => {
  pool.query("select * from customers;", (error, result) => {
    console.log("the result:", res.json(result.rows));
    res.json(result.rows);
  });
});

app.get("/suppliers", (req, res) => {
  pool.query("select * from suppliers;", (error, result) => {
    console.log("the result:", res.json(result.rows));
    res.json(result.rows);
  });
});

app.get("/products", (req, res) => {
  pool.query(
    "select products.product_name,suppliers.supplier_name from products inner join suppliers on products.supplier_id=suppliers.id;",
    (error, result) => {
      console.log("the result:", res.json(result.rows));
      res.json(result.rows);
    }
  );
});

app.listen(3000, () => {
  console.log("I'm listening :)");
});
