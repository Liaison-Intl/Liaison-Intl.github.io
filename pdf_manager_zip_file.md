---
layout: default
title: PDF Manager Zip File
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-pdf_manager_zip_file"></a>PDF Manager Zip File</h2>

<p>A <strong>PDF Manager zip file</strong> represents the asynchronous execution and eventual population of a <strong>PDF Manager template</strong>.</p>


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
<td>Hypertext reference to this resource.<br/> <strong>pattern:</strong> <code>/api/v1/user_identities/\d+/pdf_manager_zip_files</code></td>
<td><code>&quot;/api/v1/user_identities/1/pdf_manager_zip_files&quot;</code></td>
</tr>
<tr>
<td><strong>pdf_manager_zip_file:id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of this zip file.</td>
<td><code>42</code></td>
</tr>
<tr>
<td><strong>pdf_manager_zip_file:name</strong></td>
<td><em>string</em></td>
<td>Human-readable name of this zip file.</td>
<td><code>&quot;Accepted Offers for Review&quot;</code></td>
</tr>
<tr>
<td><strong>pdf_manager_zip_file:updated_at</strong></td>
<td><em>date-time</em></td>
<td>The time that this zip file was last updated.</td>
<td><code>&quot;2016-01-05T16:51:00Z&quot;</code></td>
</tr>
<tr>
<td><strong>pdf_manager_zip_file:status</strong></td>
<td><em>string</em></td>
<td>Current state of this zip file.  When <code>&quot;Available&quot;</code>, the file is ready for download.<br/> <strong>one of:</strong><code>&quot;Initializing&quot;</code> or <code>&quot;Queued&quot;</code> or <code>&quot;In Progress&quot;</code> or <code>&quot;Available&quot;</code> or <code>&quot;Success with Errors&quot;</code> or <code>&quot;Empty List&quot;</code> or <code>&quot;Failed&quot;</code></td>
<td><code>&quot;Queued&quot;</code></td>
</tr>
<tr>
<td><strong>pdf_manager_zip_file:download_urls</strong></td>
<td><em>nullable array</em></td>
<td>When <code>status</code> is <strong>not</strong> <code>&quot;Available&quot;</code> or <code>&quot;Success with Errors&quot;</code>, this is <code>null</code>.  When status is <code>&quot;Available&quot;</code> or <code>&quot;Success with Errors&quot;</code>, this is an array of <em>temporary</em> URIs for downloading that expire within 30 seconds.  The download URL can always be re-generated if it expires by re-calling this method -- a new URL will be issued.</td>
<td><code>null</code></td>
</tr>
<tr>
<td><strong>pdf_manager_zip_file:pdf_manager_template:id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of the template.</td>
<td><code>2</code></td>
</tr>
<tr>
<td><strong>pdf_manager_zip_file:pdf_manager_template:href</strong></td>
<td><em>string</em></td>
<td>Hypertext reference to the template.<br/> <strong>pattern:</strong> <code>/api/v1/user_identities/\d+/pdf_manager_template/\d+</code></td>
<td><code>&quot;/api/v1/user_identities/1/pdf_manager_template/2&quot;</code></td>
</tr>
</tbody></table>

<h3>PDF Manager Zip File Initiate Run</h3>

<p>Initiate the creation of a zip file from a template.  If you attempt to run the same export several times in close succession, you will receive back the id of the already-running instance of that export. This is a safeguard to prevent many accidental simultaneous runs of the exact same export -- one must finish before a new one can be initiated.</p>

<pre><code>POST /api/v1/user_identities/:user_identity_id/pdf_manager_zip_files
</code></pre>

<h4>Required Parameters</h4>

<table><thead>
<tr>
<th>Name</th>
<th>Type</th>
<th>Description</th>
<th>Example</th>
</tr>
</thead><tbody>
<tr>
<td><strong>pdf_manager_template_id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of the template.</td>
<td><code>2</code></td>
</tr>
</tbody></table>

<h4>Optional Parameters</h4>

<table><thead>
<tr>
<th>Name</th>
<th>Type</th>
<th>Description</th>
<th>Example</th>
</tr>
</thead><tbody>
<tr>
<td><strong>callback</strong></td>
<td><em>uri</em></td>
<td>When the zip file is ready, WebAdMIT will <code>POST</code> to this callback URL.  The <code>POST</code>ed JSON data uses the same schema as the GET request.<br/> <strong>pattern:</strong> <code>^https://</code></td>
<td><code>&quot;https://example.com/my_callback&quot;</code></td>
</tr>
</tbody></table>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n -X POST https://api.webadmit.org/api/v1/user_identities/:user_identity_id/pdf_manager_zip_files \
  -H &quot;Content-Type: application/json&quot; \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot; \
 \
  -d &#39;{
  &quot;pdf_manager_template_id&quot;: 2,
  &quot;callback&quot;: &quot;https://example.com/my_callback&quot;
}&#39;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 201 Created
</code></pre>

<pre lang="json"><code>{
  &quot;href&quot;: &quot;/api/v1/user_identities/1/pdf_manager_zip_files&quot;,
  &quot;pdf_manager_zip_file&quot;: {
    &quot;id&quot;: 42,
    &quot;name&quot;: &quot;Accepted Offers for Review&quot;,
    &quot;updated_at&quot;: &quot;2016-01-05T16:51:00Z&quot;,
    &quot;status&quot;: &quot;Queued&quot;,
    &quot;download_urls&quot;: null,
    &quot;pdf_manager_template&quot;: {
      &quot;id&quot;: 2,
      &quot;href&quot;: &quot;/api/v1/user_identities/1/pdf_manager_template/2&quot;
    }
  }
}
</code></pre>

<h3>PDF Manager Zip File Show</h3>

<p>Display existing zip file with download URL.</p>

<pre><code>GET /api/v1/user_identities/:user_identity_id/pdf_manager_zip_files/:pdf_manager_zip_file_id
</code></pre>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v1/user_identities/:user_identity_id/pdf_manager_zip_files/:pdf_manager_zip_file_id \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 200 OK
</code></pre>

<pre lang="json"><code>{
  &quot;href&quot;: &quot;/api/v1/user_identities/1/pdf_manager_zip_files&quot;,
  &quot;pdf_manager_zip_file&quot;: {
    &quot;id&quot;: 42,
    &quot;name&quot;: &quot;Accepted Offers for Review&quot;,
    &quot;updated_at&quot;: &quot;2016-01-05T16:51:00Z&quot;,
    &quot;status&quot;: &quot;Queued&quot;,
    &quot;download_urls&quot;: null,
    &quot;pdf_manager_template&quot;: {
      &quot;id&quot;: 2,
      &quot;href&quot;: &quot;/api/v1/user_identities/1/pdf_manager_template/2&quot;
    }
  }
}
</code></pre>

<h3>PDF Manager Zip File List</h3>

<p>List existing zip files.  Importantly, the download URL is not displayed in this response as these individual expiring URLs can only be generated by calling for the status of an individual file directly using the previous call. You can use the results of this call and loop through each one to get a download URL for each export file marked as <code>&quot;Available&quot;</code> or <code>&quot;Success with Errors&quot;</code>.</p>

<pre><code>GET /api/v1/user_identities/:user_identity_id/pdf_manager_zip_files
</code></pre>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v1/user_identities/:user_identity_id/pdf_manager_zip_files \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 200 OK
</code></pre>

<pre lang="json"><code>{
  &quot;href&quot;: &quot;/api/v1/user_identities/1/pdf_manager_zip_files&quot;,
  &quot;pdf_manager_zip_files&quot;: [
    {
      &quot;id&quot;: 42,
      &quot;name&quot;: &quot;Accepted Offers for Review&quot;,
      &quot;updated_at&quot;: &quot;2016-01-05T16:51:00Z&quot;,
      &quot;status&quot;: &quot;Queued&quot;,
      &quot;pdf_manager_template&quot;: {
        &quot;id&quot;: 2,
        &quot;href&quot;: &quot;/api/v1/user_identities/1/pdf_manager_template/2&quot;
      }
    }
  ]
}
</code></pre>

<h3>Errors</h3>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 422 Unprocessable Entity
</code></pre>

<pre lang="json"><code>{
  &quot;errors&quot;: {
    &quot;callback_url&quot;: [&quot;is not an HTTPS URL&quot;]
  }
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
