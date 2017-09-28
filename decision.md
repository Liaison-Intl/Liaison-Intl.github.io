---
layout: default
title: Decision
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-decision">Decision</a></h2>

<p>Stability: <code>prototype</code></p>

<p>An association has a set of valid <strong>decisions</strong> for an applicant.</p>


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
<td><strong>decisions/id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of this decision.  <strong>NOTE:</strong> This identifier changes between cycles.</td>
<td><code>42</code></td>
</tr>
<tr>
<td><strong>decisions/name</strong></td>
<td><em>string</em></td>
<td>Human-readable name for this decision.</td>
<td><code>&quot;Offer Accepted&quot;</code></td>
</tr>
<tr>
<td><strong>href</strong></td>
<td><em>string</em></td>
<td>Hypertext reference to this resource.<br/> <strong>pattern:</strong> <code>/api/v1/user_identities/\d+/decisions</code></td>
<td><code>&quot;/api/v1/user_identities/1/decisions&quot;</code></td>
</tr>
</tbody></table>

<h3><a name="link-GET-decision-/api/v1/user_identities/:user_identity_id/decisions">Decision List</a></h3>

<p>List valid decisions for the association that this user identity belongs to.</p>

<pre><code>GET /api/v1/user_identities/:user_identity_id/decisions
</code></pre>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v1/user_identities/:user_identity_id/decisions \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 200 OK
</code></pre>

<pre lang="json"><code>{
  &quot;href&quot;: &quot;/api/v1/user_identities/1/decisions&quot;,
  &quot;decisions&quot;: [
    {
      &quot;id&quot;: 42,
      &quot;name&quot;: &quot;Offer Accepted&quot;
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

