---
layout: default
title: Batch Designations
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-batch_designations">Batch Designations</a></h2>

<p>Update designation decisions for a set of applicants in a single API request using a batch action.
A batch action is an asynchronous operation that can be created using a first endpoint and then have its result checked
using another endpoint.
First the batch action is created using the <strong>POST</strong> (create) endpoint by sending in the request body, the JSON describing all the
changes to apply. The creation endpoint validates the changes and then schedules the batch to be executed returning a batch
<strong>id</strong> to check the result later on.
Then the <strong>GET</strong> (show) endpoint can be used to check the completion of the scheduled batch, using the <strong>id</strong> returned by the
previous <strong>POST</strong>. Once the batch has finished, the result will be included in the batch object.</p>


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
<td><strong>batch:id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of this batch.</td>
<td><code>74780</code></td>
</tr>
<tr>
<td><strong>batch:results/applicant_cas_id</strong></td>
<td><em>string</em></td>
<td>The CAS unique identifier of the applicant.</td>
<td><code>&quot;123456789&quot;</code></td>
</tr>
<tr>
<td><strong>batch:results/decision:id</strong></td>
<td><em>integer</em></td>
<td>The unique identifier for the decision to set. If the designation is in received status and the preliminary_data_handling feature is on, the code will prevent changes to the decision code.</td>
<td><code>99</code></td>
</tr>
<tr>
<td><strong>batch:results/decision:name</strong></td>
<td><em>string</em></td>
<td>Human-readable name for this decision.</td>
<td><code>&quot;example&quot;</code></td>
</tr>
<tr>
<td><strong>batch:results/errors</strong></td>
<td><em>nullable object</em></td>
<td></td>
<td><code>null</code></td>
</tr>
<tr>
<td><strong>batch:results/errors:applicant</strong></td>
<td><em>string</em></td>
<td>An error message indicating that the applicant_cas_id provided was invalid.</td>
<td><code>&quot;example&quot;</code></td>
</tr>
<tr>
<td><strong>batch:results/errors:creation_error</strong></td>
<td><em>string</em></td>
<td>A message explaining why a change could not be completed.</td>
<td><code>&quot;example&quot;</code></td>
</tr>
<tr>
<td><strong>batch:results/errors:decision</strong></td>
<td><em>string</em></td>
<td>An error message indicating that the decision_id provided was invalid.</td>
<td><code>&quot;example&quot;</code></td>
</tr>
<tr>
<td><strong>batch:results/errors:designation</strong></td>
<td><em>string</em></td>
<td>An error message indicating that no designation was found for the given applicant and program.</td>
<td><code>&quot;example&quot;</code></td>
</tr>
<tr>
<td><strong>batch:results/errors:update_error</strong></td>
<td><em>string</em></td>
<td>An error message explaining why the update could not be applied.</td>
<td><code>&quot;example&quot;</code></td>
</tr>
<tr>
<td><strong>batch:status</strong></td>
<td><em>string</em></td>
<td>Current status of this batch.<br/> <strong>one of:</strong><code>&quot;Queued&quot;</code> or <code>&quot;In Progress&quot;</code> or <code>&quot;Available&quot;</code> or <code>&quot;Success With Errors&quot;</code> or <code>&quot;Failed&quot;</code></td>
<td><code>&quot;Available&quot;</code></td>
</tr>
<tr>
<td><strong>href</strong></td>
<td><em>string</em></td>
<td>Hypertext reference to the batch.<br/> <strong>pattern:</strong> <code>/api/v2/user_identities/\d+/programs/\d+/batch_designations/\d+</code></td>
<td><code>&quot;/api/v2/user_identities/1/programs/42023191739237/batch_designations/74780&quot;</code></td>
</tr>
</tbody></table>

<h3><a name="link-GET-batch_designations-/api/v2/user_identities/:user_identity_id/programs/:program_id/batch_designations/:id">Batch Designations Show</a></h3>

<p>Retrieve the status of a running/done batch action initiated with a previous POST. The <strong>id</strong> parameter is required. It is the id of the batch
that you wish to check the status of. You may continue to issue this call over a reasonable polling interval (10s) until the batch has finished.
Once the status of the batch becomes &quot;Available&quot;, the detailed information of the modification applied will be in the &quot;result&quot; property of the
batch object in the response.</p>

<pre><code>GET /api/v2/user_identities/:user_identity_id/programs/:program_id/batch_designations/:id
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
<td><strong>id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of this batch.</td>
<td><code>74780</code></td>
</tr>
</tbody></table>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v2/user_identities/:user_identity_id/programs/:program_id/batch_designations/:id \
 -G \
  -d id=74780 \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 200 OK
</code></pre>

<pre lang="json"><code>{
  &quot;href&quot;: &quot;/api/v2/user_identities/1/programs/42023191739237/batch_designations/74780&quot;,
  &quot;batch&quot;: {
    &quot;id&quot;: 74780,
    &quot;status&quot;: &quot;Available&quot;,
    &quot;results&quot;: [
      {
        &quot;decision&quot;: {
          &quot;id&quot;: 4697,
          &quot;name&quot;: &quot;Matriculated&quot;
        },
        &quot;applicant_cas_id&quot;: &quot;1595659994&quot;,
        &quot;errors&quot;: {
          &quot;creation_error&quot;: &quot;A newer update (setting decision_id to 4698) is overriding this update&quot;
        }
      },
      {
        &quot;decision&quot;: {
          &quot;id&quot;: 420,
          &quot;name&quot;: &quot;Unknown&quot;
        },
        &quot;applicant_cas_id&quot;: &quot;1595659995&quot;,
        &quot;errors&quot;: {
          &quot;decision&quot;: &quot;No decision found for that decision_id&quot;,
          &quot;applicant&quot;: &quot;No applicant found for that applicant_cas_id&quot;
        }
      },
      {
        &quot;decision&quot;: {
          &quot;id&quot;: 4698,
          &quot;name&quot;: &quot;Redirected&quot;
        },
        &quot;applicant_cas_id&quot;: &quot;1595659994&quot;,
        &quot;errors&quot;: null
      }
    ]
  }
}
</code></pre>

<h3><a name="link-POST-batch_designations-/api/v2/user_identities/:user_identity_id/programs/:program_id/batch_designations">Batch Designations Create</a></h3>

<p>Schedule the update of multiple designations with the given applicant CAS IDs and program ID, by creating a batch.
<strong>WARNING:</strong> You&#39;ll get an error when you&#39;re trying to set a decision_id to a designation which already has a local status assigned.
If you want to be able to force the decision_id please contact Liaison to turn on the &quot;Disassociate Decision Codes from Local Status&quot;
feature which will allow you to set the decision even if the local_status is present.</p>

<pre><code>POST /api/v2/user_identities/:user_identity_id/programs/:program_id/batch_designations
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
<td><strong>designations:applicant_cas_id</strong></td>
<td><em>string</em></td>
<td>The CAS unique identifier of the applicant.</td>
<td><code>&quot;123456789&quot;</code></td>
</tr>
<tr>
<td><strong>designations:decision_id</strong></td>
<td><em>integer</em></td>
<td>The unique identifier for the decision to set. If the designation is in received status and the preliminary_data_handling feature is on, the code will prevent changes to the decision code.</td>
<td><code>99</code></td>
</tr>
</tbody></table>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n -X POST https://api.webadmit.org/api/v2/user_identities/:user_identity_id/programs/:program_id/batch_designations \
  -d &#39;{
  &quot;designations&quot;: [
    {
      &quot;applicant_cas_id&quot;: &quot;123456789&quot;,
      &quot;decision_id&quot;: 99
    }
  ]
}&#39; \
  -H &quot;Content-Type: application/json&quot; \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 201 Created
</code></pre>

<pre lang="json"><code>{
  &quot;href&quot;: &quot;/api/v2/user_identities/1/programs/42023191739237/batch_designations/74780&quot;,
  &quot;batch&quot;: {
    &quot;id&quot;: 74780,
    &quot;status&quot;: &quot;Queued&quot;
  }
}
</code></pre>

<h3>Errors</h3>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 422 Unprocessable Entity
</code></pre>

<pre lang="json"><code>{
  &quot;errors&quot;: {
    &quot;schema&quot;: [
      &quot;The property &#39;#/&#39; did not contain a required property of &#39;designations&#39;&quot;
    ]
  }
}
</code></pre>

<p>The request body did not match the expected request schema. Please check your parameters and try again.</p>

<pre lang="json"><code>{
  &quot;errors&quot;: {
    &quot;schema&quot;: [
      &quot;The property &#39;#/designations/0/applicant_cas_id&#39; of type Fixnum did not match the following type: string&quot;
    ]
  }
}
</code></pre>

<p>The request body did not match the expected value type. In that example, the <code>applicant_cas_id</code> property of the first object (that is, at the <code>0</code> index) must be a String, not an Integer.</p>

<h3>Not Found</h3>

<h4>Specific error messages</h4>

<pre><code>HTTP/1.1 404 Not Found
</code></pre>

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

<h3>Unauthorized</h3>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 401 Unauthorized
</code></pre>

<p>(Empty response body.)</p>

