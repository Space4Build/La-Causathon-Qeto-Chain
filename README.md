# Qeto Chain

<img src="https://www.jesusalvan.com/qeto.jpeg" align="right"
     alt="Qeto Logo" width="120" height="178">

Qeto es una aplicacion mobile destinada a exponer los precios de los mercados informales en el pais.
En este proyecto usamos block chain con vara network, implementadolo en una api y una aplicacion mobile para su integracion.

Tenenmos dos principales features: 

* El primero son las reseñas que puede dejar un usuario en la aplicacion mobile por tienda(en base a su experiencia en su ultima compra) y reseñas por producto que puede dejar un usuario con respecto al precio(esto permitira verificar si en caso el precio fue el incorrecto calificar a la tienda con baja reputacion). 

* El segundo feature son la generacion de las reseñas para los usuarios que hayan hecho reseñas correctas basado en el analisis hecho por el admin de la aplicacion.

# Demo

* URL: https://drive.google.com/file/d/1xvsU5An7_JkWJxyPxLr72unMPXmVUpgb/view

# Slides de la Presentacion

* URL: https://docs.google.com/presentation/d/1qsDGXi-MyRQjSVMFhC2mgOoSZqeqPpS93iJcqwejeCA/edit?pli=1#slide=id.p

# Arquitectura

* Auth Smart Contract: Destinado en registrar los usuarios y verificar el usuario cuando se generen cupones.

* Coupons Smart Contract: Destinado en generar los cupones a los usuarios validos.

* Reviews Smart Contract: Destinado en almacenar las reseñas de los usuarios con respectos a las tiendas y productos.

# Proceso de Despliegue

* Primero nos dirigimos a cada uno de nuestros smart contracts y corremos cargo build --release y nos generara los archivos meta.txt y .opt.wasm. en la carpeta target por cada contract.

* Luego nos dirigimos a Gear y creamos un programa por cada contract.

* Luego cargamos los archivos .wasm y .txt para que nos despliegue nuestro contrato en vara network test.

* Una vez desplegados los contratos procedemos a levantar la api y colocamos en el archivo .env nuestro mnemonic, damos npm i y finalmente npm run start.

* Finalmente levantamos la app mobile y procedemos a probar!
