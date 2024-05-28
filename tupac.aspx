<%@ Page Title="" Language="C#" MasterPageFile="~/Navigation.Master" AutoEventWireup="true" CodeBehind="tupac.aspx.cs" Inherits="Ozal.tupac" %>
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

        .tupac {
            background-image: url("/local/tupac-wiki.jpg");
            max-width: 30%;
            min-width: 20%;
            max-height: 500px;
            background-position: center;
            background-size: cover;
            margin-inline: 10px;
            border-radius: 10px;
        }

        @media (max-width: 1000px) {
            .metro {
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
        Tupac Shakur
    </h1>
    <h2>Inspirational music artist and actor</h2>
    <div class="cont">
        <div class="info">
            <p>Tupac Amaru Shakur (June 16, 1971 – September 13, 1996) was an American rapper, songwriter, and actor. A subject of widespread admiration and controversy, Shakur is a significant figure in contemporary pop culture and is considered one of the greatest rappers of all time.</p>

            <p>Shakur's albums—2Pacalypse Now (1991), Strictly 4 My N.I.G.G.A.Z. (1993), Me Against the World (1995), All Eyez on Me (1996), and The Don Killuminati: The 7 Day Theory (1996)—were influential in shaping the genre of hip-hop. His posthumous releases have also been critically acclaimed, solidifying his legacy as a prolific artist. Rolling Stone named him one of the 100 Greatest Artists of All Time. Shakur was known for addressing contemporary social issues and advocating for social justice, making him a prominent voice for the marginalized.</p>

            <p>Shakur's outspoken views and life experiences have received significant media coverage. He was a frequent source of controversy due to his run-ins with the law, feuds with other rappers, and his untimely death at the age of 25. His music often reflected his struggles with poverty, violence, and systemic racism, resonating deeply with his audience. Shakur's influence extended beyond music into acting, with notable roles in films like Juice (1992) and Poetic Justice (1993).</p>

            <p>One of the best-selling music artists, Shakur has sold over 75 million records worldwide. He has won numerous awards, including the American Music Awards for Favorite Rap/Hip-Hop Artist, and has been inducted into the Rock and Roll Hall of Fame. His other accolades include the Billboard Music Award and the Grammy Lifetime Achievement Award.</p>
            <p>Tupac Shakur's influence extends far beyond his music. He is known for pushing boundaries in both music and acting, often blurring the lines between the two. His thought-provoking lyrics and authentic portrayal of life in his films have inspired a generation of artists and activists. His collaborations and innovative approach to music production have left a lasting impact on the industry.</p>

            <p>One artist who has drawn significant inspiration from Tupac Shakur is Kendrick Lamar. Like Shakur, Lamar is renowned for his lyricism and introspective storytelling, tackling complex social issues with poise and authenticity. Both artists share a penchant for experimentation, constantly pushing the boundaries of hip-hop and challenging the status quo. In fact, Lamar has often cited Shakur as one of his biggest influences, acknowledging the impact of Shakur's groundbreaking albums on his own artistic journey.</p>

            <p>Furthermore, both Shakur and Lamar have used their platforms to address issues of race, inequality, and systemic injustice. Through their music, they've sparked important conversations about identity and empowerment, resonating deeply with audiences around the world. Their willingness to confront uncomfortable truths and advocate for social change has earned them widespread acclaim and cemented their legacies as two of the most influential voices in contemporary music.</p>
        </div>

        <div class="tupac">

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
            <h3>Tupac Shakur Reviews</h3>
            <ul id="userReviewsList">
                <!-- Example Reviews -->
                <li>
                    <blockquote>
                        "Tupac's creativity and passion continue to inspire us. His legacy lives on in every beat and verse."
                    </blockquote>
                    <div class="rating" id="user_rating1"></div>
                    <p>- Emily Rhyme</p>
                </li>
                <li>
                    <blockquote>
                        "Love him or hate him, Tupac always keeps us thinking. A true icon of our time."
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
