package net.jeeeyul.erd.tool

import com.google.inject.Inject
import org.eclipse.graphiti.dt.IDiagramTypeProvider
import org.eclipse.graphiti.tb.DefaultToolBehaviorProvider
import net.jeeeyul.erd.ErdDiagramTypeProvider

class ToolBehaviorProvider extends DefaultToolBehaviorProvider {
	@Inject
	new(IDiagramTypeProvider diagramTypeProvider) {
		super(diagramTypeProvider)
	}
	
	
	def <T> T getInstance(Class<T> type){
		(diagramTypeProvider as ErdDiagramTypeProvider).injector.getInstance(type)
	}
}