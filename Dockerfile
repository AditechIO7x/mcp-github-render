FROM node:20-slim

WORKDIR /app

RUN npm install -g supergateway @modelcontextprotocol/server-github

CMD ["sh", "-c", "supergateway --stdio 'npx -y @modelcontextprotocol/server-github' --port ${PORT:-8080}"]
