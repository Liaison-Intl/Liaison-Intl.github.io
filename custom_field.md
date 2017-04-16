---
layout: default
title: Custom Field
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-custom_field">Custom Field</a></h2>

<p>A <strong>custom field</strong> defines an abstract field that admissions staff can use to store arbitrary data about an applicant.  The data itself is stored in a <strong>custom field answer</strong>.</p>


<h3>Attributes</h3>

<table><thead>
<tr>
<th>Name</th>
<th>Type</th>
<th>Description</th>
<th>Example</th>
</tr>
</thead><tbody>
<tr>
<td><strong>custom_fields/field_type</strong></td>
<td><em>string</em></td>
<td>The type of data that this field stores.<br/> <strong>one of:</strong><code>&quot;boolean&quot;</code> or <code>&quot;number&quot;</code> or <code>&quot;date&quot;</code> or <code>&quot;string&quot;</code> or <code>&quot;select&quot;</code></td>
<td><code>&quot;select&quot;</code></td>
</tr>
<tr>
<td><strong>custom_fields/id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier for this custom field.</td>
<td><code>4</code></td>
</tr>
<tr>
<td><strong>custom_fields/label</strong></td>
<td><em>string</em></td>
<td>Human-readable name of this custom field.</td>
<td><code>&quot;Preferred house&quot;</code></td>
</tr>
<tr>
<td><strong>custom_fields/options</strong></td>
<td><em>nullable array</em></td>
<td>When <code>field_type</code> is <code>&quot;select&quot;</code>, this defines the list of allowed values for the field.  Otherwise, this is <code>null</code>.</td>
<td><code>[&quot;Gryffindor&quot;,&quot;Hufflepuff&quot;,&quot;Ravenclaw&quot;,&quot;Slytherin&quot;]</code></td>
</tr>
<tr>
<td><strong>href</strong></td>
<td><em>string</em></td>
<td>Hypertext reference to this resource.<br/> <strong>pattern:</strong> <code>/api/v1/user_identities/\d+/programs/\d+/custom_fields</code></td>
<td><code>&quot;/api/v1/user_identities/1/programs/42023191739237/custom_fields&quot;</code></td>
</tr>
</tbody></table>

<h3><a name="link-GET-custom_field-/api/v1/user_identities/:user_identity_id/programs/:program_id/custom_fields">Custom Field List</a></h3>

<p>List existing custom fields.</p>

<pre><code>GET /api/v1/user_identities/:user_identity_id/programs/:program_id/custom_fields
</code></pre>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v1/user_identities/:user_identity_id/programs/:program_id/custom_fields \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 200 OK
</code></pre>

<pre lang="json"><code>{
  &quot;href&quot;: &quot;/api/v1/user_identities/1/programs/42023191739237/custom_fields&quot;,
  &quot;custom_fields&quot;: [
    {
      &quot;id&quot;: 4,
      &quot;label&quot;: &quot;Preferred house&quot;,
      &quot;field_type&quot;: &quot;select&quot;,
      &quot;options&quot;: [
        &quot;Gryffindor&quot;,
        &quot;Hufflepuff&quot;,
        &quot;Ravenclaw&quot;,
        &quot;Slytherin&quot;
      ]
    }
  ]
}
</code></pre>

<h3>Not Found</h3>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 404 Not Found
</code></pre>

<pre lang="json"><code>{
  &quot;message&quot;: &quot;Not Found&quot;
}
</code></pre>

<p>While <code>404 Not Found</code> is most often associated with resources that don&#39;t exist when making a <code>GET</code> request, please note that <code>404 Not Found</code> is also the response during <code>POST</code>, <code>PUT</code>, and <code>PATCH</code> requests if any resources specified by parameters cannot be found.</p>

<h3>Unauthorized</h3>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 401 Unauthorized
</code></pre>

<p>(Empty response body.)</p>

