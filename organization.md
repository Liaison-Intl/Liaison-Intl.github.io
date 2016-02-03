---
layout: default
title: Organization
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-organization"></a>Organization</h2>

<p>An applicant applies to a <strong>program</strong> at an <strong>organization</strong>.</p>

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
<td><strong>href</strong></td>
<td><em>string</em></td>
<td>Hypertext reference to this resource.<br/> <strong>pattern:</strong> <code>/api/v1/user_identities/\d+/organizations</code></td>
<td><code>&quot;/api/v1/user_identities/1/organizations&quot;</code></td>
</tr>
<tr>
<td><strong>organizations/id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of this organization.</td>
<td><code>42</code></td>
</tr>
<tr>
<td><strong>organizations/name</strong></td>
<td><em>string</em></td>
<td>Human-readable name of this organization.</td>
<td><code>&quot;Demo University School of Public Health&quot;</code></td>
</tr>
<tr>
<td><strong>organizations/cycle_name</strong></td>
<td><em>nullable string</em></td>
<td>Academic cycle of this organization, or <code>null</code> if not applicable.<br/> <strong>pattern:</strong> <code>^\d{4} - \d{4}$</code></td>
<td><code>&quot;2014 - 2015&quot;</code></td>
</tr>
<tr>
<td><strong>organizations/association_name</strong></td>
<td><em>nullable string</em></td>
<td>Human-readable name of the association that this organization belongs to, or <code>null</code> if not applicable.</td>
<td><code>&quot;SOPHAS&quot;</code></td>
</tr>
<tr>
<td><strong>organizations/cas3</strong></td>
<td><em>boolean</em></td>
<td>Whether or not this organization is using CAS3 (as opposed the older CAS2, for example).</td>
<td><code>true</code></td>
</tr>
<tr>
<td><strong>organizations/config_portal_identifier</strong></td>
<td><em>string</em></td>
<td>Organization identifier that is specific to Config Portal.  May not be unique if <code>cas3</code> is <code>false</code>.</td>
<td><code>&quot;2235&quot;</code></td>
</tr>
</tbody></table>

<h3>Organization List</h3>

<p>List existing organizations for this <strong>user identity</strong>.</p>

<pre><code>GET /api/v1/user_identities/:user_identity_id/organizations
</code></pre>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v1/user_identities/:user_identity_id/organizations \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 200 OK
</code></pre>

<pre lang="json"><code>{
  &quot;href&quot;: &quot;/api/v1/user_identities/1/organizations&quot;,
  &quot;organizations&quot;: [
    {
      &quot;id&quot;: 42,
      &quot;name&quot;: &quot;Demo University School of Public Health&quot;,
      &quot;cycle_name&quot;: &quot;2014 - 2015&quot;,
      &quot;association_name&quot;: &quot;SOPHAS&quot;,
      &quot;cas3&quot;: true,
      &quot;config_portal_identifier&quot;: &quot;2235&quot;
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

<h3>Unauthorized</h3>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 401 Unauthorized
</code></pre>

<p>(Empty response body.)</p>

