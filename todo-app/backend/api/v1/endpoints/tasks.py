from fastapi import APIRouter, HTTPException

router = APIRouter()

items = {
    1: {"name": "Item 1", "description": "This is item 1"},
    2: {"name": "Item 2", "description": "This is item 2"},
}


@router.get("/")
async def get_items():
    return items


@router.get("/{item_id}")
async def get_item(item_id: int):
    item = items.get(item_id)
    if not item:
        raise HTTPException(status_code=404, detail="Item not found")
    return item
