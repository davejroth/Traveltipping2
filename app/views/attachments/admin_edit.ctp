<div class="attachments form">
    <h2 class="page_title"><?php echo $title_for_layout; ?></h2>

    <?php echo $this->Form->create('Image', array('url' => array('controller' => 'attachments', 'action' => 'edit')));?>
    <fieldset>
        <div class="actions">
            

            <div id="node-basic">
                <div class="thumbnail">
                    <?php
                        $fileType = explode('/', $this->data['Image']['mime_type']);
                        $fileType = $fileType['0'];
                        if ($fileType == 'image') {
                            echo $this->Image->resize('/uploads/'.$this->data['Image']['slug'], 200, 300);
                        } else {
                            echo $this->Html->image('/img/icons/' . $this->Filemanager->mimeTypeToImage($this->data['Image']['mime_type'])) . ' ' . $this->data['Image']['mime_type'];
                        }
                    ?>
                </div>

                <?php
                    echo $this->Form->input('id');
                    echo $this->Form->input('title');
                    echo $this->Form->input('excerpt', array('label' => __('Caption', true)));
                    //echo $this->Form->input('body', array('label' => __('Description', true)));
                ?>
            </div>

            <div id="node-info">
                <?php
                    echo $this->Form->input('file_url', array('label' => __('File URL', true), 'value' => Router::url($this->data['Image']['path'], true), 'readonly' => 'readonly'));
                    echo $this->Form->input('file_type', array('label' => __('Mime Type', true), 'value' => $this->data['Image']['mime_type'], 'readonly' => 'readonly'));
                ?>
            </div>
        </div>
    </fieldset>
    
    <div class="buttons">
    <?php
        echo $this->Form->end(__('Save', true));
        echo $this->Html->link(__('Cancel', true), array(
            'action' => 'index',
        ), array(
            'class' => 'cancel',
        ));
    ?>
    </div>
</div>