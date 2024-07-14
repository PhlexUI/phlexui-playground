// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName
import { application } from "./application";

import LuiComboboxController from "app/views/components/lui/combobox/combobox_controller";
import LuiComboboxContentController from "app/views/components/lui/combobox/combobox_content_controller";
import LuiComboboxItemController from "app/views/components/lui/combobox/combobox_item_controller";


application.register("lui--combobox", LuiComboboxController);
application.register("lui--combobox-content", LuiComboboxContentController);
application.register("lui--combobox-item", LuiComboboxItemController);
