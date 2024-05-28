<%@ Page Title="" Language="C#" MasterPageFile="~/Navigation.Master" AutoEventWireup="true" CodeBehind="history.aspx.cs" Inherits="Ozal.history" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>History of Hip-Hop</title>
    <style>
        body {
            background-color: #121212;
            color: #FFFFFF;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }
        header {
            text-align: center;
            padding: 20px 0;
        }
        h1 {
            color: #BB86FC;
        }
        section {
            margin: 20px 0;
        }
        h2 {
            color: #03DAC6;
        }
        p {
            line-height: 1.6;
        }
        footer {
            text-align: center;
            padding: 20px 0;
            border-top: 1px solid #333;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <header>
        <h1>The History of Hip-Hop</h1>
    </header>
    <section>
        <h2>Origins (1970s)</h2>
        <p>
            Hip-hop originated in the Bronx, New York City, during the early 1970s. It started as a cultural movement that included four main elements: MCing (rapping), DJing, breakdancing, and graffiti art. DJ Kool Herc, often credited as the "Father of Hip-Hop," was a pivotal figure during this time, known for his innovative DJing techniques.
        </p>
    </section>
    <section>
        <h2>Golden Age (1980s)</h2>
        <p>
            The 1980s marked the golden age of hip-hop, characterized by its diversity, quality, innovation, and influence. Artists like Run-D.M.C., LL Cool J, Public Enemy, and the Beastie Boys brought hip-hop into the mainstream. This era also saw the rise of hip-hop films, fashion, and the use of sampling in music production.
        </p>
    </section>
    <section>
        <h2>Commercial Success (1990s)</h2>
        <p>
            The 1990s saw hip-hop becoming a dominant genre in the music industry. Artists such as Tupac Shakur, The Notorious B.I.G., Nas, and Jay-Z achieved significant commercial success and critical acclaim. This period also witnessed the emergence of sub-genres like gangsta rap and the expansion of hip-hop culture globally.
        </p>
    </section>
    <section>
        <h2>Modern Era (2000s-Present)</h2>
        <p>
            In the 2000s and beyond, hip-hop has continued to evolve and diversify. Artists like Eminem, Kanye West, Kendrick Lamar, and Drake have pushed the boundaries of the genre. Hip-hop today is a global phenomenon, influencing various aspects of culture and society, including fashion, language, and politics.
        </p>
    </section>
    <footer>
        &copy; 2024 Hip-Hop Geniuses
    </footer>
</asp:Content>
