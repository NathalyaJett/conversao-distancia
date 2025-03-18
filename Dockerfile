# Usando a imagem oficial do Python como base
FROM python:3.9-slim

WORKDIR /app

COPY . .

# Instalando as dependências da aplicação
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta 5000 para a aplicação
EXPOSE 5000

CMD ["python", "app.py"]