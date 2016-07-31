<% include header %>
<main>
  <section class="head">
    <h1>$Title</h1>
    <article class="subtleText">
      <p>
        $Content
      </p>
    </article>
  </section>
  <% if $Form %>
    <section class="formContainer formContainerSmall">
      $Form
    </section>
  <% end_if %>


</main>

<% include footer %>
