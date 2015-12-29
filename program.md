---
layout: default
title: Program
---

## <a name="resource-program"></a>Program

An applicant applies to a **program** at an organization.

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **href** | *string* | Hypertext reference to this resource.<br/> **pattern:** <code>/api/v1/user_identities/\d+/programs</code> | `"/api/v1/user_identities/1/programs"` |
| **programs/id** | *integer* | Unique identifier of this program. | `42` |
| **programs/name** | *string* | Human-readable name of this program.  Likely to be repeated between organizations. | `"Potions"` |
| **programs/organization_name** | *nullable string* | Human-readable name of organization whose program this is. | `"Hogwarts School of Witchcraft and Wizardry"` |

### Program List

List existing programs.

```
GET /api/v1/user_identity/:user_identity_id/programs
```


#### Curl Example

```bash
$ curl -n https://api.webadmit.org/api/v1/user_identity/:user_identity_id/programs
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "href": "/api/v1/user_identities/1/programs",
  "programs": [
    {
      "id": 42,
      "name": "Potions",
      "organization_name": "Hogwarts School of Witchcraft and Wizardry"
    }
  ]
}
```


