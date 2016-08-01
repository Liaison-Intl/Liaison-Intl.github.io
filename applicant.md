---
layout: default
title: Applicant
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-applicant"></a>Applicant</h2>

<p>An <strong>applicant</strong> applies to one or more <strong>programs</strong> through <strong>designations</strong>.  <strong>Programs</strong> render a <strong>decision</strong> for the <strong>designation</strong>.</p>


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
<td><strong>applicant:href</strong></td>
<td><em>string</em></td>
<td>Hypertext reference to this resource.<br/> <strong>pattern:</strong> <code>/api/v1/user_identities/\d+/programs/\d+/applicants_by_cas_id/\d+</code></td>
<td><code>&quot;/api/v1/user_identities/1/programs/2/applicants_by_cas_id/3&quot;</code></td>
</tr>
<tr>
<td><strong>applicant:cas_id</strong></td>
<td><em>string</em></td>
<td>The CAS ID for this applicant.  This identifier is used across Liaison systems to uniquely identify an applicant.  Think of it as having similar properties to a social security number (SSN), except that it&#39;s randomly assigned.</td>
<td><code>&quot;3&quot;</code></td>
</tr>
<tr>
<td><strong>applicant:decision</strong></td>
<td><em>nullable object</em></td>
<td></td>
<td><code>null</code></td>
</tr>
<tr>
<td><strong>applicant:decision:id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of this decision.</td>
<td><code>42</code></td>
</tr>
<tr>
<td><strong>applicant:decision:name</strong></td>
<td><em>string</em></td>
<td>Human-readable name for this decision.</td>
<td><code>&quot;Offer Accepted&quot;</code></td>
</tr>
<tr>
<td><strong>applicant:local_status</strong></td>
<td><em>nullable object</em></td>
<td></td>
<td><code>null</code></td>
</tr>
<tr>
<td><strong>applicant:local_status:id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of this local status.</td>
<td><code>123456</code></td>
</tr>
<tr>
<td><strong>applicant:local_status:title</strong></td>
<td><em>string</em></td>
<td>Human-readable title for this local status.</td>
<td><code>&quot;Accepted Offer&quot;</code></td>
</tr>
</tbody></table>

<h3>Applicant Show</h3>

<p>Display the applicant with the given CAS ID.</p>

<pre><code>GET /api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:cas_id
</code></pre>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:cas_id \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 200 OK
</code></pre>

<pre lang="json"><code>{
  &quot;applicant&quot;: {
    &quot;href&quot;: &quot;/api/v1/user_identities/1/programs/2/applicants_by_cas_id/3&quot;,
    &quot;cas_id&quot;: &quot;3&quot;,
    &quot;decision&quot;: {
      &quot;id&quot;: 42,
      &quot;name&quot;: &quot;Offer Accepted&quot;
    },
    &quot;local_status&quot;: {
      &quot;id&quot;: 123456,
      &quot;title&quot;: &quot;Accepted Offer&quot;
    }
  }
}
</code></pre>

<h3>Applicant Update</h3>

<p>Update the applicant with the given CAS ID.  <strong>NOTE:</strong> Currently, we only allow decisions to be updated when the <code>local_status</code> is <code>null</code>.</p>

<pre><code>PATCH /api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:cas_id
</code></pre>

<h4>Optional Parameters</h4>

<table><thead>
<tr>
<th>Name</th>
<th>Type</th>
<th>Description</th>
<th>Example</th>
</tr>
</thead><tbody>
<tr>
<td><strong>applicant:decision_id</strong></td>
<td><em>integer</em></td>
<td>The unique identifier for the decision to set.</td>
<td><code>42</code></td>
</tr>
</tbody></table>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n -X PATCH https://api.webadmit.org/api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:cas_id \
  -H &quot;Content-Type: application/json&quot; \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot; \
 \
  -d &#39;{
  &quot;applicant&quot;: {
    &quot;decision_id&quot;: 42
  }
}&#39;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 200 OK
</code></pre>

<pre lang="json"><code>{
  &quot;applicant&quot;: {
    &quot;href&quot;: &quot;/api/v1/user_identities/1/programs/2/applicants_by_cas_id/3&quot;,
    &quot;cas_id&quot;: &quot;3&quot;,
    &quot;decision&quot;: {
      &quot;id&quot;: 42,
      &quot;name&quot;: &quot;Offer Accepted&quot;
    },
    &quot;local_status&quot;: {
      &quot;id&quot;: 123456,
      &quot;title&quot;: &quot;Accepted Offer&quot;
    }
  }
}
</code></pre>

<h3>Errors</h3>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 422 Unprocessable Entity
</code></pre>

<pre lang="json"><code>{
  &quot;errors&quot;: {
    &quot;decision_id&quot;: [&quot;`-1` is not a valid decision_id for this association.&quot;, &quot;could not be updated because a local_status is present&quot;]
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

