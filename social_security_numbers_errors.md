### Errors

### Feature not available

#### Response example

```
HTTP/1.1 403 Not Found
```

```json
{
  "message": "Feature not available."
}
```

When the feature is not activated for the user identity.

### No organization

#### Response example

```
HTTP/1.1 403 Not Found
```

```json
{
  "message": "No organization loaded."
}
```
When the user identity is not linked to an organization.

### Not found

#### Response example

```
HTTP/1.1 404 Not Found
```

```json
{
  "message": "Not found."
}
```

While `404 Not Found` is most often associated with resources that don't exist when making a `GET` request, please note that `404 Not Found` is also the response during `POST`, `PUT`, and `PATCH` requests if any resources specified by parameters cannot be found.
