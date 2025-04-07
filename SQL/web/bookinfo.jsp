<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book Info - Online Bookstore</title>
    <style>
        
        body {
            font-family: Arial, sans-serif;
            background: url('https://farm1.staticflickr.com/130/376152628_249e3630c0_o_d.jpg') no-repeat center center fixed;
            background-size: cover;
            text-align: center;
            color: white;
            margin: 0;
            padding: 20px;
        }

       
        h2 {
            font-size: 36px;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        }

       
        .category-container {
            background: rgba(0, 0, 0, 0.6);
            padding: 15px;
            border-radius: 10px;
            width: 80%;
            margin: 20px auto;
            box-shadow: 0 4px 8px rgba(255, 215, 0, 0.5);
        }

        
        .category-title {
            font-size: 24px;
            color: gold; 
            margin-bottom: 10px;
        }

        
        .book-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        
        .book-card {
            background: rgba(255, 255, 255, 0.8);
            color: black;
            padding: 10px;
            margin: 10px;
            width: 200px;
            border-radius: 5px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        
        .order-btn {
            display: inline-block;
            padding: 10px 20px;
            font-size: 18px;
            color: white;
            background: orange; 
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
            font-weight: bold;
        }

        .order-btn:hover {
            background: darkorange;
        }

    </style>
</head>
<body>

    <h2>📚 Welcome to Shree Online Bookstore System 📚</h2>

    
    <div class="category-container">
        <div class="category-title">✨ Motivational Books ✨</div>
        <div class="book-list">
            <div class="book-card">The Power of Now<br><b>Author:</b> Eckhart Tolle<br><b>Price:</b> ₹499</div>
            <div class="book-card">Atomic Habits<br><b>Author:</b> James Clear<br><b>Price:</b> ₹599</div>
            <div class="book-card">The Secret<br><b>Author:</b> Rhonda Byrne<br><b>Price:</b> ₹499</div>
            <div class="book-card">Think & Grow Rich<br><b>Author:</b> Napoleon Hill<br><b>Price:</b> ₹450</div>
            <div class="book-card">Rich Dad Poor Dad<br><b>Author:</b> Robert Kiyosaki<br><b>Price:</b> ₹550</div>
            <div class="book-card">Mindset<br><b>Author:</b> Carol Dweck<br><b>Price:</b> ₹620</div>
            <div class="book-card">The 5 AM Club<br><b>Author:</b> Robin Sharma<br><b>Price:</b> ₹699</div>
            <div class="book-card">Grit<br><b>Author:</b> Angela Duckworth<br><b>Price:</b> ₹499</div>
            <div class="book-card">Awaken the Giant Within<br><b>Author:</b> Tony Robbins<br><b>Price:</b> ₹720</div>
            <div class="book-card">The Magic of Thinking Big<br><b>Author:</b> David Schwartz<br><b>Price:</b> ₹480</div>
        </div>
    </div>

    
    <div class="category-container">
        <div class="category-title">🧠 Psychological Books 🧠</div>
        <div class="book-list">
            <div class="book-card">Influence<br><b>Author:</b> Robert Cialdini<br><b>Price:</b> ₹650</div>
            <div class="book-card">Thinking, Fast & Slow<br><b>Author:</b> Daniel Kahneman<br><b>Price:</b> ₹780</div>
            <div class="book-card">The Paradox of Choice<br><b>Author:</b> Barry Schwartz<br><b>Price:</b> ₹550</div>
            <div class="book-card">The Lucifer Effect<br><b>Author:</b> Philip Zimbardo<br><b>Price:</b> ₹820</div>
            <div class="book-card">Drive<br><b>Author:</b> Daniel Pink<br><b>Price:</b> ₹600</div>
            <div class="book-card">Predictably Irrational<br><b>Author:</b> Dan Ariely<br><b>Price:</b> ₹720</div>
            <div class="book-card">How to Win Friends & Influence People<br><b>Author:</b> Dale Carnegie<br><b>Price:</b> ₹480</div>
            <div class="book-card">Blink<br><b>Author:</b> Malcolm Gladwell<br><b>Price:</b> ₹620</div>
            <div class="book-card">The Laws of Human Nature<br><b>Author:</b> Robert Greene<br><b>Price:</b> ₹750</div>
            <div class="book-card">Quiet<br><b>Author:</b> Susan Cain<br><b>Price:</b> ₹540</div>
        </div>
    </div>

    
    <div class="category-container">
        <div class="category-title">👻 Horror Books 👻</div>
        <div class="book-list">
            <div class="book-card">It<br><b>Author:</b> Stephen King<br><b>Price:</b> ₹650</div>
            <div class="book-card">The Shining<br><b>Author:</b> Stephen King<br><b>Price:</b> ₹780</div>
            <div class="book-card">Dracula<br><b>Author:</b> Bram Stoker<br><b>Price:</b> ₹550</div>
            <div class="book-card">Frankenstein<br><b>Author:</b> Mary Shelley<br><b>Price:</b> ₹499</div>
            <div class="book-card">The Soul<br><b>Author:</b> David smith<br><b>Price:</b> ₹600</div>
            <div class="book-card"><br>The Silence of the Lambs <b>Author:</b> Thomas Harris<br><b>Price:</b> ₹500</div>
            <div class="book-card">House of Leaves<br><b>Author:</b> Mark Z. Danielewski<br><b>Price:</b> ₹799</div>
            <div class="book-card">The Exorcist<br><b>Author:</b> William Peter Blatty<br><b>Price:</b> ₹800</div>
            <div class="book-card">Old House<br><b>Author:</b> Adham rubber<br><b>Price:</b> ₹599</div>
            <div class="book-card">First Kill<br><b>Author:</b> john Danish<br><b>Price:</b> ₹899</div>
        </div>
    </div>

    
    <div class="category-container">
        <div class="category-title">❤️ Romantic Books ❤️</div>
        <div class="book-list">
            <div class="book-card">Pride & Prejudice<br><b>Author:</b> Jane Austen<br><b>Price:</b> ₹520</div>
            <div class="book-card">Me Before You<br><b>Author:</b> Jojo Moyes<br><b>Price:</b> ₹500</div>
            <div class="book-card">The Notebook<br><b>Author:</b> Nicholas Sparks<br><b>Price:</b> ₹650</div>
            <div class="book-card">Outlander <br><b>Author:</b> Diana Gabaldon<br><b>Price:</b> ₹400</div>
            <div class="book-card">The Rosie Project<br><b>Author:</b> Graeme Simsion<br><b>Price:</b> ₹450</div>
            <div class="book-card">It Ends With Us<br><b>Author:</b> Colleen Hoover<br><b>Price:</b> ₹520</div>
            <div class="book-card">The Time Traveler’s Wife<br><b>Author:</b> Audrey Niffenegger<br><b>Price:</b> ₹200</div>
            <div class="book-card">Eleanor & Park<br><b>Author:</b> Rainbow Rowell<br><b>Price:</b> ₹590</div>
            <div class="book-card">The Hating Game<br><b>Author:</b> Sally Thorne<br><b>Price:</b> ₹1000</div>
            <div class="book-card">Love At First Site<br><b>Author:</b> Ronnie Willaim<br><b>Price:</b> ₹820</div>
        </div>
    </div>

    <div class="category-container">
        <div class="category-title">😢 Emotional Books 😢</div>
        <div class="book-list">
            <div class="book-card">A Man Called Ove<br><b>Author:</b> Fredrik Backman<br><b>Price:</b> ₹480</div>
            <div class="book-card">A Little Life<br><b>Author:</b> Hanya Yanagihara<br><b>Price:</b> ₹400</div>
            <div class="book-card">The Book Thief <br><b>Author:</b> Markus Zusak<br><b>Price:</b> ₹900</div>
            <div class="book-card">The Fault in Our Stars<br><b>Author:</b>  John Green<br><b>Price:</b> ₹580</div>
            <div class="book-card">The Kite Runner<br><b>Author:</b>  Khaled Hosseini<br><b>Price:</b> ₹980</div>
            <div class="book-card">Where the Crawdads Sing <br><b>Author:</b> Delia Owens<br><b>Price:</b> ₹300</div>
            <div class="book-card">If I Stay<br><b>Author:</b> Gayle Forman<br><b>Price:</b> ₹250</div>
            <div class="book-card">My Sister’s Keeper<br><b>Author:</b> Jodi Picoult<br><b>Price:</b> ₹350</div>
            <div class="book-card">The Nightingale<br><b>Author:</b>  Kristin Hannah<br><b>Price:</b> ₹100</div>
            <div class="book-card">Before We Were Strangers<br><b>Author:</b>  Renée Carlino<br><b>Price:</b> ₹800</div>
            
        </div>
    </div>

    <div class="category-container">
        <div class="category-title">🙏 God Books 🙏</div>
        <div class="book-list">
            <div class="book-card">Bhagavad Gita<br><b>Author:</b> Ved Vyasa<br><b>Price:</b> ₹499</div>
            <div class="book-card">Ramayana<br><b>Author:</b> Valmiki<br><b>Price:</b> ₹499</div>
            <div class="book-card">Shiva Trilogy<br><b>Author:</b> Amish Tripathi<br><b>Price:</b> ₹499</div>
            <div class="book-card">Jaya<br><b>Author:</b> Devdutt Pattanaik<br><b>Price:</b> ₹499</div>
            <div class="book-card">Sita<br><b>Author:</b> Devdutt Pattanaik<br><b>Price:</b> ₹499</div>
            <div class="book-card">The Palace of Illusions<br><b>Author:</b>  Chitra Banerjee Divakaruni<br><b>Price:</b> ₹499</div>
            <div class="book-card">The Krishna Key<br><b>Author:</b> Ashwin Sanghi<br><b>Price:</b> ₹499</div>
            <div class="book-card">Yuganta<br><b>Author:</b> Irawati Karve<br><b>Price:</b> ₹499</div>
            <div class="book-card">Ajaya & Asura Series<br><b>Author:</b> Anand Neelakantan<br><b>Price:</b> ₹499</div>
            <div class="book-card">Myth <br><b>Author:</b> Devdutt Pattanaik<br><b>Price:</b> ₹499</div>
        </div>
    </div>

    <a href="orderbook.jsp" class="order-btn">📖 Order a Book</a>

</body>
</html>
