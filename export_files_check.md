---
layout: default
title: Export/Report Files check status
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-export_files_check">Export/Report Files (check status)</a></h2>

<p>Stability: <code>production</code></p>

<p>Retrieve the status of a running export file initiated with the previous POST. Required parameters are the <strong>id</strong> of the export (e.g. export template) and the id of the running instance of that export (e.g. export file) that you wish to check the status of. You may continue to issue this call over a reasonable polling interval until the file becomes ready for download.  Once the status of the file becomes &quot;available&quot;, a download URL for the file will also be returned from the API.  This URL is secure and time-sensitive, expiring less than 30 seconds from when it is issued. It is the expectation that software using this API will immediately download the file once given the URL. The download URL can always be re-generated if it expires by re-calling this method – a new URL will be issued.</p>


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
<td><strong>export_files:download_url</strong></td>
<td><em>string</em></td>
<td>This is a secure S3 URL that can be requested for downloading the generated file.</td>
<td><code>&quot;https://webadmit-production.s3.amazonaws.com/export_files/reports/000/074/780/d19d6c0a34b7062c4496530f3d5dbfb_original.txt?AWSAccessKeyId=AKIAIT7746URBGHSHEA&amp;Expires=1425359248&amp;Signature=y2jwr78kbVt44xz%2BfaEnp5dXKU%3D&amp;response-content-disposition=attachment%3B%20filename%3DTest-API-Export.csv&amp;response-content-type=text%2Fcsv%3Bcharset%3Diso-8859-1&quot;</code></td>
</tr>
<tr>
<td><strong>export_files:export_id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of the associated export.</td>
<td><code>86446</code></td>
</tr>
<tr>
<td><strong>export_files:href</strong></td>
<td><em>string</em></td>
<td>Hypertext reference to this resource.<br/> <strong>pattern:</strong> <code>/api/v1/exports/\d+/export_files/\d+</code></td>
<td><code>&quot;/api/v1/exports/86466/export_files/74780&quot;</code></td>
</tr>
<tr>
<td><strong>export_files:id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of this export file.</td>
<td><code>74780</code></td>
</tr>
<tr>
<td><strong>export_files:status</strong></td>
<td><em>string</em></td>
<td>Current status of this export file.<br/> <strong>one of:</strong><code>&quot;initializing&quot;</code> or <code>&quot;queued&quot;</code> or <code>&quot;in_progress&quot;</code> or <code>&quot;available&quot;</code> or <code>&quot;success_with_errors&quot;</code> or <code>&quot;empty_list&quot;</code> or <code>&quot;failed&quot;</code></td>
<td><code>&quot;available&quot;</code></td>
</tr>
</tbody></table>

<h3><a name="link-GET-export_files_check-/api/v1/exports/:export_id/export_files/:export_file_id">Export/Report Files (check status) Show</a></h3>

<p>The response is the status of the running instance of the export the user is checking on, including the id of that export_file (the running instance), the export id (the export template), the status of the execution, and the actual (time-sensitive) URL to download the file if it is ready.</p>

<pre><code>GET /api/v1/exports/:export_id/export_files/:export_file_id
</code></pre>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v1/exports/:export_id/export_files/:export_file_id \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 200 OK
</code></pre>

<pre lang="json"><code>{
  &quot;export_files&quot;: {
    &quot;id&quot;: 74780,
    &quot;href&quot;: &quot;/api/v1/exports/86466/export_files/74780&quot;,
    &quot;export_id&quot;: 86446,
    &quot;status&quot;: &quot;available&quot;,
    &quot;download_url&quot;: &quot;https://webadmit-production.s3.amazonaws.com/export_files/reports/000/074/780/d19d6c0a34b7062c4496530f3d5dbfb_original.txt?AWSAccessKeyId=AKIAIT7746URBGHSHEA&amp;Expires=1425359248&amp;Signature=y2jwr78kbVt44xz%2BfaEnp5dXKU%3D&amp;response-content-disposition=attachment%3B%20filename%3DTest-API-Export.csv&amp;response-content-type=text%2Fcsv%3Bcharset%3Diso-8859-1&quot;
  }
}
</code></pre>

<h3>Not Found</h3>

<h4>Specific error messages</h4>

<p>When the user_identity is not found</p>

<pre lang="json"><code>{
  &quot;message&quot;: &quot;User identity &#39;999&#39; not found.&quot;
}
</code></pre>

<p>When the program is not found</p>

<pre lang="json"><code>{
  &quot;message&quot;: &quot;Program &#39;99999999999&#39; not found.&quot;
}
</code></pre>

<p>When the applicant is not found</p>

<pre lang="json"><code>{
  &quot;message&quot;: &quot;Applicant &#39;99999999999&#39; not found.&quot;
}
</code></pre>

<p>When the custom field is not found</p>

<pre lang="json"><code>{
  &quot;message&quot;: &quot;CustomeField &#39;99999999999&#39; not found.&quot;
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

