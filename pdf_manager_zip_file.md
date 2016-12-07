---
layout: default
title: PDF Manager Zip File
---

<h2><a name="resource-pdf_manager_batch"></a>PDF Manager Zip File</h2>

<p>A <strong>PDF Manager batch</strong> has many <strong>PDF Manager zip files</strong> that can be downloaded.</p>

<h3>PDF Manager Zip File Download</h3>

<p>Securely download a PDF Manager zip file via redirect.</p>

<pre><code>GET /api/v1/user_identities/:user_identity_id/pdf_manager_zip_files/:pdf_manager_zip_file_id/download
</code></pre>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v1/user_identities/:user_identity_id/pdf_manager_zip_files/:pdf_manager_zip_file_id/download \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 302 Found
Location: https://webadmit-production.s3.amazonaws.com/...
</code></pre>
