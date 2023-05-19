FROM python:3

WORKDIR /app

COPY californiahousing_priceprediction.ipynb .
COPY Model_selection_and_training.ipynb .
COPY dataset dataset/
COPY images images/
COPY requirements.txt .

ARG username=jupyter
RUN adduser ${username}
RUN chown ${username}:${username} /app
RUN apt update && apt upgrade -y
RUN pip install -r requirements.txt

USER jupyter
EXPOSE 8888

CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser"]