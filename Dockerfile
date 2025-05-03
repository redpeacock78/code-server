FROM codercom/code-server:latest

USER root

RUN apt update && apt install -y curl git \
 && curl -fsSL https://deno.land/install.sh | sh \
 && npm install -g civet

ENV PATH="/root/.deno/bin:$PATH"

EXPOSE 8080

CMD ["code-server", "--host", "0.0.0.0", "--port", "8080", "--auth", "none"]
