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
    <article class="thirds two centerAlign">
      <h2>$sectionOneHeading</h2>
      Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    </article>
    <img class="thirds boxed b-lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$sectionOneImage.SetWidth(600).URL" alt="Campervan" />
  </section>
  $content
</main>


<% include footer %>
