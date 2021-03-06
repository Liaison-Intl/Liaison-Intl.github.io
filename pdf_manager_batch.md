---
layout: default
title: PDF Manager Batch
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-pdf_manager_batch">PDF Manager Batch</a></h2>
<p>Stability: <code>production</code></p>
<p>A <strong>PDF Manager batch</strong> represents the asynchronous execution and eventual population of a <strong>PDF Manager template</strong>, resulting in <strong>PDF Manager zip files</strong>.</p>

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
<td><strong>pdf_manager_batch:download_hrefs</strong></td>
<td><em>array</em></td>
<td>When <code>state</code> is <code>&quot;available&quot;</code> or <code>&quot;success_with_errors&quot;</code>, this is an array of hrefs that can be requested with an API key for downloading the generated PDF files.  Otherwise, this is <code>[]</code>.</td>
<td><code>[&quot;/api/v1/user_identities/1/pdf_manager_zip_files/2/download&quot;,&quot;/api/v1/user_identities/1/pdf_manager_zip_files/3/download&quot;]</code></td>
</tr>
<tr>
<td><strong>pdf_manager_batch:href</strong></td>
<td><em>string</em></td>
<td>Hypertext reference to this resource.<br/> <strong>pattern:</strong> <code>/api/v1/user_identities/\d+/pdf_manager_batches/\d+</code></td>
<td><code>&quot;/api/v1/user_identities/1/pdf_manager_batches/2&quot;</code></td>
</tr>
<tr>
<td><strong>pdf_manager_batch:id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of this batch.</td>
<td><code>42</code></td>
</tr>
<tr>
<td><strong>pdf_manager_batch:pdf_manager_template:href</strong></td>
<td><em>string</em></td>
<td>Hypertext reference to the template.<br/> <strong>pattern:</strong> <code>/api/v1/user_identities/\d+/pdf_manager_templates/\d+</code></td>
<td><code>&quot;/api/v1/user_identities/1/pdf_manager_templates/2&quot;</code></td>
</tr>
<tr>
<td><strong>pdf_manager_batch:pdf_manager_template:id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of the template.</td>
<td><code>2</code></td>
</tr>
<tr>
<td><strong>pdf_manager_batch:pdf_manager_template:name</strong></td>
<td><em>string</em></td>
<td>Human-readable name of this PDF Manager template.</td>
<td><code>&quot;Accepted Offers for Review&quot;</code></td>
</tr>
<tr>
<td><strong>pdf_manager_batch:state</strong></td>
<td><em>string</em></td>
<td>Current state of this batch.<br/> <strong>one of:</strong><code>&quot;initializing&quot;</code> or <code>&quot;queued&quot;</code> or <code>&quot;in_progress&quot;</code> or <code>&quot;available&quot;</code> or <code>&quot;success_with_errors&quot;</code> or <code>&quot;empty_list&quot;</code> or <code>&quot;failed&quot;</code></td>
<td><code>&quot;success_with_errors&quot;</code></td>
</tr>
<tr>
<td><strong>pdf_manager_batch:updated_at</strong></td>
<td><em>date-time</em></td>
<td>Time that this batch was last updated.<br/> <strong>pattern:</strong> <code>\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\dZ</code></td>
<td><code>&quot;2016-01-05T16:51:00Z&quot;</code></td>
</tr>
</tbody>
</table>
<h3><a name="link-GET-pdf_manager_batch-/api/v1/user_identities/:user_identity_id/pdf_manager_batches/:pdf_manager_batch_id">PDF Manager Batch Show</a></h3>
<p>Display existing batch with download URL.</p>
<pre><code>GET /api/v1/user_identities/:user_identity_id/pdf_manager_batches/:pdf_manager_batch_id
</code></pre>
<h4>Curl Example</h4>
<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v1/user_identities/:user_identity_id/pdf_manager_batches/:pdf_manager_batch_id \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>
<h4>Response Example</h4>
<pre><code>HTTP/1.1 200 OK
</code></pre>
<pre lang="json"><code>{
  &quot;pdf_manager_batch&quot;: {
    &quot;href&quot;: &quot;/api/v1/user_identities/1/pdf_manager_batches/2&quot;,
    &quot;id&quot;: 42,
    &quot;updated_at&quot;: &quot;2016-01-05T16:51:00Z&quot;,
    &quot;state&quot;: &quot;success_with_errors&quot;,
    &quot;download_hrefs&quot;: [
      &quot;/api/v1/user_identities/1/pdf_manager_zip_files/2/download&quot;,
      &quot;/api/v1/user_identities/1/pdf_manager_zip_files/3/download&quot;
    ],
    &quot;pdf_manager_template&quot;: {
      &quot;href&quot;: &quot;/api/v1/user_identities/1/pdf_manager_templates/2&quot;,
      &quot;id&quot;: 2,
      &quot;name&quot;: &quot;Accepted Offers for Review&quot;
    }
  }
}
</code></pre>
<h3><a name="link-GET-pdf_manager_batch-/api/v1/user_identities/:user_identity_id/pdf_manager_batches">PDF Manager Batch List</a></h3>
<p>List existing batches.  As there could potentially be a large number of <code>download_hrefs</code>, they are not displayed in this response.</p>
<pre><code>GET /api/v1/user_identities/:user_identity_id/pdf_manager_batches
</code></pre>
<h4>Curl Example</h4>
<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v1/user_identities/:user_identity_id/pdf_manager_batches \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>
<h4>Response Example</h4>
<pre><code>HTTP/1.1 200 OK
</code></pre>
<pre lang="json"><code>{
  &quot;href&quot;: &quot;/api/v1/user_identities/1/pdf_manager_batches&quot;,
  &quot;pdf_manager_batches&quot;: [
    {
      &quot;href&quot;: &quot;/api/v1/user_identities/1/pdf_manager_batches/2&quot;,
      &quot;id&quot;: 2,
      &quot;updated_at&quot;: &quot;2016-01-05T16:51:00Z&quot;,
      &quot;state&quot;: &quot;success_with_errors&quot;,
      &quot;pdf_manager_template&quot;: {
        &quot;href&quot;: &quot;/api/v1/user_identities/1/pdf_manager_templates/2&quot;,
        &quot;id&quot;: 2,
        &quot;name&quot;: &quot;Accepted Offers for Review&quot;
      }
    }
  ]
}
</code></pre>
<h3><a name="link-POST-pdf_manager_batch-/api/v1/user_identities/:user_identity_id/pdf_manager_batches">PDF Manager Batch Initiate Run</a></h3>
<p>Initiate the creation of a batch from a template.  If you attempt to run the same batch several times in close succession, you will receive the id of the already-running instance of that batch. This is a safeguard to prevent many accidental simultaneous runs of the exact same batch: one must finish before a new one can be initiated.</p>
<pre><code>POST /api/v1/user_identities/:user_identity_id/pdf_manager_batches
</code></pre>
<h4>Required Parameters</h4>
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
<td><strong>pdf_manager_batch:pdf_manager_template_id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of the template.</td>
<td><code>2</code></td>
</tr>
</tbody>
</table>
<h4>Optional Parameters</h4>
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
<td><strong>pdf_manager_batch:callback</strong></td>
<td><em>uri</em></td>
<td>When the batch is completed, WebAdMIT will <code>POST</code> to this callback URL.  The JSON in the callback body uses the same schema as the GET request.<br/> <strong>pattern:</strong> <code>^https://</code></td>
<td><code>&quot;https://example.com/my_callback&quot;</code></td>
</tr>
</tbody>
</table>
<h4>Curl Example</h4>
<pre lang="bash"><code>$ curl -n -X POST https://api.webadmit.org/api/v1/user_identities/:user_identity_id/pdf_manager_batches \
  -d '{
  &quot;pdf_manager_batch&quot;: {
    &quot;pdf_manager_template_id&quot;: 2,
    &quot;callback&quot;: &quot;https://example.com/my_callback&quot;
  }
}' \
  -H &quot;Content-Type: application/json&quot; \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>
<h4>Response Example</h4>
<pre><code>HTTP/1.1 201 Created
</code></pre>
<pre lang="json"><code>{
  &quot;pdf_manager_batch&quot;: {
    &quot;href&quot;: &quot;/api/v1/user_identities/1/pdf_manager_batches/2&quot;,
    &quot;id&quot;: 42,
    &quot;updated_at&quot;: &quot;2016-01-05T16:51:00Z&quot;,
    &quot;state&quot;: &quot;success_with_errors&quot;,
    &quot;download_hrefs&quot;: [
      &quot;/api/v1/user_identities/1/pdf_manager_zip_files/2/download&quot;,
      &quot;/api/v1/user_identities/1/pdf_manager_zip_files/3/download&quot;
    ],
    &quot;pdf_manager_template&quot;: {
      &quot;href&quot;: &quot;/api/v1/user_identities/1/pdf_manager_templates/2&quot;,
      &quot;id&quot;: 2,
      &quot;name&quot;: &quot;Accepted Offers for Review&quot;
    }
  }
}
</code></pre>
<h3>Errors</h3>
<h4>Response Example</h4>
<pre><code>HTTP/1.1 422 Unprocessable Entity
</code></pre>
<pre lang="json"><code>{
  &quot;errors&quot;: {
    &quot;schema&quot;: [&quot;The property '#/pdf_manager_batch/callback' value \&quot;http://example.webadmit.org\&quot; did not match the regex '^https://'&quot;]
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

