from datetime import datetime
from pydantic import BaseModel
from typing import Optional


class BaseModelModify(BaseModel):
    id: Optional[int] = None

class User(BaseModelModify):
    login: str
    password : str

class Personal(User):
    power_level: int

class Product (BaseModelModify):
    name: str
    discription: str
    price: int

class Cart(BaseModelModify):
    productId: int
    amount: int
    userId: int



