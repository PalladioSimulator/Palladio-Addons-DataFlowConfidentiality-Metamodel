/*
 * generated by Xtext 2.24.0
 */
package org.palladiosimulator.dataflow.confidentiality.pcm.dddsl.ui;

import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.eclipse.xtext.ui.editor.embedded.IEditedResourceProvider;

/**
 * Use this class to register components to be used within the Eclipse IDE.
 */
@SuppressWarnings("restriction")
public class DDDslUiModule extends AbstractDDDslUiModule {

	public DDDslUiModule(AbstractUIPlugin plugin) {
		super(plugin);
	}
	
    public Class<? extends IEditedResourceProvider> bindIEditedResourceProvider() {
        return DDDslEditedResourceProvider.class;
    }
}
