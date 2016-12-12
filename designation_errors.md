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

```
HTTP/1.1 422 Unprocessable Entity
```

```json
{
  "errors": {
    "decision_id": [
      "Can't set the decision_id when the local_status is not null"
    ]
  }
}
```

You'll get this error when you're trying to set a `decision_id` to a designation which already has a local status assigned. If you want to be able to force the `decision_id` please contact Liaison to turn on the "Disassociate Decision Codes from Local Status" feature which will allow you to set the decision even if the `local_status` is present.
