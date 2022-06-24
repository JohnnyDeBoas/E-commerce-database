module EcomOrdersHelper
    def sales_channel_icon(ecom_order)
        icon_str = case ecom_order.sales_channel
        when /amazon/
            '<i class="fab fa-amazon fa-3x text-primary"></i><br/> <p hidden>Amazon</p>'
        when /ebay/
            '<i class="fab fa-ebay fa-3x text-warning"></i> <br/> <p hidden>Ebay</p>'
        else
            '<i class="fas fa-store fa-3x text-danger"></i> <br/> <p hidden>Others</p>'
        end
        icon_str.html_safe
    end

    def order_status_icon(ecom_order)
        icon_str = case ecom_order.status
        when /confirmed/
            '<i class="fas fa-check-circle fa-2x text-success "></i>'
        when /shipped/
            '<i class="fas fa-truck-moving fa-2x text-primary"></i>'
        else
            '<i class="fas fa-gift fa-2x text-danger"></i>'
        end
        icon_str.html_safe
    end

    def paymethod_method_icon(ecom_order)
        icon_str =case ecom_order.paymethod_method
        when /TB/
            '<i class="fas fa-exchange-alt fa-2x"></i> <br/> Bank Transfer'
        when /CC/
            '<i class="far fa-credit-card fa-2x"></i> <br/> Credit Card'
        else
            '<i class="fas fa-barcode fa-2x"></i> <br/> Ticker/Cash'
        end
        icon_str.html_safe
    end
end
