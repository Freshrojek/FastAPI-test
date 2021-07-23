FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

RUN pip install fastapi uvicorn

COPY ./app /app/


EXPOSE 80

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]