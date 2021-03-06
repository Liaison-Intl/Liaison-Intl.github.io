---
layout: default
title: Export/Report Files initiate a run
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-export_files">Export/Report Files (initiate a run)</a></h2>
<p>Stability: <code>production</code></p>
<p>Initiate the background execution of a specific export (e.g. export template). Required parameters are the identity that the export belongs to, and the <strong>id</strong> of the export that you wish to run. This will create an instance of a running <strong>export_file</strong>, which is what you can monitor to determine when the export is ready to be downloaded. The <strong>id</strong> in the response from this call is the handle to that running export_file and what is used in future calls to check on the status of the run.</p>
<p><em>Important note: this <strong>id</strong> representing the handle to the running instance of the export is not always uniquely generated with each run – if you attempt to run the same export several times in close succession, you will receive back the id of the already-running instance of that export. This is a safeguard to prevent many accidental simultaneous runs of the exact same export – one must finish before a new one can be initiated.</em></p>

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
<td><strong>export_files/export_id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of the associated export.</td>
<td><code>86446</code></td>
</tr>
<tr>
<td><strong>export_files/href</strong></td>
<td><em>string</em></td>
<td>Hypertext reference to this resource.<br/> <strong>pattern:</strong> <code>/api/v1/exports/\d+/export_files/\d+</code></td>
<td><code>&quot;/api/v1/exports/86466/export_files/74780&quot;</code></td>
</tr>
<tr>
<td><strong>export_files/id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of this export file.</td>
<td><code>74780</code></td>
</tr>
<tr>
<td><strong>export_files/status</strong></td>
<td><em>string</em></td>
<td>Current status of this export file.<br/> <strong>one of:</strong><code>&quot;Initializing&quot;</code> or <code>&quot;Queued&quot;</code> or <code>&quot;In Progress&quot;</code> or <code>&quot;Available&quot;</code> or <code>&quot;Success With Errors&quot;</code> or <code>&quot;Empty List&quot;</code> or <code>&quot;Failed&quot;</code></td>
<td><code>&quot;Available&quot;</code></td>
</tr>
<tr>
<td><strong>href</strong></td>
<td><em>string</em></td>
<td>Hypertext reference to this resource.<br/> <strong>pattern:</strong> <code>/api/v1/user_identities/\d+/export_files</code></td>
<td><code>&quot;/api/v1/user_identities/37442/export_files&quot;</code></td>
</tr>
</tbody>
</table>
<h3><a name="link-POST-export_files-/api/v1/user_identities/:user_identity_id/exports/:export_id/export_files">Export/Report Files (initiate a run) </a></h3>
<p>Initiate the background execution of a specific export.</p>
<pre><code>POST /api/v1/user_identities/:user_identity_id/exports/:export_id/export_files
</code></pre>
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
<td><strong>callback</strong></td>
<td><em>uri</em></td>
<td>For requests using the optional “callback” parameter, you should build your request as follows: /api/v1/user_identities/:user_identity_id/exports/:export_id/ export_files?callback=<a href="http://someurl.com/your_callback.cgi">http://someurl.com/your_callback.cgi</a> When the file is ready, WebAdMIT will POST to the callback URL that you specify with the following form POST parameters: export_file[id] export_file[export_id] export_file[status] An example of the body of a POST to a callback when a file is ready is as follows: export_file[id]=99752&amp;export_file[export_id]=123316&amp;export_file[status]=Available This gives you the export_file_id of the file that’s ready for download once it is available (you will use the export_id and the export_file_id POSTed here to form the next API call in item 5 below to actually get the URL to download the now-ready file). We recommend the use of the public RequestBin (<a href="http://requestb.in/">http://requestb.in/</a>) service in order to test out how this particular call works.</td>
<td><code>&quot;http://someurl.com/your_callback.cgi&quot;</code></td>
</tr>
</tbody>
</table>
<h4>Curl Example</h4>
<pre lang="bash"><code>$ curl -n -X POST https://api.webadmit.org/api/v1/user_identities/:user_identity_id/exports/:export_id/export_files \
  -d '{
  &quot;callback&quot;: &quot;http://someurl.com/your_callback.cgi&quot;
}' \
  -H &quot;Content-Type: application/json&quot; \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>
<h4>Response Example</h4>
<pre><code>HTTP/1.1 201 Created
</code></pre>
<pre lang="json"><code>{
  &quot;export_files&quot;: {
    &quot;id&quot;: 74780,
    &quot;href&quot;: &quot;/api/v1/exports/86466/export_files/74780&quot;,
    &quot;export_id&quot;: 86446,
    &quot;status&quot;: &quot;Available&quot;
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

