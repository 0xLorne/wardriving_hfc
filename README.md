# Docker - HFC Wardriving Kit

<img src="https://uploads-public.hackmd.io/upload_bc48125849c8ad9fe14a24139af1d3a0.jpg" alt="HFC Logo" width="150"/>


Kit de Wardriving v1.0

Una imagen de docker con las configuraciones necesarias para preparar el ambiente y realizar Wardriving de manera fácil y rápida.

## Requisitos Previos

- Tener Docker instalado en el sistema
- Contar con un mouse GPS (Deseable vk-162)
- Contar con una antena capaz de usar el modo monitor (Deseable Antena externa: Omnidireccional, Direccional o Parabólica)
- Permisos administrativos (root) 



## Como usar

Se debe dar permisos de ejecución a los scripts de bash

```bash
chmod +x ./build.sh ./run.sh
```

de otra manera, se debe llamar a bash para ejecutar el script sin permisos

```bash
bash ./build.sh && bash ./run.sh
```

no debería generar conflictos al iniciar con gpsd, pero se necesita tener conectado el mouse gps antes de iniciar el contenedor.


Para mayor información, consultar: [https://hackersfight.club/wardriving/](https://hackersfight.club/wardriving/)
