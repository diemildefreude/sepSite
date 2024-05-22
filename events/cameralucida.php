<?php
    $path = "../events";
    $table = "events";
    include "../archive.php";
?>
<!-- body starts in archive.php -->

                <div class="statement">
                    <h2 class="centered sub-heading">collaboration with 朱里 
                        (
                        <a href="https://www.instagram.com/vermilion_home/">
                            instagram</a>
                         )                        
                    </h2>
                    <img src="<?php $fn = basename($_SERVER["PHP_SELF"]); echo 'images/' . substr($fn, 0, strrpos($fn, '.')) . '/extra/00.jpg'?>">
                    <h3 class="sub-heading">朱里's statement：</h3>
                    <p>
                        Rhythm 0 by Marina Abramović was an inspiration and motif for my performance. I wore a wedding dress, had the audience write actions on jenga blocks and then had the person who pulled a block perform that action on my body. Because the person pulling the block was not necessarily the person who wrote the action on it, this added a sense of anonymity and complicated the relationship and positionality between performer and audience participants.
                    </p>
                    <h3 class="sub-heading">stephan's statement:</h3>
                    <p>
                        Before the 5pm start time, I introduced myself to and conversed casually with audience members. At least some of these assumed, mistakenly, that the camera strapped to my head was not yet active. These interactions were part of the performance, a fact that would become clear soon after.
                    </p>
                    <p>
                    The video and audio recorded by the head camera is played back with a delay. This delay is determined by the string played on the MIDI violin:
                    </p>
                    <ul>
                        <li>E-string: 0 delay</li>
                        <li>A-string: 5 seconds</li>
                        <li>D-string: 5 minutes</li>
                        <li>G-string: 30 minutes</li>
                        <li>C-string: 60 minutes</li>
                    </ul>
                    <p>
                        The respective image and sound would only play when that string was being bowed or plucked, with the brightness of the image determined by the pressure applied to the string. The fingered pitch also determined the degree of blur applied to the image and the low-pass filter applied to the sound.
                    </p>
                    <p>
                        Something unexpected was Miaki’s decision (HamTama founder, person with the baseball cap) to pluck the violin strings herself while I was playing. Riffing on this, I allowed the other audience participants to do so as well. This would have been less feasible with a larger audience, but worked perfectly well with our intimate group.
                    </p>
                    <p>
                        I also didn’t plan on playing Jenga, but, due to the small number of participants, ended up plucking the instrument with one hand while pulling with the other, or using my bow to push blocks out. 
                    </p>
                    <div class= "iframe-container-container">
                        <div class="iframe-container">
                            <iframe frameborder="0"
                                loading="lazy"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                allowfullscreen=""
                                src="https://www.youtube.com/embed/hTs97Tzwbkk?si=7W3RIdd11LqbGLG3"
                            >
                            </iframe>
                        </div>
                    </div>                    
                    <p class="centered">
                        <em>video archive by bannai hidenari of ham tamago sandwich</em>
                    </p>
                    <p class="centered">
                        <em>photos by ma raven of ham tamago sandwich</em>
                    </p>
                    <p class="centered">
                        <em>low res photos taken with disposable cameras and mobile phones by event guests</em>
                    </p>
                </div>   
                <?php include $rootDir . "footer.html";?>
            </main>
        </div>
    </body>
</html>