var mysql = require("mysql");
var inquirer = require("inquirer");
// var Table = require('');

// create the connection information for the sql database
var connection = mysql.createConnection({
    host: "localhost",
  
    // Your port; if not 3306
    port: 3306,
    user: "root",
    password: "22@Beeper22",
    database: "bamazon_db"
});

// connect to the mysql server and sql database
connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId + "\n");
    // run the start function after the connection is made to prompt the user
    start();
  });

  // function which prompts the user for what action they should take
function start() {
    inquirer
      .prompt({
        name: "Shop",
        type: "list",
        message: "Would you like to [Shop]?",
        choices: ["Shop", "EXIT"]
      })
      .then(function(answer) {
        // based on their answer, either call the bid or the post functions
        if (answer.Bid === "Shop") {
          shopBamazon();
        }
        else if(answer.postOrBid === "Exit") {
          connection.end();
        } else{
          connection.end();
        }
      });

      function shopBamazon() {
          console.log("searching for products...\n");
          var query = connection.query(
              "INSERT INTO products SET ?",
              {
                  product_name: "toaster",
                  department_name: "kitchen",
                  price: 10.00,
                  stock_quantity: 30
            },
            function(err,res) {
                console.log(res.affectedRows + " product inserted!\n");
                updateProduct();
            }
          );

          console.log(query.sql);
      }
      function updateProduct() {
          console.log("Updating all products...\n")
          var query = connection.query(
              "UPDATE products SET ? Where?",
              [
                  { quaantity: 30
                },
                {
                    product_name: "toaster"
                }
              ],
        function(err, res) {
            console.log(res.affectedRows + "products updated!\n");

            deleteProduct();
        }
          );
        console.log(query.sql);
      }
  }
