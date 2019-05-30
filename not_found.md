### Not Found

#### Specific error messages

When the user_identity is not found

```json
{
  "message": "User identity '999' not found."
}
```

When the program is not found

```json
{
  "message": "Program '99999999999' not found."
}
```

When the applicant is not found

```json
{
  "message": "Applicant '99999999999' not found."
}
```

When the custom field is not found

```json
{
  "message": "CustomeField '99999999999' not found."
}
```

While these error messages are most often associated with resources that don't exist when making a `GET` request, please note that the same messages are also the response during `POST`, `PUT`, and `PATCH` requests if any resources specified by parameters cannot be found.

#### Generic error message (legacy error)

```
HTTP/1.1 404 Not Found
```

```json
{
  "message": "Not Found"
}
```

Liaison is currently phasing out this error message in favor of more descriptive messages.  If you encounter this message, please contact your Liaison representative with a detail description of the API request you made and one of our engineers will update the API.
