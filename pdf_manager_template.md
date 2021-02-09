---
layout: default
title: PDF Manager Template
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-pdf_manager_template">PDF Manager Template</a></h2>
<p>Stability: <code>production</code></p>
<p>A <strong>PDF Manager template</strong> contains the configuration that determines the contents of a <strong>PDF Manager batch</strong>.  It is configured in the user interface and only <em>readable</em> in the API.</p>

<h3>Attributes</h3>
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
<td><strong>pdf_manager_template:document_source_title</strong></td>
<td><em>string</em></td>
<td>Human-readable name of the document source that is used when populating this template.</td>
<td><code>&quot;Full Application PDF&quot;</code></td>
</tr>
<tr>
<td><strong>pdf_manager_template:href</strong></td>
<td><em>string</em></td>
<td>Hypertext reference to this resource.<br/> <strong>pattern:</strong> <code>/api/v1/user_identities/\d+/pdf_manager_templates/\d+</code></td>
<td><code>&quot;/api/v1/user_identities/1/pdf_manager_templates/2&quot;</code></td>
</tr>
<tr>
<td><strong>pdf_manager_template:id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of this PDF Manager template.</td>
<td><code>2</code></td>
</tr>
<tr>
<td><strong>pdf_manager_template:list_name</strong></td>
<td><em>string</em></td>
<td>Human-readable name of the list that is used when populating this template.</td>
<td><code>&quot;Offer Accepted&quot;</code></td>
</tr>
<tr>
<td><strong>pdf_manager_template:name</strong></td>
<td><em>string</em></td>
<td>Human-readable name of this PDF Manager template.</td>
<td><code>&quot;Accepted Offers for Review&quot;</code></td>
</tr>
</tbody>
</table>
<h3><a name="link-GET-pdf_manager_template-/api/v1/user_identities/:user_identity_id/pdf_manager_templates">PDF Manager Template List</a></h3>
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
      &quot;href&quot;: &quot;/api/v1/user_identities/1/pdf_manager_templates/2&quot;,
      &quot;id&quot;: 2,
      &quot;name&quot;: &quot;Accepted Offers for Review&quot;,
      &quot;list_name&quot;: &quot;Offer Accepted&quot;,
      &quot;document_source_title&quot;: &quot;Full Application PDF&quot;
    }
  ]
}
</code></pre>
<h3><a name="link-GET-pdf_manager_template-/api/v1/user_identities/:user_identity_id/pdf_manager_templates/:pdf_manager_template_id">PDF Manager Template Show</a></h3>
<p>Display an existing PDF Manager template.</p>
<pre><code>GET /api/v1/user_identities/:user_identity_id/pdf_manager_templates/:pdf_manager_template_id
</code></pre>
<h4>Curl Example</h4>
<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v1/user_identities/:user_identity_id/pdf_manager_templates/:pdf_manager_template_id \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>
<h4>Response Example</h4>
<pre><code>HTTP/1.1 200 OK
</code></pre>
<pre lang="json"><code>{
  &quot;pdf_manager_template&quot;: {
    &quot;href&quot;: &quot;/api/v1/user_identities/1/pdf_manager_templates/2&quot;,
    &quot;id&quot;: 2,
    &quot;name&quot;: &quot;Accepted Offers for Review&quot;,
    &quot;list_name&quot;: &quot;Offer Accepted&quot;,
    &quot;document_source_title&quot;: &quot;Full Application PDF&quot;
  }
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

