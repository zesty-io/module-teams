<section> 
    <div class="hero" style="background-image: linear-gradient(rgba(34, 34, 34, 0.6),rgba(34, 34, 34, 0.6)),url({{this.hero_image_background.getImage()}})"> 
         <!-- Header-->
        <header class="text-center text-warning">
            <h1 class="fs-1"> {{this.hero_header_text}}</h1>
            <p class="">{{this.hero_description}}</p>
        </header>
    </div>
    <div class="container pb-3" style="margin-top: -8rem;">
        <div class="row row-cols-2 justify-content-center" style="column-gap:3rem; row-gap: 2rem;"> 
            {{each module_team_items as items sort by team_sort}}
            <div class="col" style="width: 19rem;">
                <div class="card h-100">
                        <img src="{{items.image.getImage()}}" class="card-img-top" alt="...">
                    
                
                    <div class="card-body text-center">
                        <h5 class="card-title">{{items.name}}</h5>
                        <p class="card-text text-warning fw-bold fst-italic">{{items.career_title}}</p>
                        <p class="fst-italic">"{{items.description}}"</p>
                    </div>

                    <div class="card-footer d-flex justify-content-center gap-3 fs-2"> 
                    {{ if {items.social_1} || {items.social_2} || {items.social_3} || {items.social_4}  }}

                        {{if {items.social_1} }}
                          <a href="{{items.social_1}}" target="_blank"><i class="{{if {items.social_icon_1}!=''}}bi {{items.social_icon_1}} {{else}} bi bi-link-45deg {{/if}}"></i></a>
                        {{/if}}

                        {{if {items.social_2} }}
                          <a href="{{items.social_2}}" target="_blank"><i class="{{if {items.social_icon_2}!=''}}bi {{items.social_icon_2}} {{else}} bi bi-pinterest {{/if}}"></i></a>
                        {{/if}}

                        {{if {items.social_3} }}
                          <a href="{{items.social_3}}" target="_blank"><i class="{{if {items.social_icon_3}!=''}}bi {{items.social_icon_3}} {{else}} bi bi-link-45deg {{/if}}"></i></a>
                        {{/if}}

                        {{if {items.social_4} }}
                          <a href="{{items.social_4}}" target="_blank"><i class="{{if {items.social_icon_4}!=''}}bi {{items.social_icon_4}} {{else}} bi bi-link-45deg {{/if}}"></i></a>
                        {{/if}}

                    {{else}}

                        <p class="text-primary fs-6"> <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-person-fill-x" viewBox="0 0 16 16">
  <path d="M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0Zm-9 8c0 1 1 1 1 1h5.256A4.493 4.493 0 0 1 8 12.5a4.49 4.49 0 0 1 1.544-3.393C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4Z"/>
  <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7Zm-.646-4.854.646.647.646-.647a.5.5 0 0 1 .708.708l-.647.646.647.646a.5.5 0 0 1-.708.708l-.646-.647-.646.647a.5.5 0 0 1-.708-.708l.647-.646-.647-.646a.5.5 0 0 1 .708-.708Z"/>
</svg> No available social media links </p>
                    {{/if}}
                    </div>
                </div>
            </div>

            {{/each}}
            
        </div>
    </div>

</section>
