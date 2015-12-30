---
layout: default
title: User Identity
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-user_identity"></a>User Identity</h2>

<p>All permissions in WebAdMIT cascade from the concept of a <strong>user identity</strong>.</p>

### What is a user identity in WebAdMIT?

Each of the selectable items in the standard WebAdMIT account dropdown are considered to be standard admissions-level **user identities** -- for most universities, this ties to the cohorts of students from each major graduate department.

There are two additional "special" types of identities available in WebAdMIT:

  * An "Association User" can access data for all schools in a given Centralized Application Service (e.g. someone at ASPPH would be able to access all data for all schools of public health in SOPHAS, and someone at AACP would be able to access data for all schools of pharmacy in PharmCAS)
  * An "Institution User" can access data for all departments & programs at a university implementing UniCAS (this type of user would be able to create a university-wide data export)

In general, configuration entities such as Lists, Exports, Email Templates, and so on in WebAdMIT are "owned" by one of a user's identities. Every identity that is part of a user's profile has a name and a unique identifier.  These can be retrieved via one of the API calls discussed in this documentation. Admissions, Association, and Institutional identities can all be addressed by name or ID in the same manner.

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
<td>Hypertext reference to this resource.<br/> <strong>pattern:</strong> <code>/api/v1/user_identities</code></td>
<td><code>&quot;/api/v1/user_identities&quot;</code></td>
</tr>
<tr>
<td><strong>user_identities/id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier for this user identity.</td>
<td><code>42</code></td>
</tr>
<tr>
<td><strong>user_identities/type</strong></td>
<td><em>string</em></td>
<td>Type of access granted by this user identity.<br/> <strong>one of:</strong><code>&quot;Admissions User&quot;</code> or <code>&quot;Association User&quot;</code> or <code>&quot;Institution User&quot;</code></td>
<td><code>&quot;Admissions User&quot;</code></td>
</tr>
<tr>
<td><strong>user_identities/association</strong></td>
<td><em>nullable string</em></td>
<td>Human-readable name of the association that this user identity belongs to, or <code>null</code> if not applicable.</td>
<td><code>&quot;SOPHAS&quot;</code></td>
</tr>
<tr>
<td><strong>user_identities/institution</strong></td>
<td><em>nullable string</em></td>
<td>Human-readable name of the institution that this user identity belongs to, or <code>null</code> if not applicable.</td>
<td><code>&quot;Demo University&quot;</code></td>
</tr>
<tr>
<td><strong>user_identities/organization</strong></td>
<td><em>nullable string</em></td>
<td>Human-readable name of the organization that this user identity belongs to, or <code>null</code> if not applicable.</td>
<td><code>&quot;Demo University School of Public Health&quot;</code></td>
</tr>
<tr>
<td><strong>user_identities/cycle</strong></td>
<td><em>nullable string</em></td>
<td>Academic cycle that this user identity can access, or <code>null</code> if not applicable.</td>
<td><code>&quot;2014 - 2015&quot;</code></td>
</tr>
</tbody></table>

<h3>User Identity List</h3>

<p>List user identities belonging to the user (as identified by API key) that have been given the &quot;API Access&quot; permission.</p>

<pre><code>GET /api/v1/user_identities
</code></pre>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v1/user_identities \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 200 OK
</code></pre>

<pre lang="json"><code>{
  &quot;href&quot;: &quot;/api/v1/user_identities&quot;,
  &quot;user_identities&quot;: [
    {
      &quot;id&quot;: 42,
      &quot;type&quot;: &quot;Admissions User&quot;,
      &quot;association&quot;: &quot;SOPHAS&quot;,
      &quot;institution&quot;: &quot;Demo University&quot;,
      &quot;organization&quot;: &quot;Demo University School of Public Health&quot;,
      &quot;cycle&quot;: &quot;2014 - 2015&quot;
    }
  ]
}
</code></pre>

