## Hello Enclave

`Hello World` Node.js app that writes "hello world" to console every 5 seconds for [AWS Nitro Enclave](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html)

Clone repo:

    git clone https://github.com/ehmad11/hello-enclave

Build image:

    docker build -t hello hello-enclave

Optional: Run 

    docker run --name hello hello

Build enclave:

    nitro-cli build-enclave --docker-uri hello --output-file hello.eif

Run enclave:

    nitro-cli run-enclave --cpu-count 2 --memory 4000 --enclave-cid 17 --eif-path hello.eif --debug-mode

Describe enclaves:

    nitro-cli describe-enclaves

View console:

    nitro-cli console --enclave-id [replace-enclave-id]
