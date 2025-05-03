FROM codercom/code-server:latest

USER root

RUN apt update && apt install -y curl git unzip \
 && curl -fsSL https://deno.land/install.sh | sh \
 && deno install -g npm:@danielx/civet

ENV PATH="/root/.deno/bin:$PATH"

EXPOSE 8080

CMD ["code-server", "--host", "0.0.0.0", "--port", "8080", "--auth", "none"]
