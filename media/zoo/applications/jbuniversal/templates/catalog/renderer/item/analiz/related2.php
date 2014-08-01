<div class="item_object">
    <div>
        <?php if ($this->renderPosition('code')): ?>
            <?php echo $this->renderPosition('code'); ?>
        <?php endif; ?>
    </div>

    <div>
        <?php if ($this->renderPosition('title')): ?>
            <?php echo $this->renderPosition('title'); ?>
        <?php endif; ?>  
    </div>

    <div>
        <?php if ($this->renderPosition('proizvoditel')): ?>
            <?php echo $this->renderPosition('proizvoditel'); ?>
        <?php endif; ?>      
    </div>

    <div>
        <?php if ($this->renderPosition('srok')): ?>
            <?php echo $this->renderPosition('srok'); ?>
        <?php endif; ?>       
    </div>

    <div>
        <?php if ($this->renderPosition('price')): ?>
            <?php echo $this->renderPosition('price'); ?>
        <?php endif; ?>      
    </div>

    <?php if ($this->renderPosition('skidka')): ?>
        <div skidka="<?php echo $this->renderPosition('skidka'); ?>">
    <?php endif; ?>  
    <?php if (!$this->renderPosition('skidka')): ?>
        <div>
    <?php endif; ?>
        <input type="checkbox" id="calculator" title="<?php echo $this->renderPosition('price'); ?>|<?php echo $this->renderPosition('code'); ?>">
    </div>
</div>