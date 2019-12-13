---
layout: default
title: Batch Custom Field Answers
---

<!-- WARNING: This is an automatically generated file.  Do not modify directly.  See script/generate-docs. -->

<h2><a name="resource-batch_custom_field_answers">Batch Custom Field Answers</a></h2>

<p>Update custom field answers for a set of applicants in a single API request using a batch action.
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
<td><strong>batch:href</strong></td>
<td><em>string</em></td>
<td>Hypertext reference to the batch.<br/> <strong>pattern:</strong> <code>/api/v2/user_identities/\d+/programs/\d+/batch_custom_field_answers/\d+</code></td>
<td><code>&quot;/api/v2/user_identities/1/programs/42023191739237/batch_custom_field_answers/74780&quot;</code></td>
</tr>
<tr>
<td><strong>batch:id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of this batch.</td>
<td><code>74780</code></td>
</tr>
<tr>
<td><strong>batch:results</strong></td>
<td><em>nullable array</em></td>
<td>List of the updated custom field answers</td>
<td><code>[{&quot;custom_field_answer&quot;:{&quot;custom_field_id&quot;:99,&quot;label&quot;:&quot;Are you a citizen?&quot;,&quot;field_type&quot;:&quot;boolean&quot;,&quot;value&quot;:false},&quot;applicant_cas_id&quot;:&quot;123456789&quot;},{&quot;custom_field_answer&quot;:{&quot;custom_field_id&quot;:123,&quot;label&quot;:&quot;What is your favorite fruit?&quot;,&quot;field_type&quot;:&quot;string&quot;,&quot;value&quot;:&quot;banana&quot;},&quot;applicant_cas_id&quot;:&quot;987654321&quot;}]</code></td>
</tr>
<tr>
<td><strong>batch:results/applicant_cas_id</strong></td>
<td><em>string</em></td>
<td>The CAS unique identifier of the applicant.</td>
<td><code>&quot;123456789&quot;</code></td>
</tr>
<tr>
<td><strong>batch:results/custom_field_answer</strong></td>
<td><em>nullable object</em></td>
<td>Result of the batch</td>
<td><code>null</code></td>
</tr>
<tr>
<td><strong>batch:results/custom_field_answer:custom_field_id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of the <strong>custom field</strong> that this answers.</td>
<td><code>99</code></td>
</tr>
<tr>
<td><strong>batch:results/custom_field_answer:field_type</strong></td>
<td><em>string</em></td>
<td>Type of data that the <strong>custom field</strong> stores.</td>
<td><code>&quot;boolean&quot;</code></td>
</tr>
<tr>
<td><strong>batch:results/custom_field_answer:label</strong></td>
<td><em>string</em></td>
<td>Human-readable label for the custom field..</td>
<td><code>&quot;What is your favorite color?&quot;</code></td>
</tr>
<tr>
<td><strong>batch:results/custom_field_answer:value</strong></td>
<td><em>string</em></td>
<td>The value to be stored as an answer to the <strong>custom field</strong>.</td>
<td><code>false</code></td>
</tr>
<tr>
<td><strong>batch:status</strong></td>
<td><em>string</em></td>
<td>Current status of this batch.<br/> <strong>one of:</strong><code>&quot;Queued&quot;</code> or <code>&quot;In Progress&quot;</code> or <code>&quot;Available&quot;</code> or <code>&quot;Success With Errors&quot;</code> or <code>&quot;Failed&quot;</code></td>
<td><code>&quot;Available&quot;</code></td>
</tr>
</tbody></table>

<h3><a name="link-GET-batch_custom_field_answers-/api/v2/user_identities/:user_identity_id/programs/:program_id/batch_custom_field_answers/:id">Batch Custom Field Answers Show</a></h3>

<p>Retrieve the status of a running/done batch action initiated with a previous POST. The <strong>id</strong> parameter is required. It is the id of the batch
that you wish to check the status of. You may continue to issue this call over a reasonable polling interval (10s) until the batch has finished.
Once the status of the batch becomes &quot;Available&quot;, the detailed information of the modification applied will be in the &quot;result&quot; property of the
batch object in the response.</p>

<pre><code>GET /api/v2/user_identities/:user_identity_id/programs/:program_id/batch_custom_field_answers/:id
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

<pre lang="bash"><code>$ curl -n https://api.webadmit.org/api/v2/user_identities/:user_identity_id/programs/:program_id/batch_custom_field_answers/:id \
 -G \
  -d id=74780 \
  -H &quot;x-api-key: 0123456789abcdef0123456789abcdef&quot;
</code></pre>

<h4>Response Example</h4>

<pre><code>HTTP/1.1 200 OK
</code></pre>

<pre lang="json"><code>{
  &quot;batch&quot;: {
    &quot;id&quot;: 74780,
    &quot;href&quot;: &quot;/api/v2/user_identities/1/programs/42023191739237/batch_custom_field_answers/74780&quot;,
    &quot;status&quot;: &quot;Available&quot;,
    &quot;results&quot;: [
      {
        &quot;custom_field_answer&quot;: {
          &quot;custom_field_id&quot;: 99,
          &quot;label&quot;: &quot;Are you a citizen?&quot;,
          &quot;field_type&quot;: &quot;boolean&quot;,
          &quot;value&quot;: false
        },
        &quot;applicant_cas_id&quot;: &quot;123456789&quot;
      },
      {
        &quot;custom_field_answer&quot;: {
          &quot;custom_field_id&quot;: 123,
          &quot;label&quot;: &quot;What is your favorite fruit?&quot;,
          &quot;field_type&quot;: &quot;string&quot;,
          &quot;value&quot;: &quot;banana&quot;
        },
        &quot;applicant_cas_id&quot;: &quot;987654321&quot;
      }
    ]
  }
}
</code></pre>

<h3><a name="link-POST-batch_custom_field_answers-/api/v2/user_identities/:user_identity_id/programs/:program_id/batch_custom_field_answers">Batch Custom Field Answers Create</a></h3>

<p>Schedule the update of multiple custom field answers with the given applicant CAS IDs and program ID, by creating a batch.</p>

<pre><code>POST /api/v2/user_identities/:user_identity_id/programs/:program_id/batch_custom_field_answers
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
<td><strong>custom_field_answers:applicant_cas_id</strong></td>
<td><em>string</em></td>
<td>The CAS unique identifier of the applicant.</td>
<td><code>&quot;123456789&quot;</code></td>
</tr>
<tr>
<td><strong>custom_field_answers:custom_field_id</strong></td>
<td><em>integer</em></td>
<td>Unique identifier of the <strong>custom field</strong> that this answers.</td>
<td><code>4</code></td>
</tr>
<tr>
<td><strong>custom_field_answers:field_type</strong></td>
<td><em>string</em></td>
<td>Type of data that the <strong>custom field</strong> stores.<br/> <strong>one of:</strong><code>&quot;boolean&quot;</code> or <code>&quot;number&quot;</code> or <code>&quot;date&quot;</code> or <code>&quot;string&quot;</code> or <code>&quot;select&quot;</code></td>
<td><code>&quot;boolean&quot;</code></td>
</tr>
<tr>
<td><strong>custom_field_answers:value</strong></td>
<td><em>nullable [boolean, string, number, date, select]</em></td>
<td>The value to be stored as an answer to the <strong>custom field</strong>.</td>
<td><code>false</code></td>
</tr>
</tbody></table>

<h4>Curl Example</h4>

<pre lang="bash"><code>$ curl -n -X POST https://api.webadmit.org/api/v2/user_identities/:user_identity_id/programs/:program_id/batch_custom_field_answers \
  -d &#39;{
  &quot;custom_field_answers&quot;: [
    {
      &quot;applicant_cas_id&quot;: &quot;123456789&quot;,
      &quot;custom_field_id&quot;: 4,
      &quot;field_type&quot;: &quot;boolean&quot;,
      &quot;value&quot;: false
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
  &quot;batch&quot;: {
    &quot;id&quot;: 74780,
    &quot;href&quot;: &quot;/api/v2/user_identities/1/programs/42023191739237/batch_custom_field_answers/74780&quot;,
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
      &quot;The property &#39;#/&#39; did not contain a required property of &#39;custom_field_answers&#39;&quot;
    ]
  }
}
</code></pre>

<p>The request body did not match the expected request schema. Please check your parameters and try again.</p>

<pre lang="json"><code>{
  &quot;errors&quot;: {
    &quot;schema&quot;: [
      &quot;The property &#39;#/custom_question_answers/0/applicant_cas_id&#39; of type Fixnum did not match the following type: string&quot;
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

