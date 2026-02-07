# Python 3.12 with uv
FROM python:3.12-slim

# Install uv
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# Set working directory
WORKDIR /app/weather

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    UV_SYSTEM_PYTHON=1

# Copy application code
COPY . .

# Install dependencies (if any)
RUN uv sync --no-dev 2>/dev/null || uv pip install . 2>/dev/null || echo "No dependencies to install"

# Default command
CMD ["uv", "run", "weather.py"]
