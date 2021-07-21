FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

COPY ./app /app/

RUN pip install fastapi

EXPOSE 5000

CMD ["uvicorn", "main:app"]