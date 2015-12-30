---
layout: default
title: Program
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-program"></a>Program</h2>

<p>An applicant applies to a <strong>program</strong> at an organization.</p>


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
<td>Hypertext reference to this resource.<br/> <strong>pattern:</strong> <code>/api/v1/user_identities/\d+/programs</code></td>
<td><code>&quot;/api/v1/user_identities/1/programs&quot;</code></td>
</tr>
<tr>
<td><strong>programs/id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of this program.</td>
<td><code>42</code></td>
</tr>
<tr>
<td><strong>programs/name</strong></td>
<td><em>string</em></td>
<td>Human-readable name of this program.  Likely to be repeated between organizations.</td>
<td><code>&quot;Potions&quot;</code></td>
</tr>
<tr>
<td><strong>programs/organization_name</strong></td>
<td><em>nullable string</em></td>
<td>Human-readable name of organization whose program this is.</td>
<td><code>&quot;Hogwarts School of Witchcraft and Wizardry&quot;</code></td>
</tr>
</tbody></table>

<h3>Program List</h3>

<p>List existing programs.</p>

<pre><code>GET /api/v1/user_identities/:user_identity_id/programs
</code></pre>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v1/user_identities/:user_identity_id/programs \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 200 OK
</code></pre>

<pre lang="json"><code>{
  &quot;href&quot;: &quot;/api/v1/user_identities/1/programs&quot;,
  &quot;programs&quot;: [
    {
      &quot;id&quot;: 42,
      &quot;name&quot;: &quot;Potions&quot;,
      &quot;organization_name&quot;: &quot;Hogwarts School of Witchcraft and Wizardry&quot;
    }
  ]
}
</code></pre>

