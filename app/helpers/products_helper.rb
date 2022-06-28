module ProductsHelper
    def category_icon(product)
        icon_str = case product.category
        when /clothes/
            '<p class="text-center"> <i class="fas fa-solid fa-socks fs-4"></i></br> Clothes </p>'
        when /eletronics/
            '<p class="text-center"><i class="fas fa-solid fa-desktop fs-4"></i> <br/> Eletronics </p>'
        when /furniture/
            '<p class="text-center"><i class="fas fa-solid fa-couch fs-4"></i> <br/> Furniture </p>'
        else
            '<p class="text-center"> <i class="fas fa-solid fa-book fs-4"></i><br/> Books/Others</p>'
        end
        icon_str.html_safe
    end
    def available_icon(product)
        icon_str = case product.available
        when true
            '<p class="text-center"> <i class="fas fa-solid fa-toggle-on fs-4 text-success"></i></br> Available </p>'
        else
            '<p class="text-center"> <i class="fas fa-solid fa-toggle-off fs-4 text-danger"></i><br/> Not Available</p>'
        end
        icon_str.html_safe
    end
end
