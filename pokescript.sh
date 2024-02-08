#!/bin/bash

if [ -z "$1" ]; then
    echo "Se necesita indicar el nombre del pokemon";
    exit
fi

api_data=$(curl -s "https://pokeapi.co/api/v2/pokemon/$1");

if [ "$api_data" = "Not Found" ] || [ -z "$api_data" ]; then 
    echo "Pokemon incorrecto";
else
    id=$(echo "$api_data" | jq '.id');
    name=$(echo "$api_data" | jq '.name');
    weight=$(echo "$api_data" | jq '.weight');
    height=$(echo "$api_data" | jq '.height');
    order=$(echo "$api_data" | jq '.order');

    echo "$name (No. $id)";
    echo "Id = $id";
    echo "Weight = $weight";
    echo "Height = $height";
    echo "Order = $order";
fi

exit;


