<% include header %>

<main>
  <% if $returnPhotos() %>
  <section>
    <% loop $returnPhotos() %>
      <img src="$Photo.SetWidth(400).URL" alt="$Photo.Caption" />
    <% end_loop %>
  </section>

  <% end_if %>

</main>

<% include footer %>
