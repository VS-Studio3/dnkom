<?php if (!$this->renderPosition('is_needed_call')): ?>
    <div class="otdel">

        <h2><?php echo $this->renderPosition('address'); ?></h2>

        <div class="grafik_priema">
            <div class="specials">
                <span class="grafic">График приема биоматериала</span>
                <span class="monday">пн-пт</span>
                <span class="sunday">сб-вс</span>
            </div>

            <span class="grafic"><?php echo $this->renderPosition('srok_vipolneniya'); ?></span>
            <span class="monday"><?php echo $this->renderPosition('grafik_pn_pt'); ?></span>
            <span class="sunday"><?php echo $this->renderPosition('grafik_sb-vs'); ?></span>
        </div>

    </div>
<?php else: ?>
<fieldset>
    <legend><?php echo $this->renderPosition('address'); ?></legend>
    <div class="grafik_priema">
            <div class="specials">
                <span class="grafic">График приема биоматериала</span>
                <span class="monday">пн-пт</span>
                <span class="sunday">сб-вс</span>
            </div>

            <span class="grafic"><?php echo $this->renderPosition('srok_vipolneniya'); ?></span>
            <span class="monday"><?php echo $this->renderPosition('grafik_pn_pt'); ?></span>
            <span class="sunday"><?php echo $this->renderPosition('grafik_sb-vs'); ?></span>
    </div>
    
    <div class="telephones">
        + 7 495 <span class="red">689 77 04</span> <span class="separator">/</span> + 7 495 <span class="red">689 69 31</span>
    </div>
</fieldset>
<?php endif; ?>
