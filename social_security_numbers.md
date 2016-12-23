---
layout: default
title: Social Security Numbers
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-social_security_numbers"></a>Social Security Numbers</h2>

<p>A <strong>user identity</strong> may have one <strong>organization</strong>. An <strong>organization</strong> may have none or one <strong>Social Security Numbers document</strong>.</p>

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
<td><strong>social_security_numbers:href</strong></td>
<td><em>string</em></td>
<td>Hypertext reference to this resource.<br/> <strong>pattern:</strong> <code>/api/v1/user_identities/\d+/social_security_numbers</code></td>
<td><code>&quot;/api/v1/user_identities/1/social_security_numbers&quot;</code></td>
</tr>
<tr>
<td><strong>social_security_numbers:url</strong></td>
<td><em>string</em></td>
<td>Hypertext reference to download the document.</td>
<td><code>&quot;http://private.webadmit-file-repository.com/document/12345&quot;</code></td>
</tr>
<tr>
<td><strong>social_security_numbers:organization:id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of the organization.</td>
<td><code>3</code></td>
</tr>
<tr>
<td><strong>social_security_numbers:organization:name</strong></td>
<td><em>string</em></td>
<td>Name of the organization.</td>
<td><code>&quot;Harvard T.H. Chan School of Public Health&quot;</code></td>
</tr>
</tbody></table>

<h3>Social Security Numbers Show</h3>

<p>Display existing SSNs.</p>

<pre><code>GET /api/v1/user_identities/:user_identity_id/social_security_numbers
</code></pre>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v1/user_identities/:user_identity_id/social_security_numbers \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 200 OK
</code></pre>

<pre lang="json"><code>{
  &quot;social_security_numbers&quot;: {
    &quot;href&quot;: &quot;/api/v1/user_identities/1/social_security_numbers&quot;,
    &quot;url&quot;: &quot;http://private.webadmit-file-repository.com/document/12345&quot;,
    &quot;organization&quot;: {
      &quot;id&quot;: 3,
      &quot;name&quot;: &quot;Harvard T.H. Chan School of Public Health&quot;
    }
  }
}
</code></pre>

<h3>Forbidden</h3>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 403 Forbidden
</code></pre>

<pre lang="json"><code>{
  &quot;message&quot;: &quot;No organization loaded.&quot;
}
</code></pre>

<p>When the user identity is not linked to an organization.</p>

<pre><code>HTTP/1.1 403 Forbidden
</code></pre>

<pre lang="json"><code>{
  &quot;message&quot;: &quot;Feature not available.&quot;
}
</code></pre>

<p>If you&#39;re getting this error please contact Liaison to be able to use this feature.</p>

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

