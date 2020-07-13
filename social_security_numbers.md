---
layout: default
title: Social Security Numbers
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-social_security_numbers">Social Security Numbers</a></h2>

<p>A <strong>user identity</strong> may have one <strong>organization</strong>. An <strong>organization</strong> may have none or one <strong>Social Security Numbers document</strong>.</p>

<h3><a name="link-GET-social_security_numbers-/api/v1/user_identities/:user_identity_id/social_security_numbers">Social Security Numbers Show</a></h3>

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

<pre lang="json"><code>-----BEGIN PGP MESSAGE-----
Version: Crypt::OpenPGP 1.06

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
</code></pre>

<h3>Errors</h3>

<h3>Feature not available</h3>

<h4>Response example</h4>

<pre><code>HTTP/1.1 403 Not Found
</code></pre>

<pre lang="json"><code>{
  &quot;message&quot;: &quot;Feature not available.&quot;
}
</code></pre>

<p>When the feature is not activated for the user identity.</p>

<h3>No organization</h3>

<h4>Response example</h4>

<pre><code>HTTP/1.1 403 Not Found
</code></pre>

<pre lang="json"><code>{
  &quot;message&quot;: &quot;No organization loaded.&quot;
}
</code></pre>

<p>When the user identity is not linked to an organization.</p>

<h3>Not found</h3>

<h4>Response example</h4>

<pre><code>HTTP/1.1 404 Not Found
</code></pre>

<pre lang="json"><code>{
  &quot;message&quot;: &quot;Not found.&quot;
}
</code></pre>

<p>While <code>404 Not Found</code> is most often associated with resources that don&#39;t exist when making a <code>GET</code> request, please note that <code>404 Not Found</code> is also the response during <code>POST</code>, <code>PUT</code>, and <code>PATCH</code> requests if any resources specified by parameters cannot be found.</p>

<h3>Unauthorized</h3>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 401 Unauthorized
</code></pre>

<p>(Empty response body.)</p>

