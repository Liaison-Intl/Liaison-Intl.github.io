### Not Found

#### Response Example

```
HTTP/1.1 404 Not Found
```

```json
{
  "message": "Not Found"
}
```

While `404 Not Found` is most often associated with resources that don't exist when making a `GET` request, please note that `404 Not Found` is also the response during `POST`, `PUT`, and `PATCH` requests if any resources specified by parameters cannot be found.
