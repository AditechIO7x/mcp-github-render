FROM node:20-slim

WORKDIR /app

RUN npm install -g supergateway @modelcontextprotocol/server-github

CMD ["sh", "-c", "supergateway --sse --port ${PORT:-8080} --cmd 'npx -y @modelcontextprotocol/server-github'"]
