### Errors

#### Response Example

```
HTTP/1.1 422 Unprocessable Entity
```

```json
{
  "errors": {
    "schema": [
      "The property '#/' did not contain a required property of 'custom_field_answers'"
    ]
  }
}
```

The request body did not match the expected request schema. Please check your parameters and try again.

```json
{
  "errors": {
    "schema": [
      "The property '#/custom_question_answers/0/applicant_cas_id' of type Fixnum did not match the following type: string"
    ]
  }
}
```

The request body did not match the expected value type. In that example, the `applicant_cas_id` property of the first object (that is, at the `0` index) must be a String, not an Integer.
