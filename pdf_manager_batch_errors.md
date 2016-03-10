### Errors

#### Response Example

```
HTTP/1.1 422 Unprocessable Entity
```

```json
{
  "errors": {
    "schema": ["The property '#/pdf_manager_batch/callback' value \"http://example.webadmit.org\" did not match the regex '^https://'"]
  }
}
```
