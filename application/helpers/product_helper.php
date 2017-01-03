<?php
/**
 * @author teevisionprinting - www.teevisionprinting.com
 * @date: 2015-01-10
 * 
 * @copyright  Copyright (C) 2015 teevisionprinting.com. All rights reserved.
 * @license    GNU General Public License version 2 or later; see LICENSE
 *
 */
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class helperProduct
{
	function sortDesign($design, $orderby = 'ordering')
	{
		$rows 	= array();		
		foreach( $design as $key => $value )
		{
			if(is_array($value))
			{
				for( $i=0; $i<count($value); $i++ )
				{
					$rows[$i][$key]	= $value[$i];
				}
			}
		}
			

		$sortArray = array(); 
		foreach($rows as $row){
			foreach($row as $key=>$value){
				if(!isset($sortArray[$key])){ 
					$sortArray[$key] = array(); 
				}
				$sortArray[$key][] = $value; 
			} 
		}
		if( count($sortArray) )
			array_multisort($sortArray[$orderby], SORT_ASC, $rows);
		
		return $rows;
	}
	
	function json($design)
	{
		$rows = new stdClass();
		foreach($design as $key => $value)
		{
			$rows->$key = json_decode($value);
		}
		
		return $rows;
	}
	
	function getImgage($str)
	{
		$data = str_replace("'", '"', $str);
		$data = json_decode($data);
		
		if( count($data) > 0 )
		{
			foreach($data as $vector)
			{
				if( isset($vector->img) && $vector->img != '' )
				{
					$img = $vector->img;
					return base_url($img);
				}
			}
		}
		
		return '';
	}
	
	public function getDesign($data)
	{
		$design = new stdClass();
		
		if (strlen($data->front) > 10)
		{
			$design->front		= json_decode($data->front);
		}
		else
		{
			$design->front		= false;
		}
		
		if (strlen($data->back) > 10)
		{
			$design->back		= json_decode($data->back);
		}
		else
		{
			$design->back		= false;
		}
		
		if (strlen($data->left) > 10)
		{
			$design->left		= json_decode($data->left);
		}
		else
		{
			$design->left		= false;
		}
		
		if (strlen($data->right) > 10)
		{
			$design->right		= json_decode($data->right);
		}
		else
		{
			$design->right		= false;
		}		
		$design->area		= json_decode($data->area);
		$design->params		= json_decode($data->params);
		$design->color_hex	= json_decode($data->color_hex);
		$design->color_title= json_decode($data->color_title);
		
		return $design;
	}
	
	public function displayAttributes($attribute)
	{
		if (isset($attribute->name) && $attribute->name != '')
		{
			$attrs = new stdClass();
		
			$attrs->name 		= json_decode($attribute->name);
			$attrs->titles 		= json_decode($attribute->titles);
			$attrs->prices 		= json_decode($attribute->prices);
			$attrs->type 		= json_decode($attribute->type);
			
			$html 				= '';
			for ($i=0; $i<count($attrs->name); $i++)
			{
				$html 	.= '<div class="form-group product-fields '.$attrs->type[$i].'">';
				$html 	.= 		'<label for="fields">'.$attrs->name[$i].'</label>';
				
				$id 	 = 'attribute['.$attribute->id.']['.$i.']';
				$html 	.= 		$this->field($attrs->name[$i], $attrs->titles[$i], $attrs->prices[$i], $attrs->type[$i], $id);
				
				$html 	.= '</div>';
			}
			return $html;
		}
		else
		{
			return '';
		}
	}
	
	function field($name, $title, $price, $type, $id)
	{
		$html = '<div class="dg-poduct-fields ">';
		switch($type)
		{
			case 'checkbox':
				for ($i=0; $i<count($title); $i++)
				{
					$html .= '<label class="checkbox-inline">';
					$html .= 	'<input type="checkbox" name="'.$id.'['.$i.']" value="'.$i.'"> '.$title[$i];
					$html .= '</label>';
				}
			break;
			
			case 'selectbox':
				$html .= '<select class="form-control input-sm" name="'.$id.'">';
				
				for ($i=0; $i<count($title); $i++)
				{
					$html .= '<option value="'.$i.'">'.$title[$i].'</option>';
				}
				
				$html .= '</select>';
			break;
			
			case 'radio':
				for ($i=0; $i<count($title); $i++)
				{
					$html .= '<label class="radio-inline">';
					$html .= 	'<input type="radio" name="'.$id.'" value="'.$i.'"> '.$title[$i];
					$html .= '</label>';
				}
			break;
			
			case 'textlist':
				$html 		.= '<style>.product-quantity{display:none;}</style><ul class="p-color-sizes list-number col-md-12">';
				for ($i=0; $i<count($title); $i++)
				{
                                        if ($i == 0) $value = 'value="12"'; else $value = '';
					$html .= '<li>';
					$html .= 	'<label>'.$title[$i].'</label>';
					$html .= 	'<input type="text" class="form-control input-sm size-number" name="'.$id.'['.$i.']" '.$value.'>';					
					$html .= '</li>';
                                         
				}
                                $html .= '<input type="hidden" id="attr-key" value="'.$id.'">';
				$html 		.= '</ul>';
			break;
		}
		$html	.= '</div>';
		
		return $html;
	}
        
        public function displayAttributesDesign($attribute)
	{
		if (isset($attribute->name) && $attribute->name != '')
		{
			$attrs = new stdClass();
		
			$attrs->name 		= json_decode($attribute->name);
			$attrs->titles 		= json_decode($attribute->titles);
			$attrs->prices 		= json_decode($attribute->prices);
			$attrs->type 		= json_decode($attribute->type);
			
			$html 				= '';
			for ($i=0; $i<count($attrs->name); $i++)
			{
                                $html = '<div class="modal fade" id="dg-select-quality" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                    <div class="modal-content">
                                                            <div class="modal-header">
                                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>						
                                                                    <p class="info-product">Custom Product: <span></span></p>
                                                                    <p class="info-print">Screen printing: <span></span></p>
                                                                    <p class="info-color">Color: <span></span><i></i></p>
                                                                    <h4 class="modal-title" id="myModalLabel">Enter Sizes to calculate your price</h4>
                                                            </div>
                                                            <div class="modal-body" id="design-quality" style="padding-bottom: 0px;">';
				$html 	.= '<div class="row form-group product-fields '.$attrs->type[$i].'"><div class="col-md-8">';

				$id 	 = 'attribute['.$attribute->id.']['.$i.']';
				$html 	.= 		$this->fieldDesign($attrs->name[$i], $attrs->titles[$i], $attrs->prices[$i], $attrs->type[$i], $id);
				
				$html 	.= '</div>';
                                $html .= '<div class="total-qty detail col-md-4"><p class="info-1">Total Qty: </p><p class="info-2"><span></span>pcs (<button type="button" class="btn btn-link btn-change-price" onclick="design.ajax.getPrice();">Change</button>)</p></div></div>';
                                $html .= '<div id="dg-messq" style="display:none; color:red"></div>'
                                        . '<div class="ship-fo calculate">Free delivery by <span class="sdif">'.date("D, M j", strtotime("+2 week")).'</span> Or Rush by <span class="sdif">'.date("D, M j", strtotime("+1 week")).'</span><span class="note-apply">*apply at checkout</span></div>';
                                $html .=     '</div>
                                                <div class="modal-footer calculate" style=" text-align: center; margin-top: 1px;">
                                                <button type="button" class="btn btn-warning btn-calculate" style="width:50%" onclick="design.calculate()">CALCULATE</button>
                                                <p class="tip-box">Tip:(Save more by increasing qty or reduce number of colors on design)</p>
                                                </div>
                                                <div class="modal-footer detail" style=" text-align: center; margin-top: 1px;">
                                                <div class="info-inclusive-price">
                                                    <p class="info-1">All-inclusive Prices:</p>
                                                    <p class="info-2">
                                                        <span class="free">Free Shipping</span>
                                                        <span>deliveried by:</span> 
                                                        <span class="sdif">'.date("D, M j", strtotime("+2 week")).'</span>
                                                    </p>
                                                    </div>
                                                    <hr>
                                                    <div class="row">
                                                    <div class="col-md-6 align-left">
                                                    <div class="tip">
                                                    <p><span>Tip:</span> Save more by increasing</p>
                                                    <p>Order 24 pcs and pay $x.xx</p>
                                                    </div>
                                                    <div class="ship-note">
                                                        <p class="ship-quest">Need rush shipping?</p>
                                                        <p>Upgrade shipping at check out</p>
                                                        <p>to receieve it by:<span class="sdif">'.date("D, M j", strtotime("+1 week")).'</span></p>
                                                    </div>
                                                    </div>
                                                    <div id="dg-total-mess" class="align-right col-md-6">
                                                    </div>
                                                    </div>
                                                    <hr>
                                                        <button type="button" data-dismiss="modal" onclick="design.designsaveBox()" class="btn btn-primary btn-save" style="width:47%" title="save">SAVE</button>
                                                        <button type="button" class="btn btn-warning btn-addcart" data-dismiss="modal" id="change-product-quanlity"  style="width:47%" onclick="design.designsaveBox4buy()"><i class="glyphicons shopping_cart"></i> BUY NOW</button>
                                                        <div class="note">* Save your design to edit, send, and share</div>
                                                </div>
                                            </div>
                                          </div>
                                        </div>';
			}
			return $html;
		}
		else
		{
			return '';
		}
	}
	
	function fieldDesign($name, $title, $price, $type, $id)
	{
		$html = '<div class="dg-poduct-fields ">';
		switch($type)
		{
			case 'checkbox':
				for ($i=0; $i<count($title); $i++)
				{
					$html .= '<label class="checkbox-inline">';
					$html .= 	'<input type="checkbox" name="'.$id.'['.$i.']" value="'.$i.'"> '.$title[$i];
					$html .= '</label>';
				}
			break;
			
			case 'selectbox':
				$html .= '<select class="form-control input-sm" name="'.$id.'">';
				
				for ($i=0; $i<count($title); $i++)
				{
					$html .= '<option value="'.$i.'">'.$title[$i].'</option>';
				}
				
				$html .= '</select>';
			break;
			
			case 'radio':
				for ($i=0; $i<count($title); $i++)
				{
					$html .= '<label class="radio-inline">';
					$html .= 	'<input type="radio" name="'.$id.'" value="'.$i.'"> '.$title[$i];
					$html .= '</label>';
				}
			break;
			
			case 'textlist':
				$html 		.= '<style>.product-quantity{display:none;}</style><ul class="p-color-sizes list-number col-md-12">';
				for ($i=0; $i<count($title); $i++)
				{
                                        if ($i == 0) $value = 'value="12"'; else $value = '0';
					$html .= '<li>';
					$html .= 	'<label>'.$title[$i].'</label>';
					$html .= 	'<input type="text" class="form-control input-sm size-number" name="'.$id.'['.$i.']" '.$value.'>';					
					$html .= '</li>';
                                         
				}
                                $html .= '<input type="hidden" id="attr-key" value="'.$id.'">';
				$html 		.= '</ul>';
			break;
		}
		$html	.= '</div>';
		
		return $html;
	}
        
        
	public function displayAttributesQuote($attribute, $size, $option = FALSE)
	{
		if (isset($attribute->name) && $attribute->name != '')
		{
			$attrs = new stdClass();
		
			$attrs->name 		= json_decode($attribute->name);
			$attrs->titles 		= json_decode($attribute->titles);
			$attrs->prices 		= json_decode($attribute->prices);
			$attrs->type 		= json_decode($attribute->type);
			
			$html 				= '';
			for ($i=0; $i<count($attrs->name); $i++)
			{
				$html 	.= '<div class="form-group product-fields '.$attrs->type[$i].'">';
				
				
				$id 	 = 'attribute['.$attribute->id.']['.$i.']';
                            if ($option == FALSE)
                            {
                                $html 	.= 		'<label for="fields">Size & Quantity: '.array_sum($size).' pieces </label>';
				$html 	.= 		$this->fieldQuote($attrs->name[$i], $attrs->titles[$i], $attrs->prices[$i], $attrs->type[$i], $id, $size);
                            }else {
                                $html 	.= 		'<label for="fields"><strong>Size & Quantity: </strong>'.array_sum($size).' pieces </label>';
                                $html 	.= 		$this->fieldQuoteOption($attrs->name[$i], $attrs->titles[$i], $attrs->prices[$i], $attrs->type[$i], $id, $size);
                            }
				$html 	.= '</div>';
			}
			return $html;
		}
		else
		{
			return '';
		}
	}
	
	function fieldQuote($name, $title, $price, $type, $id, $size)
	{
		$html = '<div class="dg-poduct-fields ">';
		switch($type)
		{
			case 'checkbox':
				for ($i=0; $i<count($title); $i++)
				{
					$html .= '<label class="checkbox-inline">';
					$html .= 	'<input type="checkbox" name="'.$id.'['.$i.']" value="'.$i.'"> '.$title[$i];
					$html .= '</label>';
				}
			break;
			
			case 'selectbox':
				$html .= '<select class="form-control input-sm" name="'.$id.'">';
				
				for ($i=0; $i<count($title); $i++)
				{
					$html .= '<option value="'.$i.'">'.$title[$i].'</option>';
				}
				
				$html .= '</select>';
			break;
			
			case 'radio':
				for ($i=0; $i<count($title); $i++)
				{
					$html .= '<label class="radio-inline">';
					$html .= 	'<input type="radio" name="'.$id.'" value="'.$i.'"> '.$title[$i];
					$html .= '</label>';
				}
			break;
			
			case 'textlist':
				$html 		.= '<style>.product-quantity{display:none;}</style><ul class="p-color-sizes list-number col-md-12">';
				for ($i=0; $i<count($title); $i++)
				{
					$html .= '<li>';
					$html .= 	'<label>'.$title[$i].'</label>';
					$html .= 	'<input type="text" class="form-control input-sm" name="'.$id.'['.$i.']" value="'.$size[$i].'" readonly>';					
					$html .= '</li>';
                                         
				}
                                $html .= '<input type="hidden" id="attr-key" value="'.$id.'">';
				$html 		.= '</ul>';
			break;
		}
		$html	.= '</div>';
		
		return $html;
	}
        
        function fieldQuoteOption($name, $title, $price, $type, $id, $size)
	{
		$html = '<div class="dg-poduct-fields ">';
		switch($type)
		{						
			case 'textlist':
				$html 		.= '<style>.product-quantity{display:none;}</style><ul class="p-color-sizes list-number col-md-12">';
				for ($i=0; $i<count($title); $i++)
				{
					$html .= '<li>';
					$html .= 	'<label>'.$title[$i].'</label>: '.$size[$i];					
					$html .= '</li>';
                                         
				}
                                $html .= '<input type="hidden" id="attr-key" value="'.$id.'">';
				$html 		.= '</ul>';
			break;
		}
		$html	.= '</div>';
		
		return $html;
	}
	
	public function quantity($min = 1, $name = 'Quantity', $name2 = 'minimum quantity: '){
		
		$html = '<div class="form-group product-fields product-quantity">';
		$html .= 	'<label class="col-sm-4">'.$name.'</label>';
		$html .= 	'<div class="col-sm-6">';
		$html .= 		'<input type="text" class="form-control input-sm" value="12" name="quantity" id="quantity">';
		$html .= 	'</div>';
		$html .= 	'<span class="help-block"><small>'.$name2.$min.'</small></span>';
		$html .= '</div>';
		
		return $html;
	}
}
?>