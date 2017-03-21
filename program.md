---
layout: default
title: Program
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-program">Program</a></h2>

<p>An applicant applies to a <strong>program</strong> at an <strong>organization</strong>.</p>


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
<td><code>42023191739237</code></td>
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

<h3><a name="link-GET-program-/api/v1/user_identities/:user_identity_id/programs">Program List</a></h3>

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
      &quot;id&quot;: 4202319173923742,
      &quot;name&quot;: &quot;Potions&quot;,
      &quot;organization_name&quot;: &quot;Hogwarts School of Witchcraft and Wizardry&quot;
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

