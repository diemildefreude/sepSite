<script>
  function redirectToChannel() {
    if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
      window.location.href = 'https://m.youtube.com/@ste_e_p';
    } else {
      window.location.href = 'https://www.youtube.com/@ste_e_p';
    }
  }
</script>
<div class="menu-container">
    <nav class="js-menu menu">
        <div class="menu-item"><a href="<?php echo $rootDir . './bio'?>">bio</a></div>
        <div class="menu-item"><a href="<?php echo $rootDir . './archiveList'?>">archives</a></div>
        <div class="menu-item"><a href="<?php echo $rootDir . './eventList'?>">events</a></div>
        <div class="menu-item"><a href="<?php echo $rootDir . './contact'?>">contact</a></div>
    </nav>
</div>

<script src="<?php echo $rootDir . 'menu.js'?>"></script>
