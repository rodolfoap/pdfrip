FROM rust
WORKDIR /
RUN git clone https://github.com/mufeedvh/pdfrip.git
RUN cd pdfrip/ && cargo build --release && cp -v ./target/release/pdfrip /usr/local/bin/ && rm -r /pdfrip/
WORKDIR /crack
