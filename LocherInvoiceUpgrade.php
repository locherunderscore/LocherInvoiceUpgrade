<?php

namespace LocherInvoiceUpgrade;

use Shopware\Components\Plugin;

class LocherInvoiceUpgrade extends Plugin {

    public static function getSubscribedEvents() {
        return ['Theme_Inheritance_Template_Directories_Collected' => 'addPluginTemplateDirectory'];
    }

    public function addPluginTemplateDirectory(\Enlight_Event_EventArgs $args) {
        $dirs = $args->getReturn();
        $dirs[] = __DIR__ . '/Resources/views';
        $args->setReturn($dirs);
    }
}
