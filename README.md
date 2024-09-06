# Docker - HFC Wardriving Kit

Para cargar el contenedor en la máquina local
```bash
docker load -i hfc_kismet.tar
```


### Para correr el contenedor
```bash
docker run -d hfc_kismet --privileged --network=host --pid=host wardriving_hfc:latest
```


> Credenciales de kismet --> hfc_user:wardrive

# Para abrir una shell
```bash
docker exec -it $(docker ps -a | grep hfc | awk '{print $1}' | head -n 1) /bin/bash
```

Si la máquina no logra conectarse al gpsd, se recomienda verificar que hay visibilidad (puede ser con netcat, ya está instalada)

```bash
nc 0.0.0.0 2947
```

Se espera una respuesta como `{"class":"VERSION","release":"3.22","rev":"3.22","proto_major":3,"proto_minor":14}`


si se tiene esta salida pero kismet no muestra información del gpsd, se recomienda reiniciar el contenedor sin desconectar nada

```bash
docker restart $(docker ps -a | grep hfc | awk '{print $1}' | head -n 1)
```
