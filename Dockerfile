# Use a imagem base do Python
FROM python:3.9-slim

# Configuração do diretório de trabalho
WORKDIR /app

# Copia os arquivos necessários para o diretório de trabalho
COPY . .

# Instala as dependências Python
RUN pip install -r requirements.txt

# Comando para executar a aplicação
CMD ["python", "app.py"]
