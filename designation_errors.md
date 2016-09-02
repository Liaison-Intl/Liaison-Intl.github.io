### Errors

#### Response Example

```
HTTP/1.1 422 Unprocessable Entity
```

```json
{
  "errors": {
    "schema": [
      "The property '#/designation/decision_id' of type String did not match the following type: integer"
    ]
  }
}
```

The request body did not match the expected request schema.  Please check your parameters and try again.
