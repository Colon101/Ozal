<%@ Page Title="" Language="C#" MasterPageFile="~/Navigation.Master" AutoEventWireup="true"
    CodeBehind="mfdoom.aspx.cs" Inherits="Ozal.mfdoom" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
    .circle {
        position: fixed;
        z-index: 2000;
        max-width: 20px;
        max-height: 20px;
        width: 100%;
        height: 100%;
        content: "";
        --bg-size: 400%;
        --color-one: hsl(20, 92%, 65%);
        --color-two: hsl(287, 27%, 45%);
        width: var(--bg-size);
        height: var(--bg-size);

        background: linear-gradient(90deg,
                var(--color-one),
                var(--color-two),
                var(--color-one)) 0 0 / 400% 100%;
        border-radius: 100%;

        cursor: none;
        pointer-events: none;
    }

    * {
        cursor: none;
    }

    a {
        cursor: none;
    }

    .nav>.nav-list>li a {
        text-decoration: none;
        color: #efefef;
        cursor: none;
    }

    .circle {
        animation: move-bg 8s linear infinite;
        transition: transform 1s
    }

    @keyframes move-bg {
        to {
            background-position: var(--bg-size) 0;
        }
    }

    h2 {
        text-align: center;
    }

    a {
        cursor: none;
    }

    .kanye {
        background-image: url("/local/mfdoom-wiki.jpg");
        max-width: 30%;
        min-width: 20%;
        max-height: 500px;
        background-position: center;
        background-size: cover;
        margin-inline: 10px;
        border-radius: 10px;
    }

    @media (max-width: 1000px) {
        .kanye {
            max-height: 300px;
        }

        p {
            font-size: 30px;
        }
    }

    .cont {
        display: flex;
        flex-direction: row;

    }

    .info {
        flex-shrink: 1;
        margin-inline: 10px;

    }

    footer {
        background-color: #323232;
        color: #ffffff;
        padding: 20px 0;
        text-align: center;
    }

    .footer-container {
        display: flex;
        justify-content: space-around;
    }

    .company-info,
    .user-reviews {
        flex: 1;
    }

    .user-reviews h3 {
        margin-top: 0;
        font-family: 'Arial', sans-serif;
        color: #ffffff;
    }



    .user-reviews blockquote {
        font-style: italic;
        color: #dddddd;
    }

    .user-reviews p {
        margin-bottom: 0;
        font-family: 'Arial', sans-serif;
        color: #dddddd;
    }

    .review-form {
        margin-top: 20px;
    }

    ul {
        list-style: none;
    }

    .review-form h4 {
        font-family: 'Arial', sans-serif;
        color: #ffffff;
    }

    .review-form form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .review-form textarea {
        width: 80%;
        height: 100px;
        margin-bottom: 10px;
    }

    .review-form input[type="text"] {
        width: 80%;
        margin-bottom: 10px;
        padding: 5px;
    }

    .review-form button {
        background-color: #ff5722;
        color: #ffffff;
        border: none;
        padding: 8px 20px;
        cursor: none;
        font-size: 16px;
    }

    .review-form button:hover {
        background-color: #ff7043;
    }

    #star_rating {
        padding-bottom: 10px;
    }

    .rating {
        width: 100%;
        display: flex;
        justify-content: center;
    }
</style>
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <div id="cursor" class="circle" style="display:none;"></div>
        <div id="content">
            <h1>
                MF DOOM
            </h1>
            <h2>Influential rapper and lyricist</h2>
            <div class="cont">
                <div class="info">
    <p>Born as Daniel Dumile on July 13, 1971, MF DOOM was an influential British-American rapper and record producer known for his intricate lyrics, distinctive flow, and enigmatic persona. Often shrouded in mystery, DOOM's unique style and persona have left an indelible mark on the hip-hop landscape. His ability to craft complex narratives and weave intricate rhymes has made him a beloved figure among fans and a respected name among peers.</p>
                    <p>MF DOOM began his career in the late 1980s as a member of the group KMD. However, the tragic death of his brother and fellow group member, DJ Subroc, coupled with KMD's label dropping them, led to a period of hardship for DOOM. He re-emerged in the late 1990s with a new identity, donning a mask inspired by the Marvel Comics villain Doctor Doom, which became his trademark. This transformation marked the beginning of his solo career and the creation of the MF DOOM persona, which would become legendary in hip-hop circles.</p>

<p>DOOM's discography includes several critically acclaimed albums such as <em>Operation: Doomsday</em> (1999), <em>Mm..Food</em> (2004), and <em>Born Like This</em> (2009). Each of these albums showcases his unique lyrical prowess and production skills, with intricate beats and a distinctive flow that sets him apart from his contemporaries. He also released influential collaborative projects like <em>Madvillainy</em> (2004) with producer Madlib under the group name Madvillain, and <em>The Mouse and the Mask</em> (2005) with producer Danger Mouse under the group name Danger Doom. These collaborations are celebrated for their innovation and creativity, blending different styles and pushing the boundaries of hip-hop.</p>
         
<p>Despite his underground status, DOOM has garnered widespread acclaim and influenced a generation of artists. Rolling Stone included <em>Madvillainy</em> on its list of the 500 Greatest Albums of All Time in 2020. Known for his reclusive nature, DOOM's live performances often featured masked stand-ins, adding to his mystique and challenging conventional norms in the music industry. This approach not only reinforced his enigmatic persona but also highlighted his focus on the music itself rather than the cult of personality that often surrounds artists.</p>

<p>DOOM's impact extends beyond music. His influence can be seen in the works of many contemporary artists, such as Earl Sweatshirt and Tyler, the Creator, who have cited him as a significant inspiration. His commitment to authenticity and artistic integrity has made him a cult figure in hip-hop. He is celebrated for his ability to maintain creative control over his work, often self-producing his albums and maintaining a distinct, uncommercial sound that resonates deeply with his fans.</p>

<p>One artist profoundly inspired by MF DOOM is Earl Sweatshirt. Like DOOM, Earl is known for his dense, poetic lyrics and introspective themes. Both artists share a penchant for dark, brooding production and have built loyal followings through their unique approaches to hip-hop. Earl has frequently acknowledged DOOM's influence on his work, particularly in terms of lyrical complexity and thematic depth. Their music often explores personal and societal issues, creating a space for reflection and conversation about mental health, identity, and existential struggles.</p>

<p>Furthermore, both DOOM and Earl Sweatshirt use their music to explore personal and societal issues, often delving into themes of mental health, identity, and existential reflection. Their willingness to address these topics has resonated deeply with fans, contributing to important conversations within and beyond the hip-hop community. By confronting these issues in their lyrics, they have helped to destigmatize discussions around mental health and provided a voice for those grappling with similar experiences.</p>

<p>Despite his untimely death on October 31, 2020, MF DOOM's legacy lives on. He remains a towering figure in hip-hop, celebrated for his innovation, originality, and profound influence on the genre. His music continues to inspire new generations of artists and fans alike, ensuring that his unique voice and vision endure. The impact of his work can be seen not only in the music of those he directly influenced but also in the broader culture of hip-hop, where his emphasis on lyrical skill, creative independence, and authenticity has left an indelible mark.</p>
</div>

                <div class="kanye">

                </div>
            </div>
        </div>
        <hr>

        <footer>
    <div class="footer-container">
        <div class="company-info">
            <h3>HipHop Geniuses</h3>
            <p>Address: 123 HipHop Avenue, Beats City</p>
            <p>Email: info@hiphopgeniuses.com</p>
            <p>Phone: +1234567890</p>
        </div>
        <div class="user-reviews">
            <h3>MF DOOM Reviews</h3>
            <ul id="userReviewsList">
                <!-- Example Reviews -->
                <li>
                    <blockquote>
                        "MF DOOM's lyrical genius and unique style have left an indelible mark on hip-hop."
                    </blockquote>
                    <div class="rating" id="user_rating1"></div>
                    <p>- Emily Rhyme</p>
                </li>
                <li>
                    <blockquote>
                        "The masked villain's intricate rhymes and beats are unmatched. A legend in every sense."
                    </blockquote>
                    <div class="rating" id="user_rating2"></div>
                    <p>- Alex Beat</p>
                </li>
            </ul>
            <!-- User Review Form -->
            <div class="review-form">
                <h4>Submit Your Review</h4>
                <form action="#" id="reviewform">
                    <textarea placeholder="Write your review here..." id="review"></textarea>
                    <div id="star_rating">
                    </div>
                    <button type="submit">Submit</button>
                </form>
            </div>
        </div>
    </div>
</footer>

        <script>

            document.body.onmousemove = e => {
                document.getElementById("cursor").style.top = e.clientY + "px";
                document.getElementById("cursor").style.left = e.clientX + "px";
            }
            document.body.onmouseenter = () => {
                document.getElementById("cursor").style.display = "block";
                document.getElementById("content").style.cursor = "none";

            }
            document.body.onmouseleave = () => {
                document.getElementById("cursor").style.display = "none";
                document.getElementById("content").style.cursor = "auto";

            }

            const links = document.querySelectorAll('a');


            links.forEach(link => {
                link.addEventListener('mouseover', function () {
                    var cursor = document.getElementById("cursor");
                    cursor.style.transform = cursor.style.transform + "scale(1.3)";
                    cursor.style.animationDuration = "1s";
                });

                link.addEventListener('mouseout', function () {
                    var cursor = document.getElementById("cursor");
                    cursor.style.transform = "scale(1) ";
                    cursor.style.animationDuration = "8s";
                });
            });
            const buttons = document.querySelectorAll('button');
            buttons.forEach(link => {
                link.addEventListener('mouseover', function () {
                    var cursor = document.getElementById("cursor");
                    cursor.style.transform = cursor.style.transform + "scale(1.3)";
                    cursor.style.animationDuration = "1s";
                });

                link.addEventListener('mouseout', function () {
                    var cursor = document.getElementById("cursor");
                    cursor.style.transform = "scale(1) ";
                    cursor.style.animationDuration = "8s";
                });
            });
            // create object
            var starRating = (function () {

                /**
                 * Constructor function
                 *
                 * @param Object args
                 *
                 * @return Object
                 */
                var starRating = function (args) {
                    // give us our self
                    var self = this;

                    // set global vars for our object
                    self.container = jQuery('#' + args.containerId);
                    self.containerId = args.containerId;
                    self.starClass = 'sr-star' + args.containerId;
                    self.starWidth = args.starWidth;
                    self.starHeight = args.starHeight;
                    self.containerWidth = args.starWidth * 5;
                    self.ratingPercent = args.ratingPercent;
                    self.newRating = 0;
                    self.canRate = args.canRate;

                    // draw the 5 star rating system out to the dom
                    self.draw();

                    if (self.canRate) { // do other things if user can rate
                        if (typeof args.onRate !== 'undefined') { // bind custom function
                            self.onRate = args.onRate;
                        }

                        jQuery('.' + self.starClass).on('mouseover', function () { // mouseover a star
                            // determine the percent width on mouseover of any star
                            var percentWidth = 20 * jQuery(this).data('stars');

                            // set the percent width  of the star bar to the new mouseover width
                            $('.sr-star-bar' + self.containerId).css('width', percentWidth + '%');
                        });

                        jQuery('.' + self.starClass).on('mouseout', function () { // mouseout of a star
                            // return the star rating system percent to its previous percent on mouse out of any star
                            jQuery('.sr-star-bar' + self.containerId).css('width', self.ratingPercent);
                        });

                        jQuery('.' + self.starClass).on('click', function () { // click on a star
                            // ner rating set to the number of stars the user clicked on
                            self.newRating = jQuery(this).data('stars');

                            // determine the percent width based on the stars clicked on
                            var percentWidth = 20 * jQuery(this).data('stars');

                            // new rating percent is the number of stars clicked on
                            self.ratingPercent = percentWidth + '%';

                            // set new star bar percent width
                            $('.sr-star-bar' + self.containerId).css('width', percentWidth + '%');

                            // run the on rate function passed in when the object was created
                            self.onRate();
                        });
                    }
                };

                /**
                 * Draw html out to the page
                 *
                 * @param void
                 *
                 * @return void
                 */
                starRating.prototype.draw = function () {
                    var self = this;
                    var pointerStyle = (self.canRate ? 'cursor:pointer' : '');
                    var starImg = '<img src="local/staroutline.png" style="width:' + self.starWidth + 'px" />';
                    var html = '<div style="width:' + self.containerWidth + 'px;height:' + self.starHeight + 'px;position:relative;' + pointerStyle + '">';

                    // create the progress bar that sits behinde the png star outlines
                    html += '<div class="sr-star-bar' + self.containerId + '" style="width:' + self.ratingPercent + ';background:#FFD700;height:100%;position:absolute"></div>';

                    for (var i = 0; i < 5; i++) { // add each star to the page
                        var currStarStyle = 'position:absolute;margin-left:' + self.starWidth * i + 'px';
                        html += '<div class="' + self.starClass + '" data-stars="' + (i + 1) + '" style="' + currStarStyle + '">' +
                            starImg +
                            '</div>';
                    }

                    html += '</div>';

                    // write out to the dom
                    self.container.html(html);
                };

                // return it all!
                return starRating;
            })();
            let wasRated = false;
            let urating = null;
            document.getElementById("reviewform").onsubmit = (e) => {
                if (document.getElementById("review").value == "") {
                    e.preventDefault();
                }
                if (!wasRated) {
                    e.preventDefault();
                }
                console.log(urating.ratingPercent);
            }
            $(function () {
                var rating = new starRating({ // create first star rating system on page load
                    containerId: 'star_rating', // element id in the dom for this star rating system to use
                    starWidth: 50, // width of stars
                    starHeight: 50, // height of stars
                    ratingPercent: '50%', // percentage star system should start
                    canRate: true, // can the user rate this star system?
                    onRate: function () { // this function runs when a star is clicked on
                        console.log(rating);
                        wasRated = true;
                        urating = rating;
                    }
                });
                var somerating = new starRating({ // create first star rating system on page load
                    containerId: 'user_rating1', // element id in the dom for this star rating system to use
                    starWidth: 25, // width of stars
                    starHeight: 25, // height of stars
                    ratingPercent: '80%', // percentage star system should start
                    canRate: false, // can the user rate this star system?
                });
                var someotherrating = new starRating({ // create first star rating system on page load
                    containerId: 'user_rating2', // element id in the dom for this star rating system to use
                    starWidth: 25, // width of stars
                    starHeight: 25, // height of stars
                    ratingPercent: '100%', // percentage star system should start
                    canRate: false, // can the user rate this star system?
                });
            });
        </script>
    </asp:Content>