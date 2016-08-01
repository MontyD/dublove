 <% include header %>

<main>
  <% if $returnPhotos() %>
  <section class="head">
    <div class="flowerGroup leftA topA down animate">
      <i class="icon-Hibiscus-p one"></i>
      <i class="icon-Hibiscus-flip-p small two"></i>
      <i class="icon-Hibiscus-p v-small three"></i>
    </div>
    <h1>$Title</h1>
    <article class="subtleText">
      <p>$ShortDescription</p>
    </article>
  </section>
  <section class="main-gallery">
    <% loop $returnPhotos() %>
        <% if $Pos = 1 %>
          <figure class="feature emphasis emphasis-purple" itemprop="associatedMedia">
        <% else_if $Pos < 4 %>
          <figure class="secondary" itemprop="associatedMedia">
        <% else %>
          <figure itemprop="associatedMedia">
        <% end_if %>
          <a href="$Photo.URL" data-height="$Photo.getHeight" data-width="$Photo.getWidth">
            <% if $Pos = 1 %>
              <img src="$Photo.croppedImage(400,400).URL" class="boxed" itemprop="thumbnail" alt="$Caption" />
            <% else_if $Pos < 4 %>
              <img src="$Photo.croppedImage(340,220).URL" class="boxed" itemprop="thumbnail" alt="$Caption" />
            <% else %>
              <img src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="  data-src="$Photo.croppedImage(230,150).URL" class="b-lazy boxed" itemprop="thumbnail" alt="$Caption" />
            <% end_if %>
          </a>
        </figure>
        <% if $Pos = 3 %>
        <hr>
        <% end_if %>
    <% end_loop %>
    <noscript>
      <h2>Please enable Javascript in order to view more photos</h2>
    </noscript>
  </section>

  <% end_if %>


  <section class="last emphasis">
      <p class="strongText">Have a look at what we offer: <a class="likeButton small" href="contact" title="Packages">Packages</a></p>
  </section>

  <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="pswp__bg"></div>
    <div class="pswp__scroll-wrap">
        <div class="pswp__container">
            <div class="pswp__item"></div>
            <div class="pswp__item"></div>
            <div class="pswp__item"></div>
        </div>
        <div class="pswp__ui pswp__ui--hidden">
            <div class="pswp__top-bar">
                <div class="pswp__counter"></div>
                <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>
                <button class="pswp__button pswp__button--share" title="Share"></button>
                <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>
                <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>
                <div class="pswp__preloader">
                    <div class="pswp__preloader__icn">
                      <div class="pswp__preloader__cut">
                        <div class="pswp__preloader__donut"></div>
                      </div>
                    </div>
                </div>
            </div>
            <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                <div class="pswp__share-tooltip"></div>
            </div>
            <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
            </button>
            <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
            </button>
            <div class="pswp__caption">
                <div class="pswp__caption__center"></div>
            </div>
        </div>
    </div>
</div>

</main>

<% include footer %>
