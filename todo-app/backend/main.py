from api.v1.endpoints import tasks
from fastapi import FastAPI

app = FastAPI(
    title="Todo FastAPI Project",
    version="0.1.0",
)

app.include_router(tasks.router, prefix="/items", tags=["items"])
