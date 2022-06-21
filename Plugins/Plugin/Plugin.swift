import Foundation
import PackagePlugin

@main
struct DoNilDisturb: BuildToolPlugin {
    func createBuildCommands(
        context: PackagePlugin.PluginContext,
        target: PackagePlugin.Target
    ) async throws -> [PackagePlugin.Command] {
        [
            .buildCommand(
                displayName: "Build Phase Script - SwiftPMPluginDemo",
                executable: try context.tool(named: "PluginBinary").path,
                arguments: []
            )
        ]
    }
}
