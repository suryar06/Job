<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GETJOBS.COM - Job Portal</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            color: white;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        
        .header {
            text-align: center;
            margin-bottom: 40px;
        }
        
        .header h1 {
            font-size: 3.5rem;
            margin-bottom: 10px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }
        
        .header p {
            font-size: 1.2rem;
            opacity: 0.9;
        }
        
        .marquee {
            background: white;
            color: #2563eb;
            padding: 20px;
            border-radius: 15px;
            margin-bottom: 40px;
            font-weight: bold;
            font-size: 1.3rem;
            text-align: center;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            animation: pulse 2s infinite;
        }
        
        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.02); }
        }
        
        .login-section {
            display: flex;
            justify-content: center;
            gap: 30px;
            margin-bottom: 50px;
            flex-wrap: wrap;
        }
        
        .login-btn {
            background: linear-gradient(45deg, #4CAF50, #45a049);
            color: white;
            padding: 25px 50px;
            text-decoration: none;
            border-radius: 15px;
            font-size: 1.2rem;
            font-weight: bold;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            display: flex;
            align-items: center;
            gap: 10px;
        }
        
        .login-btn:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0,0,0,0.3);
        }
        
        .categories-section {
            background: rgba(255,255,255,0.1);
            border-radius: 20px;
            padding: 30px;
            backdrop-filter: blur(10px);
        }
        
        .categories-section h2 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 2rem;
        }
        
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
        }
        
        .category {
            background: rgba(255,255,255,0.2);
            padding: 20px;
            border-radius: 12px;
            text-align: center;
            cursor: pointer;
            transition: all 0.3s ease;
            border: 2px solid transparent;
        }
        
        .category:hover {
            background: rgba(255,255,255,0.3);
            border-color: #4CAF50;
            transform: translateY(-3px);
        }
        
        .footer {
            text-align: center;
            margin-top: 50px;
            padding: 20px;
            background: rgba(0,0,0,0.2);
            border-radius: 10px;
        }
        
        .demo-notice {
            background: #ff6b6b;
            color: white;
            padding: 15px;
            border-radius: 10px;
            margin-bottom: 30px;
            text-align: center;
            font-weight: bold;
        }
        
        @media (max-width: 768px) {
            .header h1 {
                font-size: 2.5rem;
            }
            
            .login-section {
                flex-direction: column;
                align-items: center;
            }
            
            .login-btn {
                width: 100%;
                max-width: 300px;
                justify-content: center;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="demo-notice">
            🚀 DEMO VERSION - Job Portal Application
        </div>
        
        <div class="header">
            <h1>GETJOBS.COM</h1>
            <p>Find Your Dream Job Today</p>
        </div>

        <div class="marquee">
            🚀 INFOSYS, HP, COGNIZANT, TRAVISCA, DEOLITE and MANY MORE 🚀
        </div>

        <div class="login-section">
            <a href="#" class="login-btn" onclick="showLogin('applicant')">
                👤 APPLICANT LOGIN
            </a>
            <a href="#" class="login-btn" onclick="showLogin('employer')">
                🏢 EMPLOYER LOGIN
            </a>
        </div>

        <div class="categories-section">
            <h2>Browse Job Categories</h2>
            <div class="categories-grid">
                <div class="category" onclick="showCategory('Advertising/PR')">Advertising/PR</div>
                <div class="category" onclick="showCategory('Arts/Entertainment')">Arts/Entertainment</div>
                <div class="category" onclick="showCategory('Education')">Education/Training</div>
                <div class="category" onclick="showCategory('Engineering')">Engineering/Architecture</div>
                <div class="category" onclick="showCategory('Healthcare')">Health Care</div>
                <div class="category" onclick="showCategory('IT')">IT/Technology</div>
                <div class="category" onclick="showCategory('Marketing')">Marketing</div>
                <div class="category" onclick="showCategory('Sales')">Sales</div>
                <div class="category" onclick="showCategory('Finance')">Banking/Finance</div>
                <div class="category" onclick="showCategory('Manufacturing')">Manufacturing</div>
                <div class="category" onclick="showCategory('Retail')">Retail</div>
                <div class="category" onclick="showCategory('Government')">Government</div>
            </div>
        </div>

        <div class="footer">
            <p>GETJOBS.COM is a registered organization</p>
            <p style="margin-top: 10px; font-size: 0.9rem; opacity: 0.8;">
                This is a demo application showcasing a job portal interface
            </p>
        </div>
    </div>

    <script>
        function showLogin(type) {
            if (type === 'applicant') {
                alert('👤 Applicant Login\n\nThis would connect to the JSP backend for user authentication.\n\nDemo: Username: demo, Password: demo123');
            } else {
                alert('🏢 Employer Login\n\nThis would connect to the JSP backend for employer authentication.\n\nDemo: Username: employer, Password: emp123');
            }
        }
        
        function showCategory(category) {
            alert(`📋 ${category} Jobs\n\nThis would show available jobs in the ${category} category.\n\nFeatures:\n• Job listings\n• Apply functionality\n• Company details\n• Interview scheduling`);
        }
        
        // Add some interactive effects
        document.addEventListener('DOMContentLoaded', function() {
            const categories = document.querySelectorAll('.category');
            categories.forEach((category, index) => {
                category.style.animationDelay = `${index * 0.1}s`;
                category.style.animation = 'fadeInUp 0.6s ease forwards';
            });
        });
        
        // Add CSS animation
        const style = document.createElement('style');
        style.textContent = `
            @keyframes fadeInUp {
                from {
                    opacity: 0;
                    transform: translateY(30px);
                }
                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }
        `;
        document.head.appendChild(style);
    </script>
</body>
</html> 