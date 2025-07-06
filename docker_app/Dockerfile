FROM --platform=linux/arm64 python:3.12
EXPOSE 8501
WORKDIR /app
ENV VIRTUAL_ENV=/opt/venv
ENV UV_PROJECT_ENVIRONMENT=$VIRTUAL_ENV
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
RUN pip3 install --upgrade pip && pip3 install uv
COPY uv.lock ./uv.lock
COPY pyproject.toml ./pyproject.toml
RUN uv sync
COPY . .

# # Command overriden by docker-compose
CMD streamlit run app.py
