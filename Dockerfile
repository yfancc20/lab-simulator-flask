### Build and install packages
FROM python:3.7

# Install Python dependencies
COPY requirements.txt /app/
COPY plugin_example/ app/plugin_example/
WORKDIR /app
RUN python3.7 -m pip install -i https://pypi.douban.com/simple -r requirements.txt

COPY . /app
WORKDIR /app

CMD ["flask", "run"]
