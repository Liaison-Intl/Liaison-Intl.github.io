---
layout: default
title: Applicant Details
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-applicant_details">Applicant Details</a></h2>
<p>Stability: <code>prototype</code></p>
<div class="alert alert-warning">
  <p><strong>This is a prototype resource.</strong></p>
  <p>A prototype resource is experimental, and major changes are likely. In time, a prototype resource may or may not advance to production.</p>
</div>

<p>Applicant details stores information about the applicant, only some of this information is editable.</p>
<h3><a name="link-PUT-applicant_details-/api/v1/user_identities/:user_identity_id/applicant_details">Applicant Details Update Applicant Details</a></h3>
<p>Update a batch of Applicant Details, this endpoint is <strong>limited to 1000 Applicants per call</strong>.</p>
<pre><code>PUT /api/v1/user_identities/:user_identity_id/applicant_details
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
<td><strong>applicants:applicant_cas_id</strong></td>
<td><em>string</em></td>
<td>Unique identifier of the applicant.</td>
<td><code>&quot;123456789&quot;</code></td>
</tr>
</tbody>
</table>
<h4>Optional Parameters</h4>
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
<td><strong>applicants:redirect_eligible</strong></td>
<td><em>boolean</em></td>
<td>True if the applicant is eligible for redirect.</td>
<td><code>true</code></td>
</tr>
</tbody>
</table>
<h4>Curl Example</h4>
<pre lang="bash"><code>$ curl -n -X PUT https://api.webadmit.org/api/v1/user_identities/:user_identity_id/applicant_details \
  -d '{
  &quot;applicants&quot;: [
    {
      &quot;applicant_cas_id&quot;: &quot;123456789&quot;,
      &quot;redirect_eligible&quot;: true
    }
  ]
}' \
  -H &quot;Content-Type: application/json&quot; \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>
<h4>Response Example</h4>
<pre><code>HTTP/1.1 200 OK
</code></pre>
<pre lang="json"><code>{
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

