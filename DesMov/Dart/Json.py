import json

json_string = '{"nombre": "Juan", "edad": 30}'
datos = json.loads(json_string)
print(datos["nombre"])


usuario = {"nombre": "Juan", "edad": 30}
json_output = json.dumps(usuario)
print(json_output)


