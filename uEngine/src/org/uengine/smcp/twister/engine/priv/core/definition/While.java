package org.uengine.smcp.twister.engine.priv.core.definition;

/**
 * The While activity allows you to indicate that an activity is to
 */

public interface While extends StructuredActivity {

	/**
	 * 
	 * @uml.property name="condition"
	 */
	public String getCondition();

	/**
	 * 
	 * @uml.property name="condition"
	 */
	public void setCondition(String booleanExpr);

}