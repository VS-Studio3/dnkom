<div class="item_object" itemid="<?php echo $item->id; ?>">
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

    <div class="img">
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
</div>