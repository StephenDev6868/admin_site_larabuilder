var total_quantity = 0;
var total_discount = 0;
var total_tax = 0;
var product_total = 0;
var current_row;
	
(function($) {
    "use strict";

	$(document).on('change', '#product', function() {
		var product_id = $(this).val();
		
		if( product_id == '' ){
			return;
		}

		//if product has already in order table
		if ($("#order-table > tbody > #product-" + product_id).length > 0) {
			var tr = $("#order-table > tbody > #product-" + product_id);

			//Get current value
			var quantity = parseFloat($(tr).find(".quantity").html());
			var c_unit_cost = parseFloat($(tr).find(".unit-cost").html());
			var c_discount = parseFloat($(tr).find(".discount").html());
			var c_tax = parseFloat($(tr).find(".tax").html());
			var c_subtotal = parseFloat($(tr).find(".sub-total").html());

			var tax_amount = ((c_tax / quantity) * (quantity + 1)).toFixed(2);
			var sub_total = ((c_subtotal / quantity) * (quantity + 1)).toFixed(2);

			//Set new value
			$(tr).find(".quantity").html(quantity + 1);
			$(tr).find(".tax").html(tax_amount);
			$(tr).find(".sub-total").html(sub_total);

			//Set value to hidden fields
			$(tr).find(".input-quantity").val(quantity + 1);
			$(tr).find(".input-tax").val(tax_amount);
			$(tr).find(".input-sub-total").val(sub_total);


			update_summary();
			$("#product").val("");
			return;
		}


		//Ajax request for getting product details
		$.ajax({
			method: "GET",
			url: _url + '/products/get_product/' + product_id,
			beforeSend: function() {
				$("#preloader").fadeIn(100);
			},
			success: function(data) {
				$("#preloader").fadeOut(100);
				var json = JSON.parse(data);
				var item = json['item'];
				var product = json['product'];
				var tax = json['tax'];

				//Product Cost
				var product_price = parseFloat(product['product_cost']);
				var tax_method = product['tax_method'];

				//Tax Value calculation
				var unit_cost = 0.00;
				var tax_amount = 0.00;
				var sub_total = 0.00;

				//if product has tax
				if (product['tax_id'] != "" && product['tax_id'] != null) {

					var tax_rate = parseFloat(tax['rate']);

					if (tax_method == "inclusive") {

						if (tax['type'] == 'percent') {
							tax_amount = product_price * tax_rate / (100 + tax_rate);
							unit_cost = product_price * 100 / (100 + tax_rate);
							sub_total = product_price;
						} else if (tax['type'] == 'fixed') {
							tax_amount = tax_rate;
							unit_cost = product_price - tax_rate;
							sub_total = product_price;
						}
					} else if (tax_method == "exclusive") {
						if (tax['type'] == 'percent') {
							tax_amount = (product_price / 100) * tax_rate;
							unit_cost = product_price;
							sub_total = product_price + tax_amount;
						} else if (tax['type'] == 'fixed') {
							tax_amount = tax_rate;
							unit_cost = product_price;
							sub_total = product_price + tax_amount;
						}
					}

				} else {
					tax_amount = 0;
					unit_cost = product_price;
					sub_total = product_price;
				}

				var product_row = `<tr id="product-${item['id']}">
											<td><b>${item['item_name']}</b><br><span class="description">${product['description'] != null ? product['description'] : ''}</span></td>
											<td class="text-center quantity">1</td>
											<td class="text-right unit-cost">${unit_cost.toFixed(2)}</td>
											<td class="text-right discount">0.00</td>
											<td class="text-right tax-method">${tax_method.toUpperCase()}</td>
											<td class="text-right tax">${tax_amount.toFixed(2)}</td>
											<td class="text-right sub-total">${sub_total.toFixed(2)}</td>
											<td class="text-center">
												<button type="button" class="btn btn-success btn-xs edit-product"><i class="fas fa-edit"></i></button>
												<button type="button" class="btn btn-danger btn-xs remove-product"><i class='fa fa-trash'></i></button>
											</td>
											<input type="hidden" name="product_id[]" value="${item['id']}">
											<input type="hidden" name="product_description[]" class="input-description" value="${product['description'] != null ? product['description'] : ''}">
											<input type="hidden" name="quantity[]" class="input-quantity" value="1">
											<input type="hidden" name="unit_cost[]" class="input-unit-cost" value="${unit_cost.toFixed(2)}">
											<input type="hidden" name="discount[]" class="input-discount" value="0.00">
											<input type="hidden" name="tax_method[]" class="input-tax-method" value="${tax_method}">
											<input type="hidden" name="tax_amount[]" class="input-tax" value="${tax_amount.toFixed(2)}">
											<input type="hidden" name="tax_id[]" class="input-tax-id" value="${product['tax_id']}">
											<input type="hidden" name="unit_tax[]" class="input-unit-tax" value="${tax_amount.toFixed(2)}">
											<input type="hidden" name="sub_total[]" class="input-sub-total" value="${sub_total.toFixed(2)}">
									</tr>`;
				$("#order-table > tbody").append(product_row);
				update_summary();

				$("#product").val("");


			}
		});


	});


	//click remove product
	$(document).on('click', '.remove-product', function() {
		$(this).parent().parent().remove();
		update_summary();
	});


	$(document).on('click', '#update-product', function() {
		$("#main_modal").modal("hide");

		var quantity = parseFloat($("#modal-quantity").val());
		var c_unit_cost = parseFloat($("#modal-unit_cost").val());
		var c_discount = parseFloat($("#modal-discount").val());
		var c_tax_id = $("#modal-tax_id").val();
		var c_tax_rate = parseFloat($("#modal-tax_id").find(':selected').data('tax-rate'));
		var c_tax_type = $("#modal-tax_id").find(':selected').data('tax-type');
		var c_tax_method = $("#modal-tax_method").val();
		var c_tax_amount = 0;
		var c_description = $("#modal-description").val();

		//var unit_tax = $(current_row).find(".input-unit-tax").val();
		//var c_unit_cost = $(current_row).find(".input-unit-cost").val();
		
		//TAX Calculation
		if (c_tax_id != '') {

			if (c_tax_method == "inclusive") {

				if (c_tax_type == 'percent') {	
					//c_tax_amount = (c_unit_cost / 100) * c_tax_rate;
					c_tax_amount = c_unit_cost * c_tax_rate / (100 + c_tax_rate);
					c_unit_cost = c_unit_cost * 100 / (100 + c_tax_rate);
				} else if (c_tax_type == 'fixed') {
					c_tax_amount = c_tax_rate;
					c_unit_cost = c_unit_cost - c_tax_rate;
				}

			} else if (c_tax_method == "exclusive") {
				if (c_tax_type == 'percent') {
					c_tax_amount = (c_unit_cost / 100) * c_tax_rate;
					c_unit_cost = c_unit_cost;
				} else if (c_tax_type == 'fixed') {
					c_tax_amount = c_tax_rate;
					c_unit_cost = c_unit_cost;
				}
			}

		}


		//Set new value
		$(current_row).find(".quantity").html(quantity);
		$(current_row).find(".unit-cost").html(c_unit_cost.toFixed(2));
		//$(current_row).find(".tax").html((unit_tax * quantity).toFixed(2));
		$(current_row).find(".discount").html(c_discount.toFixed(2));
		$(current_row).find(".tax-method").html(c_tax_method.toUpperCase());
		$(current_row).children("td:first").find(".description").html(c_description);
		

		//var sub_total = (c_unit_cost * quantity) + (unit_tax * quantity) - c_discount;
		var tax_amount = (quantity * c_tax_amount);
		var sub_total = ((c_unit_cost * quantity) + tax_amount) - c_discount;

		$(current_row).find(".tax").html(tax_amount.toFixed(2));
		$(current_row).find(".sub-total").html(sub_total.toFixed(2));

		//set value to hidden field
		$(current_row).find(".input-description").val(c_description);
		$(current_row).find(".input-quantity").val(quantity);
		$(current_row).find(".input-unit-cost").val(c_unit_cost);
		//$(current_row).find(".input-tax").val((unit_tax * quantity).toFixed(2));
		$(current_row).find(".input-tax").val(c_tax_amount.toFixed(2));
		$(current_row).find(".input-tax-method").val(c_tax_method);
		$(current_row).find(".input-tax-id").val(c_tax_id);
		$(current_row).find(".input-discount").val(c_discount.toFixed(2));
		$(current_row).find(".input-sub-total").val(sub_total.toFixed(2));

		update_summary();

	});



})(jQuery);	

function update_summary() {
    total_quantity = 0;
    total_discount = 0;
    total_tax = 0;
    product_total = 0;

    $("#order-table > tbody > tr").each(function(index, obj) {
        total_quantity = total_quantity + parseFloat($(this).find(".quantity").html());
        total_discount = total_discount + parseFloat($(this).find(".discount").html());
        total_tax = total_tax + parseFloat($(this).find(".tax").html());
        product_total = product_total + parseFloat($(this).find(".sub-total").html());
    });

    $("#total-qty").html(total_quantity);
    $("#total-discount").html(total_discount.toFixed(2));
    $("#total-tax").html(total_tax.toFixed(2));
    $("#total").html(product_total.toFixed(2));
    $("#product_total").val(product_total.toFixed(2));

}	