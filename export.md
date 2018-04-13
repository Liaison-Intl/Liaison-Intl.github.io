---
layout: default
title: Export/Report
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-exports">Export/Report</a></h2>

<p>Stability: <code>production</code></p>

<p>Retrieve details on all exports (e.g. export templates) that a user has access to across all of their identities. The <strong>id</strong> returned for each export is the value that needs to be provided in order to run that export.</p>


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
<td>Hypertext reference to this resource.</td>
<td><code>&quot;/api/v1/exports&quot;</code></td>
</tr>
</tbody></table>

<h3><a name="link-GET-exports-/api/v1/exports">Export/Report List</a></h3>

<p>The response is the collection of exports belonging to any identity in the current user’s WebAdMIT profile, including the List that each export is tied to.</p>

<pre><code>GET /api/v1/exports
</code></pre>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v1/exports \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 200 OK
</code></pre>

<pre lang="json"><code>{
  &quot;href&quot;: &quot;/api/v1/exports&quot;,
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

<h4>Specific error messages</h4>

<p>When the user_identity is not found</p>

<pre lang="json"><code>{
  &quot;errors&quot;: {
    &quot;schema&quot;: [
      &quot;User identity &#39;999&#39; not found.&quot;
    ]
  }
}
</code></pre>

<p>When the program is not found</p>

<pre lang="json"><code>{
  &quot;errors&quot;: {
    &quot;schema&quot;: [
      &quot;Program &#39;99999999999&#39; not found.&quot;
    ]
  }
}
</code></pre>

<p>When the applicant is not found</p>

<pre lang="json"><code>{
  &quot;errors&quot;: {
    &quot;schema&quot;: [
      &quot;Applicant &#39;88888888888&#39; not found.&quot;
    ]
  }
}
</code></pre>

<p>When the custom field is not found</p>

<pre lang="json"><code>{
  &quot;errors&quot;: {
    &quot;schema&quot;: [
      &quot;CustomeField &#39;42&#39; not found.&quot;
    ]
  }
}
</code></pre>

<p>While these error messages are most often associated with resources that don&#39;t exist when making a <code>GET</code> request, please note that the same messages are also the response during <code>POST</code>, <code>PUT</code>, and <code>PATCH</code> requests if any resources specified by parameters cannot be found.</p>

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

