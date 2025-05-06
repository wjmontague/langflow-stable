FROM python:3.10-slim

WORKDIR /app

# Install Poetry
RUN pip install poetry

# Copy your code
COPY . .

# Install dependencies
RUN poetry install

EXPOSE 7860

# Start LangFlow
CMD ["poetry", "run", "langflow", "run", "--host", "0.0.0.0", "--port", "7860"]
