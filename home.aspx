<%@ Page Title="" Language="C#" MasterPageFile="~/Navigation.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs"
  Inherits="Ozal.WebForm1" %>
  <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>
      Home - Hip Hop Geniuses
    </title>
    <style>
      :root {
        --bg-color: rgb(20, 20, 20);
        --card-color: rgb(23, 23, 23);
      }

      #cards {
        display: flex;
        flex-wrap: wrap;
        gap: 8px;
        max-width: 916px;
        width: calc(100% - 20px);
      }

      #cards:hover>.card::after {
        opacity: 1;
      }

      .card {
        background-color: rgba(255, 255, 255, 0.1);
        border-radius: 10px;
        cursor: pointer;
        display: flex;
        height: 260px;
        flex-direction: column;
        position: relative;
        width: 300px;
      }

      .card:hover::before {
        opacity: 1;
      }

      .card::before,
      .card::after {
        border-radius: inherit;
        content: "";
        height: 100%;
        left: 0px;
        opacity: 0;
        position: absolute;
        top: 0px;
        transition: opacity 500ms;
        width: 100%;
      }

      .card::before {
        background: radial-gradient(800px circle at var(--mouse-x) var(--mouse-y),
            rgba(255, 255, 255, 0.06),
            transparent 40%);
        z-index: 3;
      }

      .card::after {
        background: radial-gradient(600px circle at var(--mouse-x) var(--mouse-y),
            rgba(255, 255, 255, 0.4),
            transparent 40%);
        z-index: 1;
      }

      .card>.card-content {
        background-color: var(--card-color);
        border-radius: inherit;
        display: flex;
        flex-direction: column;
        flex-grow: 1;
        inset: 1px;
        padding: 10px;
        position: absolute;
        z-index: 2;
      }

      /* -- ↓ ↓ ↓ extra card content styles ↓ ↓ ↓ -- */

      h1,
      h2,
      h3,
      h4,
      span {
        color: rgb(240, 240, 240);
        font-family: "Rubik", sans-serif;
        font-weight: 400;
        margin: 0px;
      }

      i {
        color: rgb(240, 240, 240);
      }

      .card-image {
        align-items: center;
        display: flex;
        height: 140px;
        justify-content: center;
        overflow: hidden;
      }

      .card-image>i {
        font-size: 6em;
        opacity: 0.25;
      }

      .card-info-wrapper {
        align-items: center;
        display: flex;
        flex-grow: 1;
        justify-content: flex-start;
        padding: 0px 20px;
      }

      .card-info {
        align-items: flex-start;
        display: flex;
        gap: 10px;
      }

      .card-info>i {
        font-size: 1em;
        height: 20px;
        line-height: 20px;
      }

      .card-info-title>h3 {
        padding-top: 4px;
        padding-left: 4px;
        font-size: 1.6em;
        font-weight: bold;
        line-height: 20px;
      }

      .card-info-title {

        overflow: hidden;
        text-overflow: ellipsis;
      }

      .card-info-title>h4 {
        color: rgba(255, 255, 255, 0.5);
        font-size: 0.85em;
        margin-top: 8px;
      }

      /* -- ↓ ↓ ↓ some responsiveness ↓ ↓ ↓ -- */

      @media(max-width: 1000px) {
        body {
          align-items: flex-start;
          overflow: auto;
        }

        #cards {
          max-width: 1000px;
          padding: 10px 0px;
        }

        .card {
          flex-shrink: 1;
          width: calc(50% - 4px);
        }
      }

      @media(max-width: 500px) {
        .card {
          height: 180px;
        }

        .card-image {
          height: 80px;
        }

        .card-image>i {
          font-size: 3em;
        }

        .card-info-wrapper {
          padding: 0px 10px;
        }

        .card-info>i {
          font-size: 0.8em;
        }

        .card-info-title>h3 {
          font-size: 0.9em;
        }

        .card-info-title>h4 {
          font-size: 0.8em;
          margin-top: 4px;
        }
      }

      @media(max-width: 320px) {
        .card {
          width: 100%;
        }
      }

      * {
        text-overflow: ellipsis;
      }

      /* -- ↓ ↓ ↓ YouTube link styles ↓ ↓ ↓ -- */

      #youtube-link {
        bottom: 10px;
      }

      #youtube-link>i {
        color: rgb(239, 83, 80);
      }

      #source-link {
        bottom: 60px;
      }

      #source-link>i {
        color: rgb(94, 106, 210);
      }

      .link {
        align-items: center;
        backdrop-filter: blur(3px);
        background-color: rgba(255, 255, 255, 0.05);
        border: 1px solid rgba(255, 255, 255, 0.1);
        border-radius: 6px;
        box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.1);
        cursor: pointer;
        display: inline-flex;
        gap: 5px;
        left: 10px;
        padding: 10px 20px;
        position: fixed;
        text-decoration: none;
        z-index: 100;
      }

      .link:hover {
        background-color: rgba(255, 255, 255, 0.1);
        border: 1px solid rgba(255, 255, 255, 0.2);
      }

      .link>i,
      .link>span {
        height: 20px;
        line-height: 20px;
      }

      .link>span {
        color: white;
      }

      .maincontainer {
        display: flex;
        justify-content: center;
        padding-top: 50px;
      }

      .pfp {
        width: 70px;
        height: 70px;
        background-size: cover;
        background-position-x: center;
        background-position-y: center;

        border-radius: 5px;
        border: medium;
      }

      .mf {
        background-image: url("/local/mf.jpg");
      }

      .Title {
        display: flex;
        flex-direction: row;
        column-gap: 4px;
      }

      .kendrick {
        background-image: url("/local/kendrick.jpeg")
      }

      .tupac {
        background-image: url("/local/tupac.jpg");
      }

      .metro {
        background-image: url("/local/metro.jpg");
      }

      .kanye {
        background-image: url("/local/kanye.jpg");
      }

      .swift {
        background-image: url("/local/swift.png")
      }
    </style>
  </asp:Content>
  <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="maincontainer">
      <div id="cards">
        <a href="mfdoom.aspx">
          <div class="card">
            <div class="card-content">
              <div class="Title">
                <div class="pfp mf">

                </div>
                <div class="card-info-title ">
                  <h3>MF DOOM
                  </h3>
                </div>
              </div>
              <div class="card-info-title">
                <h4>

                  MF DOOM, a legendary figure in hip-hop, is known for his intricate rhymes, distinctive masked persona,
                  and innovative production. With a career spanning decades, he has left an indelible mark on the genre,
                  blending complex wordplay with diverse musical influences. His enigmatic presence and boundary-pushing
                  creativity have cemented him as one of the most influential and revered artists in the history of
                  hip-hop.
                </h4>
              </div>
            </div>
          </div>
        </a>
          <a href="kendrick.aspx">
        <div class="card">
          <div class="card-content">
            <div class="Title">
              <div class="pfp kendrick">

              </div>
              <div class="card-info-title ">
                <h3>Kendrick Lamar
                </h3>
              </div>
            </div>
            <div class="card-info-title">
              <h4>

                Kendrick Lamar is a Grammy-winning rapper and songwriter celebrated for his profound lyricism, social
                commentary, and innovative storytelling. Hailing from Compton, California, Lamar has emerged as one of
                the most influential voices in contemporary hip-hop. His albums, characterized by their thematic depth
                and sonic experimentation, have garnered critical acclaim and commercial success. Beyond his musical
                prowess, Lamar is also recognized for his activism and advocacy for social justice issues. He stands as
                a visionary artist whose impact transcends the boundaries of the music industry. </h4>
            </div>
          </div>
        </div>
              </a>
        <a href="tupac.aspx">
        <div class="card">
          <div class="card-content">
            <div class="Title">
              <div class="pfp tupac">

              </div>
              <div class="card-info-title ">
                <h3>2Pac
                </h3>
              </div>
            </div>
            <div class="card-info-title">
              <h4>

                2Pac, born Tupac Shakur, is a towering figure in the world of hip-hop, revered for his raw lyricism,
                powerful delivery, and fearless social commentary. Emerging from the gritty streets of East Harlem, New
                York, and later the West Coast scene, 2Pac became a symbol of resilience and defiance in the face of
                adversity. His music tackled themes of inner-city life, racial injustice, and personal struggle with
                unparalleled honesty and intensity. Beyond his musical talents, 2Pac was a multifaceted artist, delving
                into acting and poetry, leaving an enduring legacy that continues to inspire generations. He remains one
                of the most iconic and influential figures in the history of rap music. </h4>
            </div>
          </div>
        </div>
            </a>
          <a href="metro.aspx">
        <div class="card">
          <div class="card-content">
            <div class="Title">
              <div class="pfp metro">

              </div>
              <div class="card-info-title ">
                <h3>Metro Boomin
                </h3>
              </div>
            </div>
            <div class="card-info-title">
              <h4>

                Although Metro Boomin is primarily known as a producer, his impact on hip-hop is undeniable, solidifying
                his status as a genius within the genre. With his signature tag, "If Young Metro don't trust you, I'm
                gon' shoot you," Metro has become synonymous with chart-topping hits and innovative beats. His
                production style, characterized by booming basslines, intricate melodies, and minimalist yet powerful
                arrangements, has shaped the sound of modern rap. Collaborating with some of the biggest names in the
                industry, Metro has consistently delivered iconic tracks that resonate with audiences worldwide. Beyond
                his production prowess, his ability to curate cohesive and impactful projects showcases his versatility
                and vision. In the ever-evolving landscape of hip-hop, Metro Boomin stands as a trailblazer, redefining
                the role of the producer and leaving an indelible mark on the culture. </h4>
            </div>
          </div>
        </div>
              </a>
        <a href="kanye.aspx">
          <div class="card">
            <div class="card-content">
              <div class="Title">
                <div class="pfp kanye">

                </div>
                <div class="card-info-title ">
                  <h3>Kanye West
                  </h3>
                </div>
              </div>
              <div class="card-info-title">
                <h4>

                  Kanye West is a visionary force in hip-hop whose influence extends far beyond music. Renowned for his
                  groundbreaking production, innovative soundscapes, and boundary-pushing creativity, Kanye has
                  continuously redefined the genre throughout his illustrious career. From his groundbreaking debut
                  album
                  "The College Dropout" to the genre-defying "Yeezus" and beyond, Kanye has fearlessly challenged
                  conventions and pushed artistic boundaries. Beyond music, his ventures into fashion, design, and even
                  politics have further solidified his status as a cultural icon. Love him or hate him, Kanye's impact
                  on
                  hip-hop and popular culture is undeniable, cementing his legacy as one of the most influential and
                  controversial figures in music history.
              </div>
            </div>
          </div>
        </a>
        <a href="taylor.aspx">
          <div class="card">
            <div class="card-content">
              <div class="Title">
                <div class="pfp swift">

                </div>
                <div class="card-info-title ">
                  <h3>Taylor Swift
                  </h3>
                </div>
              </div>
              <div class="card-info-title">
                <h4>

                  Taylor Swift is one of the most useless artists of our generation she havent released anything useless
                  in her entire carrer and lets not talk about the damn swifites literally screaming in my ears because
                  I "Didnt listen to Taylor's version" while she is a multi millionare that is flying for a 2 minute
                  drive cause she left the remote on the other side of the couch and still these damn swifties will
                  defend that ugly disgusting whore

                </h4>
              </div>
            </div>
          </div>
        </a>
      </div>
    </div>
    <script>
      document.getElementById("cards").onmousemove = e => {
        for (const card of document.getElementsByClassName("card")) {
          const rect = card.getBoundingClientRect(),
            x = e.clientX - rect.left,
            y = e.clientY - rect.top;

          card.style.setProperty("--mouse-x", `${x}px`);
          card.style.setProperty("--mouse-y", `${y}px`);
        };
      }
    </script>
  </asp:Content>