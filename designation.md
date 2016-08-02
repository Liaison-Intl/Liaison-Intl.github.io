---
layout: default
title: Designation
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-designation"></a>Designation</h2>

<p>An applicant applies to one or more <strong>programs</strong> through <strong>designations</strong>.  <strong>Programs</strong> render a <strong>decision</strong> for the <strong>designation</strong>.</p>

<div class="alert alert-warning">
  <p><strong>This is a prototype resource.</strong></p>
  <p>A prototype resource is experimental, and major changes are likely. In time, a prototype resource may or may not advance to production.</p>
</div>

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
<td><strong>designation:href</strong></td>
<td><em>string</em></td>
<td>Hypertext reference to this resource.<br/> <strong>pattern:</strong> <code>/api/v1/user_identities/\d+/programs/\d+/applicants_by_cas_id/\d+/designation</code></td>
<td><code>&quot;/api/v1/user_identities/1/programs/2/applicants_by_cas_id/3/designation&quot;</code></td>
</tr>
<tr>
<td><strong>designation:decision</strong></td>
<td><em>nullable object</em></td>
<td></td>
<td><code>null</code></td>
</tr>
<tr>
<td><strong>designation:decision:href</strong></td>
<td><em>string</em></td>
<td>Hypertext reference to this resource.<br/> <strong>pattern:</strong> <code>/api/v1/user_identities/\d+/decisions</code></td>
<td><code>&quot;/api/v1/user_identities/42/decisions&quot;</code></td>
</tr>
<tr>
<td><strong>designation:decision:id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of this decision.</td>
<td><code>42</code></td>
</tr>
<tr>
<td><strong>designation:decision:name</strong></td>
<td><em>string</em></td>
<td>Human-readable name for this decision.</td>
<td><code>&quot;Offer Accepted&quot;</code></td>
</tr>
<tr>
<td><strong>designation:local_status</strong></td>
<td><em>nullable object</em></td>
<td>For programs using WebAdMIT to manage their admissions process, a local status is a way for those programs to enter their workflow into WebAdMIT.  Typically, these programs will tie a decision to a local status.  Decisions are used for reporting at a national level (or school-wide level for UniCAS), but local statuses are for an individual program&#39;s process.</td>
<td><code>null</code></td>
</tr>
<tr>
<td><strong>designation:local_status:id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of this local status.</td>
<td><code>123456</code></td>
</tr>
<tr>
<td><strong>designation:local_status:title</strong></td>
<td><em>string</em></td>
<td>Human-readable title for this local status.</td>
<td><code>&quot;Deposit Made&quot;</code></td>
</tr>
</tbody></table>

<h3>Designation Show</h3>

<p>Display the designation for the applicant with the given applicant CAS ID and program ID.</p>

<pre><code>GET /api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:applicant_cas_id/designation
</code></pre>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:applicant_cas_id/designation \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 200 OK
</code></pre>

<pre lang="json"><code>{
  &quot;designation&quot;: {
    &quot;href&quot;: &quot;/api/v1/user_identities/1/programs/2/applicants_by_cas_id/3/designation&quot;,
    &quot;decision&quot;: {
      &quot;href&quot;: &quot;/api/v1/user_identities/42/decisions&quot;,
      &quot;id&quot;: 42,
      &quot;name&quot;: &quot;Offer Accepted&quot;
    },
    &quot;local_status&quot;: {
      &quot;id&quot;: 123456,
      &quot;title&quot;: &quot;Deposit Made&quot;
    }
  }
}
</code></pre>

<h3>Designation Update</h3>

<p>Update the designation with the given applicant CAS ID and program ID.  <strong>NOTE:</strong> Currently, we only allow decisions to be updated when the <code>local_status</code> is <code>null</code>.</p>

<pre><code>PATCH /api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:applicant_cas_id/designation
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
<td><strong>designation:decision_id</strong></td>
<td><em>integer</em></td>
<td>The unique identifier for the decision to set.</td>
<td><code>42</code></td>
</tr>
</tbody></table>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n -X PATCH https://api.webadmit.org/api/v1/user_identities/:user_identity_id/programs/:program_id/applicants_by_cas_id/:applicant_cas_id/designation \
  -H &quot;Content-Type: application/json&quot; \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot; \
 \
  -d &#39;{
  &quot;designation&quot;: {
    &quot;decision_id&quot;: 42
  }
}&#39;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 200 OK
</code></pre>

<pre lang="json"><code>{
  &quot;designation&quot;: {
    &quot;href&quot;: &quot;/api/v1/user_identities/1/programs/2/applicants_by_cas_id/3/designation&quot;,
    &quot;decision&quot;: {
      &quot;href&quot;: &quot;/api/v1/user_identities/42/decisions&quot;,
      &quot;id&quot;: 42,
      &quot;name&quot;: &quot;Offer Accepted&quot;
    },
    &quot;local_status&quot;: {
      &quot;id&quot;: 123456,
      &quot;title&quot;: &quot;Deposit Made&quot;
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

