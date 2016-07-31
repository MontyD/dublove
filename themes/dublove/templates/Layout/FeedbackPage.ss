<% include header %>

<main>
  <section class="head">
    <div class="flowerGroup leftA topA down animate">
      <i class="icon-Hibiscus-p one"></i>
      <i class="icon-Hibiscus-flip-p small two"></i>
      <i class="icon-Hibiscus-p v-small three"></i>
    </div>
    <h1>$Title</h1>
    <article class="subtleText">
      <p>
        $OpeningParagraph
      </p>
    </article>

  </section>

  <section class="feedback-main">
    <% if approvedFeedback() %>

      <% loop approvedFeedback() %>
        <article class="feedback-row $EvenOdd">
          <div class="feedback-item">
            <p>$Feedback</p>
            <strong>$Name</strong>
          </div>
          <div class="icon-holder">
            <span class="outline-round">
              <i class="icon-user-icon small"></i>
            </span>
          </div>
        </article>
      <% end_loop %>

    <% else %>

    <p> We haven't received any feedback, please add some using the form below </p>

    <% end_if %>

  </section>

  <article class="formContainer formContainerSmall">
    <h2>Add feedback...</h2>
    $FeedbackForm
  </article>

  <section class="last emphasis">
      <p class="strongText">Like what you hear? Have a look at our packages<a class="likeButton small" href="packages" title="Packages">Packages</a></p>
  </section>
</main>


<% include footer %>
