# Pokescript - Script de Bash

- Recibe un parametro que sea el nombre de un Pokemon
- Usa el comando curl para consultar la PokeApi
- Usa jq para parsear el resultado
- Imprime los siguientes datos 
  - id
  - name
  - weight
  - height
  - order.
- Imprime como se muestra en el siguiente ejemplo:

```
$> bash pokescript.sh ditto

Ditto (No. 132)
Id = 214
Weight = 40
Height = 4
```
