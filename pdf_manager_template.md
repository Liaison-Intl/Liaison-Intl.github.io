---
layout: default
title: PDF Manager Template
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-pdf_manager_template"></a>PDF Manager Template</h2>

<p>A <strong>PDF Manager template</strong> contains the configuration that determines the contents of a <strong>PDF Manager zip file</strong>.  It is configured in the user interface and only <em>readable</em> in the API.</p>


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
<td>Hypertext reference to this resource.<br/> <strong>pattern:</strong> <code>/api/v1/user_identities/\d+/pdf_manager_templates</code></td>
<td><code>&quot;/api/v1/user_identities/1/pdf_manager_templates&quot;</code></td>
</tr>
<tr>
<td><strong>pdf_manager_templates/id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of this PDF Manager template.</td>
<td><code>42</code></td>
</tr>
<tr>
<td><strong>pdf_manager_templates/name</strong></td>
<td><em>string</em></td>
<td>Human-readable name of this PDF Manager template.</td>
<td><code>&quot;Accepted Offers for Review&quot;</code></td>
</tr>
<tr>
<td><strong>pdf_manager_templates/list_name</strong></td>
<td><em>string</em></td>
<td>Human-readable name of the list that is used when populating this template.</td>
<td><code>&quot;Offer Accepted&quot;</code></td>
</tr>
<tr>
<td><strong>pdf_manager_templates/document_type</strong></td>
<td><em>string</em></td>
<td>Human-readable name of the document type that is used when populating this template.<br/> <strong>one of:</strong><code>&quot;Full Application PDF&quot;</code></td>
<td><code>&quot;Full Application PDF&quot;</code></td>
</tr>
</tbody></table>

<h3>PDF Manager Template List</h3>

<p>List existing PDF Manager templates.</p>

<pre><code>GET /api/v1/user_identities/:user_identity_id/pdf_manager_templates
</code></pre>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v1/user_identities/:user_identity_id/pdf_manager_templates \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 200 OK
</code></pre>

<pre lang="json"><code>{
  &quot;href&quot;: &quot;/api/v1/user_identities/1/pdf_manager_templates&quot;,
  &quot;pdf_manager_templates&quot;: [
    {
      &quot;id&quot;: 42,
      &quot;name&quot;: &quot;Accepted Offers for Review&quot;,
      &quot;list_name&quot;: &quot;Offer Accepted&quot;,
      &quot;document_type&quot;: &quot;Full Application PDF&quot;
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
