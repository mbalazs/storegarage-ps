{*
* 2007-2013 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2013 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}



<input type="hidden" name="submitted_tabs[]" value="Inventory" />
<input type="checkbox" name="is_inventory" id="is_inventory" />{l s='This product has multiple options (eg. multiple sizes and colors'}
<div id="inv_div">
<h4 >{l s='Attributes'}</h4>

<div class="separation"></div>
<table>
	<tr>
	<td valign="top">
	<select name="attributes" id="attribute_sel" style="width: 140px;">
	<option value="-1">{l s='Select an attribute'}</option>
	{foreach from=$attributes_groups item=attr}
	<option value="{$attr.id_attribute_group}">{$attr.name}</option>
	{/foreach}
	</select>
	</td>
	<td valign="top">
		<input style="width: 40px; margin-bottom: 10px;" type="button" id="attribute_add_but" value="{l s='Add'}" class="button"/><br />
	</td>
	<td>
	<form id="attribute_group_form" class="defaultForm AdminAttributesGroups" action="" method="post" enctype="multipart/form-data" >
		<fieldset id="fieldset_0">
			<legend>
			<img src="../img/admin/asterisk.gif" alt="Attributes" />Attributes
			</legend>
			<label>Name: </label>							
			<div class="margin-form">
				<div class="translatable">
					<div class="lang_1" style="display:block; float: left;">
								<input type="text" name="name_1" id="name_1" value="" class="" size="33" />
							<span class="hint" name="help_box">Invalid characters: <>;=#{}<span class="hint-pointer">&nbsp;</span></span>
					</div>
				<div class="lang_2" style="display:none; float: left;">
					<input type="text" name="name_2" id="name_2" value="" class="" size="33" />
					<span class="hint" name="help_box">Invalid characters: <>;=#{}<span class="hint-pointer">&nbsp;</span></span>
				</div>
				</div>
				<sup>*</sup>								
			<div class="clear"></div>								
			</div>
			<div class="clear"></div>
			<label>Public name: </label>							
			<div class="margin-form">
				<div class="translatable">
					<div class="lang_1" style="display:block; float: left;">
						<input type="text" name="public_name_1" id="public_name_1" value="" class="" size="33"/>
						<span class="hint" name="help_box">Invalid characters: <>;=#{}
							<span class="hint-pointer">&nbsp;</span>
						</span>												
					</div>
				<div class="lang_2" style="display:none; float: left;">
				<input type="text" name="public_name_2" id="public_name_2" value="" class="" size="33"	/>
				<span class="hint" name="help_box">Invalid characters: <>;=#{}
					<span class="hint-pointer">&nbsp;</span>
				</span>												
				</div>
			</div>
			<sup>*</sup>								
			<p class="preference_description">Group name displayed to the customer</p>
				<div class="clear"></div>
			</div>
				<div class="clear"></div>
			<label>Attribute type: </label>							
			<div class="margin-form">
				<select name="group_type" class="" id="group_type">
					<option value="radio">Radio button</option>	
					<option value="color">Color</option>
				</select>
			<p class="preference_description">Choose the type of the attribute</p>
			</div>
			<div class="clear"></div>
			<div class="margin-form">
			<input type="submit" id="attribute_group_form_submit_btn" value="Save" name="submitAddattribute_group" class="button" />
			</div>
			<div class="small"><sup>*</sup> Required field</div>
			</fieldset>
			</form>

	</td>
	</tr>
</table>
<h4 >{l s='Values'}</h4>
<div class="separation"></div>
<table id="values_table">
	<tr>
		<td valign="top">
		<select name="attr_values" id="attr_values_sel" style="width: 140px;">
		</select>
		</td>
		<td valign="top">
		<input style="width: 40px; margin-bottom: 10px;" id="value_add_but" type="button" value="{l s='Add'}" class="button"/><br />
		</td>
		<td>
	
		 <form id="attribute_form" class="defaultForm AdminAttributesGroups" action="" method="post" enctype="multipart/form-data" >
		<fieldset id="fieldset_0">
		<legend><img src="../img/admin/asterisk.gif" alt="Values" />Values</legend>
			<label>Attribute group: </label>
		<div class="margin-form">
			<select name="id_attribute_group" class="" id="id_attribute_group">
				{foreach from=$attributes_groups item=attr}
				<option value="{$attr.id_attribute_group}">{$attr.name}</option>
				{/foreach}
			</select>
		 <sup>*</sup>								
		<p class="preference_description">Choose the group of the attribute</p>
		</div>
		<div class="clear"></div>
		<label>Value: </label>	
		<div class="margin-form">
		<div class="translatable">
		<div class="lang_1" style="display:block; float: left;">
			<input type="text" name="name_1" id="name_1" value="" class="" size="33" />
			<span class="hint" name="help_box">Invalid characters: <>;=#{}
			<span class="hint-pointer">&nbsp;</span>
			</span>	
		</div>
		<div class="lang_2" style="display:none; float: left;">
		<input type="text" name="name_2" id="name_2" value="" class="" size="33"/>
		<span class="hint" name="help_box">Invalid characters: <>;=#{}<span class="hint-pointer">&nbsp;</span></span>												
		</div>
		</div>
		<sup>*</sup>
		<div class="clear"></div>
		</div>
		<div class="clear"></div>
		<div id="colorAttributeProperties" style="display:none;">
		<label>Color: </label>
		<div class="margin-form">
		<input type="color" size="33" data-hex="true" class="color mColorPickerInput" name="color" value="" />
		<p class="preference_description">Choose a color with the color picker, or enter an HTML color (e.g. &quot;lightblue&quot;, &quot;#CC6600&quot;)</p>
		</div>
		<div class="clear"></div>
		<label>Texture: </label>
		<div class="margin-form">
		<input type="file" name="texture"  />
		<p class="preference_description">Upload color texture from your computer<br />This will override the HTML color!<br /></p>
		</div>
		<div class="clear"></div>
		<label>Current texture: </label>							
		<div class="margin-form">None</div>
		</div>
		<div class="margin-form">
		</div>
		<div class="clear"></div>
		<div class="margin-form">
		<input type="submit" id="attribute_form_submit_btn" value="Save" name="submitAddattribute" class="button" />
		</div>
		<div class="small"><sup>*</sup> Required field</div>
		</fieldset>
		</form>
		</td>
	</tr>
</table>
</div>