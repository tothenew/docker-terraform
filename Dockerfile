FROM --platform linux/x86_64 alpine:3.17

ENV TERRAFORM_VERSION=1.3.5
ENV AWSCLI_VERSION=2.9.1

VOLUME ["/work"]

WORKDIR /work

RUN apk --no-cache update && \
    apk --no-cache add \
        bash \
        ca-certificates \
        git \
        openssl \
        unzip \
        zip \
        wget \
        curl \
        python3-dev \
        py3-pip \
        py-setuptools \
        groff \
        less \
        jq \
        gettext-dev \
        g++ \
        alpine-sdk \
        make && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-$AWSCLI_VERSION.zip" -o "/tmp/awscliv2.zip" && unzip /tmp/awscliv2.zip && ./aws/install && rm -rf aws && \
    update-ca-certificates && \
    curl -sL https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -o /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin && \
    rm -rf /var/tmp/ && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/*

ENTRYPOINT [ "terraform" ]

CMD [ "--version" ]
