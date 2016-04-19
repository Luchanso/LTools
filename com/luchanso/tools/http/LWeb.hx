package com.luchanso.tools.http;

/**
 * ...
 * @author Loutchansky Oleg
 */
class LWeb
{
	public static function DynamicToPOST(obj : Dynamic) : String
	{
		var dataStr = '';
        var isFirst = true;
        
        for (i in Reflect.fields(obj)) {
            if (!isFirst) {
                isFirst = false;
            }
            else {
                dataStr += '&';
            }
			
			dataStr += i + "=" + StringTools.urlEncode(Reflect.field(obj, i));
        }
        
        return dataStr;
	}
}