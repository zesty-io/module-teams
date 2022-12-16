(** default code https://zesty.org/services/web-engine/introduction-to-parsley/parsley-autolayout **)

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">


<section class="team">
    <div class="hero"> 
        <div class="container"> 
            <h3 class="main-header-text text-orange text-center"> {{this.hero_header_text}}</h3>
            <p class="text-center text-orange">{{this.hero_description}}</p>
        </div>
    </div>

    <div> 
        <div class="repeat-content"> 
            {{each module_team_items as items sort by team_sort}}
            <div class="card content-container card-2"> 
                <img src="{{items.image.getImage()}}">
                <div class="card-body text-center card-body-2"> 
                    <h4 class="content-name"> {{items.name}}</h4>
                    <p class="text-orange career-title"><em>{{items.career_title}}</em></p>
                    <p class="career-description"> {{items.description}} </p>
                </div>
                <div class="team-socials"> 
                    <a href="{{items.ig_link}}" target="_blank"><i class="fa-brands fa-square-instagram"></i> </a>
                    <a href="{{items.fb_link}}" target="_blank"><i class="fa-brands fa-square-facebook"></i> </a>
                    <a href="{{items.linkedin_link}}" target="_blank"><i class="fa-brands fa-linkedin"></i> </a>
                    <a href="{{items.twitter_link}" target="_blank"><i class="fa-brands fa-square-twitter"></i> </a>
                </div>
            </div>
            {{end-each}}
        </div>
    </div>
</section>