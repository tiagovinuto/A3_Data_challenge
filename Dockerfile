FROM python:3.11-alpine

WORKDIR /A3_Data_Technical_challenge/

COPY . .

RUN apk add --no-cache gcc g++ cmake
RUN apk add --no-cache gcc musl-dev python3-dev linux-headers
RUN apk add --no-cache gcc musl-dev rust cargo

RUN pip install -r requirements.txt

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root"]

