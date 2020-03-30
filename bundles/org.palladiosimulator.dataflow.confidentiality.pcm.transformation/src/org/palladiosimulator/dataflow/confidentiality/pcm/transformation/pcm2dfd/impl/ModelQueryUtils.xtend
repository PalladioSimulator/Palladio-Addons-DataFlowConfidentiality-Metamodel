package org.palladiosimulator.dataflow.confidentiality.pcm.transformation.pcm2dfd.impl

import org.eclipse.emf.ecore.EObject

class ModelQueryUtils {
	
	def <T> Iterable<T> findAllChildrenIncludingSelfOfType(EObject obj, Class<T> clz) {
		val results = obj.findChildrenOfType(clz).toList
		if (clz.isInstance(obj)) {
			results.add(obj as T)
		}
		results
	}
	
	def <T> Iterable<T> findChildrenOfType(EObject obj, Class<T> clz) {
		obj.eAllContents.filter(clz).toIterable
	}
	
	def <T> T findParentOfType(EObject obj, Class<T> clz) {
		var currentObject = obj
		for (; currentObject !== null && !clz.isInstance(currentObject); currentObject = currentObject.eContainer) {}
		currentObject as T
	}
}