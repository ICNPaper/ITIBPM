package org.uengine.ui.taglibs.input;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.TagSupport;

import org.uengine.kernel.GlobalContext;
import org.uengine.ui.list.util.HttpUtils;
import org.uengine.util.UEngineUtil;

/**
*
* @author <a href="mailto:ghbpark@hanwha.co.kr">Sungsoo Park</a>
* @version $Id: DatabaseRef.java,v 1.14 2011/07/22 07:33:16 curonide Exp $
*/
public class DatabaseRef extends TagSupport {

    private String name; // name of the radio-button group

    private String value; // value of this particular button

    private String dVal; // default value if none is found

    private Map attributes; // attributes of the <input> element

    private String sql; // attributes of the <input> element as text

    private String beanId; // bean id to get default values from
    
    private String dsn;
    
    private String onchange;
    private String extvalue1receiver;
    private String extvalue2receiver;
    private String extvalue3receiver;
    
	private int viewMode;
	private String tablename;
	private String codefield;
	private String displayfield;

    public void release() {
        super.release();
        name = null;
        dVal = null;
        attributes = null;
        sql = null;
        beanId = null;
        dsn=null;
        onchange=null;
    }

    public int doStartTag() throws JspException {
        try {
            
            JspWriter out = pageContext.getOut();
            
			String[] beanValuesDisplay = HttpUtils.getParameter(beanId, name+"_database_text", dVal,
					viewMode, pageContext);

			String[] beanValues = HttpUtils.getParameter(beanId, name, dVal,
					viewMode, pageContext);

			
			for (int i = 0; i < beanValuesDisplay.length; i++) {
				String beanValueDisplay= beanValuesDisplay[i];
				String beanValue= beanValues[i];
				if (getViewmode() == InputConstants.VIEW
						|| getViewmode() == InputConstants.PRINT) {
					out.print(beanValueDisplay);
					return EVAL_PAGE;
				}
	    		out.print("<table bgcolor=white><tr><td><input type=text name=\""+name +"_database_text\" size=20 value='"+beanValueDisplay+"'>");
	    	   	out.print("<input type=hidden name=\""+name +"\" value='"+beanValue+"'");
				Util.printAttributes(out, attributes);

				out.print(">");
//	    		out.print("<input type=button name="+name +"_database_button value='...' onclick='openDataList(\""+sql+"\",\""+dsn+"\",this");
	    		out.print("<img align=absmiddle src='"+GlobalContext.WEB_CONTEXT_ROOT+"/processmanager/images/Toolbar-toblock.gif' name=\""
	    				+ name +"_database_button\" onclick='openDataList(\""+URLEncoder.encode(sql.replace("&#13;", "").replace("&#10;", ""), GlobalContext.ENCODING)+"\",\""+dsn+"\",this");
		  		
	    		if(getExtvalue1receiver()!=null){
	    			out.print(",\""+ getExtvalue1receiver() +"\"");
	    		}else
	    			out.print(",null");
	    		
	    		if(getExtvalue2receiver()!=null){
	    			out.print(",\""+ getExtvalue2receiver() +"\"");
	    		}else
	    			out.print(",null");
	    		
	    		if(getExtvalue3receiver()!=null){
	    			out.print(",\""+ getExtvalue3receiver() +"\"");
	    		}else
	    			out.print(",null");
	    		
	    		out.print(")'>");
	      		if(getOnchange()!=null)
	    		    out.print("<input type=hidden name=\""+name +"_onChange\" value=\"" + getOnchange()+"\">");

	      		out.print("</td></tr></table>");
			}

        } catch (Exception ex) {
            throw new JspTagException(ex.getMessage());
        }
        return SKIP_BODY;
    }

    public void setName(String x) {
        name = x;
    }

    public void setValue(String x) {
        value = x;
    }

    public void setAttributes(Map x) {
        attributes = x;
    }



    public void setBean(String x) {
        beanId = x;
    }

    public void setDefault(String x) {
        dVal = x;
    }

    /**
     * Getter for property name.
     * 
     * @return Value of property name.
     */
    public String getName() {
        return name;
    }

    /**
     * Getter for property default.
     * 
     * @return Value of property default.
     */
    public String getDefault() {
        return dVal;
    }

    /**
     * Getter for property bean.
     * 
     * @return Value of property bean.
     */
    public String getBean() {
        return beanId;
    }


    /**
     * Getter for property attributes.
     * 
     * @return Value of property attributes.
     */
    public Map getAttributes() {
        return attributes;
    }
	public int getViewmode() {
		return viewMode;
	}

	public void setViewmode(int i) {
		viewMode = i;
	}

	public String getSql() {
		return sql;
	}

	public void setSql(String sql) {
		this.sql = sql;
	}

	public String getExtvalue1receiver() {
		return extvalue1receiver;
	}

	public void setExtvalue1receiver(String extValue1Receiver) {
		this.extvalue1receiver = extValue1Receiver;
	}

	public String getExtvalue2receiver() {
		return extvalue2receiver;
	}

	public void setExtvalue2receiver(String extValue2Receiver) {
		this.extvalue2receiver = extValue2Receiver;
	}

	public String getExtvalue3receiver() {
		return extvalue3receiver;
	}

	public void setExtvalue3receiver(String extValue3Receiver) {
		this.extvalue3receiver = extValue3Receiver;
	}

	public String getDsn() {
		return dsn;
	}

	public void setDsn(String dsn) {
		this.dsn = dsn;
	}

	public String getOnchange() {
		return onchange;
	}

	public void setOnchange(String onchange) {
		this.onchange = onchange;
	}

	public String getCodefield() {
		return codefield;
	}

	public void setCodefield(String codefield) {
		this.codefield = codefield;
	}

	public String getDisplayfield() {
		return displayfield;
	}

	public void setDisplayfield(String displayfield) {
		this.displayfield = displayfield;
	}

	public String getTablename() {
		return tablename;
	}

	public void setTablename(String tablename) {
		this.tablename = tablename;
	}
	
}