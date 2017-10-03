### Not Found

#### Specific error messages

When the user_identity is not found

```json
{
  "errors": {
    "schema": [
      "User identity '999' not found."
    ]
  }
}
```

When the program is not found

```json
{
  "errors": {
    "schema": [
      "Program '99999999999' not found."
    ]
  }
}
```


#### Generic error message (legacy error)

```
HTTP/1.1 404 Not Found
```

```json
{
  "message": "Not Found"
}
```

While `404 Not Found` is most often associated with resources that don't exist when making a `GET` request, please note that `404 Not Found` is also the response during `POST`, `PUT`, and `PATCH` requests if any resources specified by parameters cannot be found.
