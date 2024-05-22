<?php $slideCount = 3;?>
<div class="carousel-container link-carousel" tabindex="0" role="region" aria-label="photo carousel. press Enter to zoom in.">
    <div class="slider-container gallery-slider">
        <div class="inner-slider">
            <span role="status" id="zoom-out-text" aria-label="press enter or escape to zoom out."></span>
        <?php for($i = sizeof($a) - 1; $i >= sizeof($a) - $slideCount; --$i): 
                $imgPath = $a[$i]->imgDir . 'carouselHi.jpg';
                ?>
            <div  class="slide" tabindex="-1" role="group">                
                
                <img src="<?php echo $imgPath?>" alt="<?php echo $eventAlts[$i] ?>">
                
                <a
                    href="<?php echo $a[$i]->link?>" 
                    class="img-text-box link-carousel-text-box"
                    aria-label="<?php echo $eventAlts[$i] ?>">
                    <div class="link-container">
                        <div class="mag-icon">
                            <div class="mag-glass"></div>
                            <div class="mag-handle"></div>
                        </div>
                        <div class="link-text">more</div>
                    </div>
                </a>
            </div>
            
        <?php endfor;?>     
        </div>
        <div class ="bullet-nav-container">
            <div class="bullet-nav">
                <div class = "nav-link active">
                    <div class="bullet-graphic"></div>
                </div>
            <?php for($i = 1; $i < $slideCount; ++$i):?>
                <div class= "nav-link">
                    <div class="bullet-graphic"></div>
                </div>
            <?php endfor; ?>
            </div>
        </div>
    </div>
</div>
<script src="<?php echo $rootDir . 'slider.js'?>"></script>
<script src="<?php echo $rootDir . 'linkCarousel.js'?>"></script>