<!-- <script src="https://cdn.jsdelivr.net/npm/eruda"></script>
<script>eruda.init();</script> -->

<div class="carousel-container dual-carousel" tabindex="0" role="region" aria-label="photo carousel. press Enter to zoom in.">
    <div class="slider-container gallery-slider">
        <div class="inner-slider">
            <span role="status" id="zoom-out-text" aria-label="press escape to zoom out."></span>
        <?php for($i = 0; $i < $a[$index]->imgCount; ++$i): 
                $imgPath = $a[$index]->imgDir . 'lores/' . sprintf('%02d', $i) . '.jpg';
                ?>
            <button type="button" title="" 
                class="slide"
                data-btn-expanded="false"           
                aria-labelledby="<?php echo 'label-' . $i . ' alt-' . $i?>"  
            >
                <span role="status" id="<?php echo 'label-' . $i?>" aria-label="<?php echo ($i+1) . ' of ' . $archives[$index]->imgCount . '. '?>"></span>
                <img id="<?php echo 'alt-' . $i?>" src="<?php echo $imgPath?>" alt="<?php echo $archiveAlts[$i] ?>">
            </button>
        <?php endfor;?>     
        </div>
        <div class ="bullet-nav-container">
            <div class="bullet-nav">
                <div class="nav-link active">
                    <div class = "bullet-graphic"></div>
                </div>
            <?php for($i = 1; $i < $a[$index]->imgCount; ++$i):?>
                <div class="nav-link">
                    <div class= "bullet-graphic"></div>
                </div>
            <?php endfor; ?>
            </div>
        </div>
    </div>
    <div class="slider-container nav-slider">
        <div class="inner-slider">        
        <?php for($i = 0; $i < $a[$index]->imgCount; ++$i): ?>
            <div class="slide">
                <picture>                    
                <?php $p = $a[$index]->imgDir . 'thumb/' . sprintf('%02d', $i) . '.jpg'; ?>
                    <source media="(min-width:650px)" srcset=<?php echo $p?>>
                    <img src=<?php echo $p?> alt="<?php echo 'photo ' . ($i+1) . ' of ' . $archives[$index]->imgCount ?>">
                </picture>
            </div>
        <?php endfor; ?>
        </div>
    </div>
</div>
<div class="zoom-container-container">
    <div class="zoom-container">
        <img tabindex="-1"class="zoom-image" src="<?php echo $a[$index]->imgDir . 'hires/00.jpg'?>" alt="press escape to zoom out">
    </div>
</div>
<script src="<?php echo $rootDir . 'slider.js'?>"></script>
<script src="<?php echo $rootDir . 'dualCarousel.js'?>"></script>