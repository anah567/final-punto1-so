# Final Sistemas Operativos - Punto 1

Despliegue de una aplicación FastAPI en AWS Lambda utilizando contenedores Docker y Amazon ECR.

---

# Integrantes

- Ana Sofía Henao

---

# Tecnologías utilizadas

- FastAPI
- Mangum
- Docker
- AWS Lambda
- Amazon ECR
- Bash
- AWS CLI

---

# Estructura del proyecto

```bash
lambda_final/
│
├── app.py
├── requirements.txt
├── Dockerfile
├── deploy.sh
└── README.md
```

---

# Aplicación FastAPI

## Endpoint raíz

```http
GET /
```

### Respuesta

```json
{
    "message": "API funcionando correctamente."
}
```

---

## Endpoint saludo

```http
GET /api/hello?name=Ana
```

### Respuesta

```json
{
    "message": "Hola, Ana! Bienvenido a FastAPI en Lambda."
}
```

---

# Comandos utilizados

## Dar permisos al script

```bash
chmod +x deploy.sh
```

---

## Ejecutar despliegue

```bash
./deploy.sh
```

---

## Consumir endpoint con curl

```bash
curl "https://2iqrthoioi4xy2mlk6nyodzqbu0lcdki.lambda-url.us-east-2.on.aws/api/hello?name=Ana"
```

---

# Evidencias realizadas

- Construcción de imagen Docker
- Push de imagen a Amazon ECR
- Creación de función Lambda
- Configuración de Function URL
- Consumo de endpoint utilizando curl

---


# Ejecución local 

## Instalar dependencias

```bash
pip install -r requirements.txt
```

---

## Ejecutar FastAPI localmente

```bash
uvicorn app:fastapi --reload
```

---

## Probar localmente

Abrir en el navegador:

```bash
http://127.0.0.1:8000
```

y

```bash
http://127.0.0.1:8000/api/hello?name=Ana
```

---

# Resultado final esperado

- Aplicación FastAPI funcionando correctamente en AWS Lambda.
- Imagen Docker almacenada en Amazon ECR.
- Endpoint accesible mediante Function URL.
- Respuesta JSON correcta desde los endpoints.
- Proyecto almacenado en GitHub con todos los archivos utilizados.

---

# Link del chat
https://chatgpt.com/share/6a158682-fcd4-83e9-810d-81e2e7ef96e6
