---
layout: default
title: Export/Report
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-export_by_user_identity">Export/Report</a></h2>

<p>Stability: <code>production</code></p>

<p>Retrieve details on all exports (e.g. export templates) that a user has access to within a specific identity. The id returned for each export is the value that needs to be provided in order to run that export.</p>


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
<td><strong>exports/format</strong></td>
<td><em>string</em></td>
<td>Format of the file.<br/> <strong>one of:</strong><code>&quot;Comma-Separated Values&quot;</code> or <code>&quot;Microsoft Excel&quot;</code> or <code>&quot;Website HTML&quot;</code> or <code>&quot;Fixed Width Report&quot;</code> or <code>&quot;Comma-Separated Values in Multiple Files&quot;</code></td>
<td><code>&quot;Comma-Separated Values&quot;</code></td>
</tr>
<tr>
<td><strong>exports/id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of this export.</td>
<td><code>29897</code></td>
</tr>
<tr>
<td><strong>exports/list_type</strong></td>
<td><em>nullable string</em></td>
<td>Type of the list used for this export.<br/> <strong>one of:</strong><code>&quot;all&quot;</code> or <code>&quot;clipboard&quot;</code> or <code>&quot;search&quot;</code></td>
<td><code>&quot;all&quot;</code></td>
</tr>
<tr>
<td><strong>exports/mime_type</strong></td>
<td><em>string</em></td>
<td>MIME type of the file.<br/> <strong>one of:</strong><code>&quot;text/csv;charset=iso-8859-1&quot;</code> or <code>&quot;application/vnd.ms-excel&quot;</code> or <code>&quot;text/html&quot;</code> or <code>&quot;text/plain&quot;</code> or <code>&quot;application/zip&quot;</code></td>
<td><code>&quot;text/csv;charset=iso-8859-1&quot;</code></td>
</tr>
<tr>
<td><strong>exports/name</strong></td>
<td><em>string</em></td>
<td>Human-readable name for this export.</td>
<td><code>&quot;Nightly Banner Export&quot;</code></td>
</tr>
<tr>
<td><strong>href</strong></td>
<td><em>string</em></td>
<td>Hypertext reference to this resource.<br/> <strong>pattern:</strong> <code>/api/v1/user_identities/\d+/exports</code></td>
<td><code>&quot;/api/v1/user_identities/24567/exports&quot;</code></td>
</tr>
</tbody></table>

<h3><a name="link-GET-export_by_user_identity-/api/v1/user_identities/:user_identity_id/exports">Export/Report List</a></h3>

<p>The response is the collection of exports belonging to a specific identity in the current user’s WebAdMIT profile, including the List that each export is tied to.</p>

<pre><code>GET /api/v1/user_identities/:user_identity_id/exports
</code></pre>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v1/user_identities/:user_identity_id/exports \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 200 OK
</code></pre>

<pre lang="json"><code>{
  &quot;href&quot;: &quot;/api/v1/user_identities/24567/exports&quot;,
  &quot;exports&quot;: [
    {
      &quot;id&quot;: 29897,
      &quot;name&quot;: &quot;Nightly Banner Export&quot;,
      &quot;list_type&quot;: &quot;all&quot;,
      &quot;format&quot;: &quot;Comma-Separated Values&quot;,
      &quot;mime_type&quot;: &quot;text/csv;charset=iso-8859-1&quot;
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
