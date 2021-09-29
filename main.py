from fastapi import FastAPI, Path

app = FastAPI()


@app.get('/')
async def home():
    return 'FastAPI app'


@app.get('/{name}')
async def get_name(name: str = Path(..., title='Name')):
    return f'Your name is {name}'
