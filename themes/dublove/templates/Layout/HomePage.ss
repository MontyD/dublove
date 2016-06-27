<header class="centerAlign">
  <section class="container padded">
      <h1 class="main">$SiteConfig.Title</h1>
      <h2 class="main">$tagLine</h2>
      <a href="contact" title="Book now!" class="likeButton primary">Book now</a>
      <div class="flowerGroup leftA down topA">
          <i class="icon-Hibiscus-flip small two animateScale"></i>
          <i class="icon-Hibiscus one animateScale"></i>
          <i class="icon-Hibiscus v-small three animateScale"></i>
      </div>
      <div class="flowerGroup rightA up bottomA">
        <i class="icon-Hibiscus-flip one animateScale"></i>
        <i class="icon-Hibiscus small two animateScale"></i>
        <i class="icon-Hibiscus-flip v-small three animateScale"></i>
      </div>
  </section>
</header>
<main class="overlap">
    <section class="first">
      <article class="thirds two centerAlign">
        <h2>$sectionOneHeading</h2>
        $sectionOneText
      </article>
      <img class="thirds boxed b-lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$sectionOneImage.SetWidth(600).URL" alt="Campervan" />
    </section>
    <section class="second emphasis">
      <div class="flowerGroup rightA topA up animate">
        <i class="icon-Hibiscus-flip-p one animateScale"></i>
        <i class="icon-Hibiscus-p small two animateScale"></i>
        <i class="icon-Hibiscus-flip-p v-small three animateScale"></i>
      </div>
      <h2 class="funFont">Our Dubs</h2>
      <% if $getCarPages() %>
        <% loop $getCarPages() %>
          <article class="halves centerAlign">
            <h3 class="normalFont">$Name</h3>
            <img class="boxed b-lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="$mainImage.SetWidth(400).URL" alt="$Name" />
            <p>
              $mainDescription
            </p>
            <a class="likeButton" href="$Link" title="$Name">Meet $Name</a>
          </article>
        <% end_loop %>
      <% end_if %>
    </section>
    <section class="third">
      <h2>Our Packages</h2>
      <div class="thirds">
        <h3 class="funFont">Proms / Partys</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      </div>
      <div class="thirds">
        <h3 class="funFont">Weddings</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      </div>
      <div class="thirds">
        <h3 class="funFont">Picnics</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      </div>
    </section>
    <section class="fourth emphasis__odd">
      <p class="strongText white">Interested? Get in contact with us today! <a class="likeButton primary small" href="/contact/" title="Conctact us!">Contact us</a></p>
    </section>
</main>
<% include footer %>
