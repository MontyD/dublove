<% include header %>

<main>
  <div class="flowerGroup leftA down topA">
      <i class="icon-Hibiscus-flip small two "></i>
      <i class="icon-Hibiscus one "></i>
      <i class="icon-Hibiscus v-small three "></i>
  </div>
  <section class="fullWidthImgContainer">
    <div class="large img" style="background-image: url('$largeImage.SetWidth(1200).URL')"></div>
    <div class="medium img" style="background-image: url('$mediumImage.SetWidth(900).URL')"></div>
    <div class="small img" style="background-image: url('$smallImage.SetWidth(700).URL')"></div>
    <div class="overlayPurple overlay"></div>
    <h1 class="main">$Name</h1>
  </section>
  <section class="emphasis overlap">
    <h2>$tagLine</h2>
    <article class="thirds two centerAlign">
      $mainDescription
    </article>
    <img class="thirds boxed" src="$squareImage.SetWidth(600).URL" data-src="" alt="$Name" />
  </section>
  <% include featureImageViewer %>
</main>


<% include footer %>
