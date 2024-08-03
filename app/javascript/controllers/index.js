// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName
import { application } from "./application";

import RbuiComboboxController from "app/views/components/rbui/combobox/combobox_controller";
import RbuiComboboxContentController from "app/views/components/rbui/combobox/combobox_content_controller";
import RbuiComboboxItemController from "app/views/components/rbui/combobox/combobox_item_controller";
import RbuiTooltipController from "app/views/components/rbui/tooltip/tooltip_controller";


application.register("rbui--combobox", RbuiComboboxController);
application.register("rbui--combobox-content", RbuiComboboxContentController);
application.register("rbui--combobox-item", RbuiComboboxItemController);
application.register("rbui--tooltip", RbuiTooltipController);
