<%@ Page Title="" Language="C#" MasterPageFile="~/Navigation.Master" AutoEventWireup="true" CodeBehind="kanye.aspx.cs"
    Inherits="Ozal.kanye" %>
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
                background-image: url("/local/kanye-wiki.jpg");
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
                Kanye West
            </h1>
            <h2>Inpirational music artist and producer</h2>
            <div class="cont">
                <div class="info">
                    <p>Ye Born as "Kanye Omari West" (June 8, 1977) is an American rapper, singer, songwriter, record
                        producer,
                        and fashion
                        designer. A subject of widespread controversy and public interest, West is a significant figure
                        in
                        contemporary pop
                        culture.</p>

                    <p>West's first six solo albums—The College Dropout (2004), Late Registration (2005), Graduation
                        (2007),
                        808s &
                        Heartbreak (2008), My Beautiful Dark Twisted Fantasy (2010), and Yeezus (2013)—were included on
                        Rolling
                        Stone's 500
                        Greatest Albums of All Time list in 2020, with the same publication naming him one of the 100
                        Greatest
                        Songwriters
                        of All Time. He has also released the collaborative albums Watch the Throne (2011) with Jay-Z,
                        Kids
                        See
                        Ghosts
                        (2018) with Kid Cudi, and Vultures 1 (2024) with Ty Dolla Sign. West holds the joint record
                        (with
                        Bob
                        Dylan) for
                        most albums (4) topping the annual Pazz & Jop critic poll. Time named him one of the 100 most
                        influential people in
                        the world in 2005 and 2015. In fashion design, he has collaborated with Nike, Inc., Louis
                        Vuitton,
                        Gap
                        Inc., and
                        A.P.C. on clothing and footwear, and led the Yeezy collaboration with Adidas.</p>

                    <p>West's outspoken views have received significant media coverage. He has been a frequent source of
                        controversy due to
                        his conduct on social media and at awards shows and public settings, as well as his comments on
                        the
                        music and
                        fashion industries, U.S. politics, race, and slavery. His Christian faith, high-profile marriage
                        to
                        Kim
                        Kardashian,
                        and mental health have also been topics of media attention. In 2020, West launched an
                        unsuccessful
                        independent
                        presidential campaign that advocated for a consistent life ethic. In October 2022, he was widely
                        condemned and lost
                        many sponsors and partnerships—including his collaborations with Adidas, Gap, and
                        Balenciaga—after
                        making a series
                        of antisemitic statements, including praising Adolf Hitler and denying the Holocaust.</p>

                    <p>One of the world's best-selling music artists with 160 million records sold, West has won 24
                        Grammy
                        Awards, the joint
                        11th-most of all time and most awarded for any hip hop artist along with Jay-Z. His other
                        accolades
                        include a
                        Billboard Artist Achievement Award, a joint-record three Brit Awards for Best International Male
                        Solo
                        Artist, and
                        the Michael Jackson Video Vanguard Award.</p>
                    <p>Kanye West's influence extends far beyond his music. He's known for pushing boundaries in both
                        fashion
                        and music,
                        often blurring the lines between the two. His collaborations with major brands like Nike, Louis
                        Vuitton,
                        and Adidas
                        have not only reshaped the landscape of streetwear but have also cemented his status as a
                        cultural
                        icon.
                        Similarly,
                        his innovative approach to music production, incorporating diverse genres and unconventional
                        sounds,
                        has
                        inspired a
                        generation of artists.</p>

                    <p>One artist who has drawn significant inspiration from Kanye West is <a
                            href="kendrick.aspx">Kendrick
                            Lamar</a>. Like West, Lamar is
                        renowned for
                        his lyricism and introspective storytelling, tackling complex social issues with poise and
                        authenticity.
                        Both
                        artists share a penchant for experimentation, constantly pushing the boundaries of hip-hop and
                        challenging the
                        status quo. In fact, Lamar has often cited West as one of his biggest influences, acknowledging
                        the
                        impact of West's
                        groundbreaking albums on his own artistic journey.</p>

                    <p>Furthermore, both West and Lamar have used their platforms to address issues of race, inequality,
                        and
                        systemic
                        injustice. Through their music, they've sparked important conversations about identity and
                        empowerment,
                        resonating
                        deeply with audiences around the world. Their willingness to confront uncomfortable truths and
                        advocate
                        for social
                        change has earned them widespread acclaim and cemented their legacies as two of the most
                        influential
                        voices in
                        contemporary music.</p>

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
                    <h3>Kanye West Reviews</h3>
                    <ul id="userReviewsList">
                        <!-- Example Reviews -->
                        <li>
                            <blockquote>
                                "Kanye's creativity knows no bounds! He continues to redefine the genre with every
                                release."
                            </blockquote>
                            <div class="rating" id="user_rating1"></div>
                            <p>- Emily Rhyme</p>
                        </li>
                        <li>
                            <blockquote>
                                "Love him or hate him, Kanye always keeps us talking. A true icon of our time."
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