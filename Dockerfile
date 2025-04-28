FROM --platform=linux/amd64 amazon/aws-cli:2.24.1

ENV TERRAFORM_VERSION=1.11.3

VOLUME ["/work"]

WORKDIR /work

RUN yum -y update && \
    yum -y install \
        bash \
        ca-certificates \
        git \
        openssl \
        unzip \
        zip \
        wget \
        curl \
        jq && \
    curl -sL https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -o /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin && \
    rm -rf /var/tmp/ && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/yum

ENTRYPOINT [ "terraform" ]

CMD [ "--version" ]
