package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by DengrongGuan on 2016/8/13.
 */
@Controller
@RequestMapping("/v1/productionOrder")
public class ProductionOrderController {
    @RequestMapping("productionorder")
    public String productionOrderManage() {
        return "production/production_order";
    }

    @RequestMapping("prodcutionordermodify")
    public String productionOrderModify()
    {
        return "production/production_order_modify";
    }
}
