<?php 
    error_reporting(E_ALL); ini_set('display_errors', 1);
    $rootDir = "";//used in dirLoad.php and menu.php
    
    $fn = basename($_SERVER["PHP_SELF"]);
    $urlEnd = substr($fn, 0, strrpos($fn, "."));
    $title = "stephan e perez | contact";
    $description = "performance and new media";
    $ogImg = "archives/images/lettertomom/hires/06.jpg";
    $ogType = "website";
    include "headCore.php";
?>
    <link href="form.css" rel="stylesheet">
    <script src="https://challenges.cloudflare.com/turnstile/v0/api.js" defer></script>
    
</head>
<body>
    <?php    
        include "header.php";
    ?>
    <div class="menu-main-container">
        <?php
            include "menuA.php";
        ?>
        <main>        
            <h2 class="centered heading"> contact </h2>

<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
require 'vendor/autoload.php';

if (isset($_POST['submit']))
{
    $cfSecret = "3x00000000000000000000FF"; //force challenge
    //$cfSecret = "2x00000000000000000000AB"; //fail
    $remoteAddr = $_SERVER['REMOTE_ADDR'];
    $cfUrl = 'https://challenges.cloudflare.com/turnstile/v0/siteverify';
    $token = $_POST["cf-turnstile-response"];
    $data = ["secret" => $cfSecret, "response" => $token, "remoteip" => $remoteAddr];

    $cUrl = curl_init();
    curl_setopt($cUrl, CURLOPT_URL, $cfUrl);
    curl_setopt($cUrl, CURLOPT_POST, true);
    curl_setopt($cUrl, CURLOPT_POSTFIELDS, $data);
    curl_setopt($cUrl, CURLOPT_RETURNTRANSFER, true);

    $response = curl_exec($cUrl);

if(curl_errno($cUrl))
{
    $errorMessage = curl_error($cUrl);
    //echo "<div class='submit-notice error'>cURL error: $errorMessage</div>";
    //echo "<div class='submit-notice error'>human check failed</div>";

    echo "<div class='submit-notice error'>human check failed. message not sent.</div>";
}
else
{
    $response = json_decode($response, true);
    if($response['error-codes'] && count($response['error-codes']) > 0)
    {
        //echo "<div class='submit-notice error'><p>Cloudflare Turnstile check failed. Error: codes:</p>";
        // echo '<ul>';
        // foreach($response['error-codes'] as $e)
        // {
        //     echo "<li>$e</li>";
        // }
        // echo "</ul></div>";
        // print_r($response);       
        echo "<div class='submit-notice error'>human check failed. message not sent.</div>";
    }
    else
    {
        //echo "<div class='submit-notice'><p>Passed Cloudflare Turnstile check. Output from Cloudflare:</p>";
        //print_r($response);        
        sendForm();
    }
}
curl_close($cUrl);
}

function sendForm()
{
    $myMail = 'placeholder@gmail.com';
    $myAppPass = 'placeholder';
    $myName = 'stephan e perez';
    $senderName = $_POST['name'];
    $senderMail = $_POST['email'];
    $subject = $_POST['subject'];
    $message = nl2br($_POST['message']);

    $txt = $senderName . " has sent you an e-mail via your website's contact form:<br><br>".$message;
    
    $mail = new PHPMailer(true);

    try
    {
        //$mail->SMTPDebug = SMTP::DEBUG_SERVER;
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
        $mail->Port = 587;

        $mail->Username = $myMail;
        $mail->Password = $myAppPass;

        $mail->setFrom($senderMail, $senderName);
        $mail->addAddress($myMail, $myName);
        $mail->addReplyTo($senderMail, $senderName);
        $mail->isHTML(true);
        $mail->Subject = $subject;
        $mail->Body = $txt;
        $mail->AltBody = $message;

        $mail->send();
        echo '<div class="submit-notice">your message has been sent</div>';
    }
    catch (Exception $e)
    {
        echo '<div class="submit-notice error">error: message not sent</div>';
    }        
}
?>            
            <form class="contact-form" action="<?php $_SERVER["PHP_SELF"]?>" method="post">
                <label for="name">name</label>
                <input type="text" name="name" placeholder="your name" required>

                <label for="email">e-mail</label>
                <input type="email" id="email" name="email" placeholder="your@e.mail" required>

                <label for="subject">subject</label>
                <input type="text" id="subject" name="subject" placeholder="your message subject" required>

                <label for="message">message</label>
                <textarea id="message" name="message" rows="6" placeholder="your message" required></textarea>
                <div class="cf-turnstile" data-sitekey="placeholder"></div>
                <button type="submit" name="submit">submit</button>
            </form>
            <?php
                include "footer.html";
            ?>
        </main>
    </div>

</body>
</html>