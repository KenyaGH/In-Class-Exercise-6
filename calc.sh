function add() {
    echo '$1 + $2 = $(($1 + $2))'
}

function substract() {
    echo '$1 - $2 = $(($1 - $2))'
}

while true; do
  echo "Enter operation: add/sub or type 'exit' to quit"
  read -r op 

  if [[ "$op" == "exit" ]]; then
    echo "Goodbye!"
    break

  fi

  echo "Enter first number:"
  read -r num1
  echo "Enter second number:"
  read -r num2
   fi
done