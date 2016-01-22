---
layout: default
title: Custom Field Answer (Select)
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-custom_field_answer_select"></a>Custom Field Answer (Select)</h2>

<p>A <strong>custom field answer</strong> stores arbitrary data about an applicant, answering the question posed by a <strong>custom field</strong>.</p>


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
<td><strong>custom_field_answer:href</strong></td>
<td><em>string</em></td>
<td>Hypertext reference to this resource.<br/> <strong>pattern:</strong> <code>/api/v1/user_identities/\d+/programs/\d+/applicants_by_cas_id/\d+/custom_field_answers/\d+</code></td>
<td><code>&quot;/api/v1/user_identities/1/programs/2/applicants_by_cas_id/3/custom_field_answers/4&quot;</code></td>
</tr>
<tr>
<td><strong>custom_field_answer:custom_field_id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of the <strong>custom field</strong> that this answers.</td>
<td><code>4</code></td>
</tr>
<tr>
<td><strong>custom_field_answer:label</strong></td>
<td><em>string</em></td>
<td>Human-readable label of the <strong>custom field</strong> that this answers.</td>
<td><code>&quot;Preferred house&quot;</code></td>
</tr>
<tr>
<td><strong>custom_field_answer:field_type</strong></td>
<td><em>string</em></td>
<td>Type of data that the <strong>custom field</strong> stores.<br/> <strong>one of:</strong><code>&quot;select&quot;</code></td>
<td><code>&quot;select&quot;</code></td>
</tr>
<tr>
<td><strong>custom_field_answer:value</strong></td>
<td><em>nullable string</em></td>
<td>The select value stored as an answer to the <strong>custom field</strong>.  The value must be one of the valid values configured on the custom field.</td>
<td><code>&quot;Gryffindor&quot;</code></td>
</tr>
</tbody></table>

<h3>Custom Field Answer (Select) Show</h3>

<p>Display an existing custom field answer.</p>

<pre><code>GET /api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:cas_id/custom_field_answers/:custom_field_id
</code></pre>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:cas_id/custom_field_answers/:custom_field_id \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 200 OK
</code></pre>

<pre lang="json"><code>{
  &quot;custom_field_answer&quot;: {
    &quot;href&quot;: &quot;/api/v1/user_identities/1/programs/2/applicants_by_cas_id/3/custom_field_answers/4&quot;,
    &quot;custom_field_id&quot;: 4,
    &quot;label&quot;: &quot;Preferred house&quot;,
    &quot;field_type&quot;: &quot;select&quot;,
    &quot;value&quot;: &quot;Gryffindor&quot;
  }
}
</code></pre>

<h3>Custom Field Answer (Select) Store</h3>

<p>Store a <strong>custom field</strong> value.  If a value has not previously been stored, this <em>creates</em> an answer.  Otherwise, this <em>updates</em> an existing answer.</p>

<pre><code>PUT /api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:cas_id/custom_field_answers/:custom_field_id
</code></pre>

<h4>Required Parameters</h4>

<table><thead>
<tr>
<th>Name</th>
<th>Type</th>
<th>Description</th>
<th>Example</th>
</tr>
</thead><tbody>
<tr>
<td><strong>custom_field_answer:field_type</strong></td>
<td><em>string</em></td>
<td>Type of data that the <strong>custom field</strong> stores.<br/> <strong>one of:</strong><code>&quot;select&quot;</code></td>
<td><code>&quot;select&quot;</code></td>
</tr>
<tr>
<td><strong>custom_field_answer:value</strong></td>
<td><em>nullable string</em></td>
<td>The select value to be stored as an answer to the <strong>custom field</strong>.  The value must be one of the valid values configured on the custom field.</td>
<td><code>&quot;Gryffindor&quot;</code></td>
</tr>
</tbody></table>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n -X PUT https://api.webadmit.org/api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:cas_id/custom_field_answers/:custom_field_id \
  -H &quot;Content-Type: application/json&quot; \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot; \
 \
  -d &#39;{
  &quot;custom_field_answer&quot;: {
    &quot;field_type&quot;: &quot;select&quot;,
    &quot;value&quot;: &quot;Gryffindor&quot;
  }
}&#39;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 200 OK
</code></pre>

<pre lang="json"><code>{
  &quot;custom_field_answer&quot;: {
    &quot;href&quot;: &quot;/api/v1/user_identities/1/programs/2/applicants_by_cas_id/3/custom_field_answers/4&quot;,
    &quot;custom_field_id&quot;: 4,
    &quot;label&quot;: &quot;Preferred house&quot;,
    &quot;field_type&quot;: &quot;select&quot;,
    &quot;value&quot;: &quot;Gryffindor&quot;
  }
}
</code></pre>

<h3>Custom Field Answer (Select) Destroy</h3>

<p>Clear an existing custom field answer.</p>

<pre><code>DELETE /api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:cas_id/custom_field_answers/:custom_field_id
</code></pre>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n -X DELETE https://api.webadmit.org/api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:cas_id/custom_field_answers/:custom_field_id \
  -H &quot;Content-Type: application/json&quot; \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 200 OK
</code></pre>

<pre lang="json"><code>{
  &quot;custom_field_answer&quot;: {
    &quot;href&quot;: &quot;/api/v1/user_identities/1/programs/2/applicants_by_cas_id/3/custom_field_answers/4&quot;,
    &quot;custom_field_id&quot;: 4,
    &quot;label&quot;: &quot;Preferred house&quot;,
    &quot;field_type&quot;: &quot;select&quot;,
    &quot;value&quot;: null
  }
}
</code></pre>

<h3>Errors</h3>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 422 Unprocessable Entity
</code></pre>

<pre lang="json"><code>{
  &quot;errors&quot;: {
    &quot;value&quot;: [&quot;\&quot;XYZ\&quot; is not a valid option (expected \&quot;Gryffindor\&quot;, \&quot;Hufflepuff\&quot;, \&quot;Ravenclaw\&quot;, or \&quot;Slytherin\&quot;)&quot;]
  }
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

<h3>Unauthorized</h3>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 401 Unauthorized
</code></pre>

<p>(Empty response body.)</p>

