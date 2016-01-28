---
layout: default
title: Custom Field Answer
---

## Custom Field Answer

A **custom field answer** stores arbitrary data about an applicant, answering the question posed by a **custom field**.

Several types can be stored, as determined by the `field_type` value of the **custom field**.  The allowed types are as follows:

* [Boolean](custom_field_answer_boolean.html)
* [Number](custom_field_answer_number.html)
* [Date](custom_field_answer_date.html)
* [String](custom_field_answer_string.html)
* [Select](custom_field_answer_select.html)

The API is similar for each.  The major difference is determined by the allowed `value` for a given `field_type`.  Please refer to the documentation for a given type for more information.
