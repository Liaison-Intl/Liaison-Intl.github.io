---
layout: default
title: Custom Field Answer (Number)
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-custom_field_answer_number">Custom Field Answer (Number)</a></h2>
<p>A <strong>custom field answer</strong> stores arbitrary data about an applicant, answering the question posed by a <strong>custom field</strong>.</p>

<h3>Attributes</h3>
<table>
<thead>
<tr>
<th>Name</th>
<th>Type</th>
<th>Description</th>
<th>Example</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>custom_field_answer:custom_field_id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of the <strong>custom field</strong> that this answers.</td>
<td><code>4</code></td>
</tr>
<tr>
<td><strong>custom_field_answer:field_type</strong></td>
<td><em>string</em></td>
<td>Type of data that the <strong>custom field</strong> stores.<br/> <strong>one of:</strong><code>&quot;number&quot;</code></td>
<td><code>&quot;number&quot;</code></td>
</tr>
<tr>
<td><strong>custom_field_answer:href</strong></td>
<td><em>string</em></td>
<td>Hypertext reference to this resource.<br/> <strong>pattern:</strong> <code>/api/v1/user_identities/\d+/programs/\d+/applicants_by_cas_id/\d+/custom_field_answers/\d+</code></td>
<td><code>&quot;/api/v1/user_identities/1/programs/42023191739237/applicants_by_cas_id/3/custom_field_answers/4&quot;</code></td>
</tr>
<tr>
<td><strong>custom_field_answer:label</strong></td>
<td><em>string</em></td>
<td>Human-readable label of the <strong>custom field</strong> that this answers.</td>
<td><code>&quot;Age at admittance&quot;</code></td>
</tr>
<tr>
<td><strong>custom_field_answer:value</strong></td>
<td><em>nullable number</em></td>
<td>The numeric value stored as an answer to the <strong>custom field</strong>.</td>
<td><code>11.0</code></td>
</tr>
</tbody>
</table>
<h3><a name="link-GET-custom_field_answer_number-/api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:applicant_cas_id/custom_field_answers/:custom_field_id">Custom Field Answer (Number) Show</a></h3>
<p>Display an existing custom field answer.</p>
<pre><code>GET /api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:applicant_cas_id/custom_field_answers/:custom_field_id
</code></pre>
<h4>Curl Example</h4>
<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:applicant_cas_id/custom_field_answers/:custom_field_id \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>
<h4>Response Example</h4>
<pre><code>HTTP/1.1 200 OK
</code></pre>
<pre lang="json"><code>{
  &quot;custom_field_answer&quot;: {
    &quot;href&quot;: &quot;/api/v1/user_identities/1/programs/42023191739237/applicants_by_cas_id/3/custom_field_answers/4&quot;,
    &quot;custom_field_id&quot;: 4,
    &quot;label&quot;: &quot;Age at admittance&quot;,
    &quot;field_type&quot;: &quot;number&quot;,
    &quot;value&quot;: 11.0
  }
}
</code></pre>
<h3><a name="link-PUT-custom_field_answer_number-/api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:applicant_cas_id/custom_field_answers/:custom_field_id">Custom Field Answer (Number) Store</a></h3>
<p>Store a <strong>custom field</strong> value.  If a value has not previously been stored, this <em>creates</em> an answer.  Otherwise, this <em>updates</em> an existing answer.</p>
<pre><code>PUT /api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:applicant_cas_id/custom_field_answers/:custom_field_id
</code></pre>
<h4>Required Parameters</h4>
<table>
<thead>
<tr>
<th>Name</th>
<th>Type</th>
<th>Description</th>
<th>Example</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>custom_field_answer:field_type</strong></td>
<td><em>string</em></td>
<td>Type of data that the <strong>custom field</strong> stores.<br/> <strong>one of:</strong><code>&quot;number&quot;</code></td>
<td><code>&quot;number&quot;</code></td>
</tr>
<tr>
<td><strong>custom_field_answer:value</strong></td>
<td><em>nullable number</em></td>
<td>The numeric value to be stored as an answer to the <strong>custom field</strong>.</td>
<td><code>11.0</code></td>
</tr>
</tbody>
</table>
<h4>Curl Example</h4>
<pre lang="bash"><code>$ curl -n -X PUT https://api.webadmit.org/api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:applicant_cas_id/custom_field_answers/:custom_field_id \
  -d '{
  &quot;custom_field_answer&quot;: {
    &quot;field_type&quot;: &quot;number&quot;,
    &quot;value&quot;: 11.0
  }
}' \
  -H &quot;Content-Type: application/json&quot; \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>
<h4>Response Example</h4>
<pre><code>HTTP/1.1 200 OK
</code></pre>
<pre lang="json"><code>{
  &quot;custom_field_answer&quot;: {
    &quot;href&quot;: &quot;/api/v1/user_identities/1/programs/42023191739237/applicants_by_cas_id/3/custom_field_answers/4&quot;,
    &quot;custom_field_id&quot;: 4,
    &quot;label&quot;: &quot;Age at admittance&quot;,
    &quot;field_type&quot;: &quot;number&quot;,
    &quot;value&quot;: 11.0
  }
}
</code></pre>
<h3><a name="link-DELETE-custom_field_answer_number-/api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:applicant_cas_id/custom_field_answers/:custom_field_id">Custom Field Answer (Number) Destroy</a></h3>
<p>Clear an existing custom field answer.  (Same semantics as <code>PUT</code> with <code>&quot;value&quot;: null</code>.)  This is a &quot;soft delete&quot; that tracks who made the change.</p>
<pre><code>DELETE /api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:applicant_cas_id/custom_field_answers/:custom_field_id
</code></pre>
<h4>Curl Example</h4>
<pre lang="bash"><code>$ curl -n -X DELETE https://api.webadmit.org/api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:applicant_cas_id/custom_field_answers/:custom_field_id \
  -H &quot;Content-Type: application/json&quot; \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>
<h4>Response Example</h4>
<pre><code>HTTP/1.1 200 OK
</code></pre>
<pre lang="json"><code>{
  &quot;custom_field_answer&quot;: {
    &quot;href&quot;: &quot;/api/v1/user_identities/1/programs/42023191739237/applicants_by_cas_id/3/custom_field_answers/4&quot;,
    &quot;custom_field_id&quot;: 4,
    &quot;label&quot;: &quot;Age at admittance&quot;,
    &quot;field_type&quot;: &quot;number&quot;,
    &quot;value&quot;: null
  }
}
</code></pre>
<h3>Not Found</h3>
<h4>Specific error messages</h4>
<p>When the user_identity is not found</p>
<pre lang="json"><code>{
  &quot;message&quot;: &quot;User identity '999' not found.&quot;
}
</code></pre>
<p>When the program is not found</p>
<pre lang="json"><code>{
  &quot;message&quot;: &quot;Program '99999999999' not found.&quot;
}
</code></pre>
<p>When the applicant is not found</p>
<pre lang="json"><code>{
  &quot;message&quot;: &quot;Applicant '99999999999' not found.&quot;
}
</code></pre>
<p>When the custom field is not found</p>
<pre lang="json"><code>{
  &quot;message&quot;: &quot;CustomeField '99999999999' not found.&quot;
}
</code></pre>
<p>While these error messages are most often associated with resources that don't exist when making a <code>GET</code> request, please note that the same messages are also the response during <code>POST</code>, <code>PUT</code>, and <code>PATCH</code> requests if any resources specified by parameters cannot be found.</p>
<h4>Generic error message (legacy error)</h4>
<pre><code>HTTP/1.1 404 Not Found
</code></pre>
<pre lang="json"><code>{
  &quot;message&quot;: &quot;Not Found&quot;
}
</code></pre>
<p>Liaison is currently phasing out this error message in favor of more descriptive messages.  If you encounter this message, please contact your Liaison representative with a detail description of the API request you made and one of our engineers will update the API.</p>
<h3>Unauthorized</h3>
<h4>Response Example</h4>
<pre><code>HTTP/1.1 401 Unauthorized
</code></pre>
<p>(Empty response body.)</p>

