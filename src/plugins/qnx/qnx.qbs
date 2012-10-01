import qbs.base 1.0

import "../QtcPlugin.qbs" as QtcPlugin

QtcPlugin {
    name: "Qnx"
    provider: "RIM"

    Depends { name: "Core" }
    Depends { name: "Debugger" }
    Depends { name: "ProjectExplorer" }
    Depends { name: "QtSupport" }
    Depends { name: "Qt4ProjectManager" }
    Depends { name: "RemoteLinux" }
    Depends { name: "Qt"; submodules: ["widgets", "xml", "network"] }

    property bool enable: false
    property var pluginspecreplacements: ({"QNX_EXPERIMENTAL_STR": (enable ? "false" : "true")})

    cpp.defines: base.concat(["QT_NO_CAST_TO_ASCII", "QT_NO_CAST_FROM_ASCII"])
    cpp.includePaths: [
        "..",
        buildDirectory,
        "../../libs",
        "../../shared"
    ]

    files: [
        "bardescriptorfileimagewizardpage.cpp",
        "bardescriptorfileimagewizardpage.h",
        "bardescriptorfileimagewizardpage.ui",
        "blackberryabstractdeploystep.cpp",
        "blackberryabstractdeploystep.h",
        "blackberryapplicationrunner.cpp",
        "blackberryapplicationrunner.h",
        "blackberryconnect.cpp",
        "blackberryconnect.h",
        "blackberrycreatepackagestep.cpp",
        "blackberrycreatepackagestep.h",
        "blackberrycreatepackagestepconfigwidget.cpp",
        "blackberrycreatepackagestepconfigwidget.h",
        "blackberrycreatepackagestepfactory.cpp",
        "blackberrycreatepackagestepfactory.h",
        "blackberrydebugsupport.cpp",
        "blackberrydebugsupport.h",
        "blackberrydeployconfiguration.cpp",
        "blackberrydeployconfiguration.h",
        "blackberrydeployconfigurationfactory.cpp",
        "blackberrydeployconfigurationfactory.h",
        "blackberrydeployconfigurationwidget.cpp",
        "blackberrydeployconfigurationwidget.h",
        "blackberrydeployconfigurationwidget.ui",
        "blackberrydeployinformation.cpp",
        "blackberrydeployinformation.h",
        "blackberrydeploystep.cpp",
        "blackberrydeploystep.h",
        "blackberrydeploystepconfigwidget.cpp",
        "blackberrydeploystepconfigwidget.h",
        "blackberrydeploystepfactory.cpp",
        "blackberrydeploystepfactory.h",
        "blackberrydeviceconfiguration.cpp",
        "blackberrydeviceconfiguration.h",
        "blackberrydeviceconfigurationfactory.cpp",
        "blackberrydeviceconfigurationfactory.h",
        "blackberrydeviceconfigurationwidget.cpp",
        "blackberrydeviceconfigurationwidget.h",
        "blackberrydeviceconfigurationwidget.ui",
        "blackberrydeviceconfigurationwizard.cpp",
        "blackberrydeviceconfigurationwizard.h",
        "blackberrydeviceconfigurationwizardpages.cpp",
        "blackberrydeviceconfigurationwizardpages.h",
        "blackberrydeviceconfigurationwizardsetuppage.ui",
        "blackberrydeviceconfigurationwizardsshkeypage.ui",
        "blackberryqtversion.cpp",
        "blackberryqtversion.h",
        "blackberryqtversionfactory.cpp",
        "blackberryqtversionfactory.h",
        "blackberryrunconfiguration.cpp",
        "blackberryrunconfiguration.h",
        "blackberryrunconfigurationfactory.cpp",
        "blackberryrunconfigurationfactory.h",
        "blackberryrunconfigurationwidget.cpp",
        "blackberryrunconfigurationwidget.h",
        "blackberryrunconfigurationwidget.ui",
        "blackberryruncontrol.cpp",
        "blackberryruncontrol.h",
        "blackberryruncontrolfactory.cpp",
        "blackberryruncontrolfactory.h",
        "blackberrywizardextension.cpp",
        "blackberrywizardextension.h",
        "pathchooserdelegate.cpp",
        "pathchooserdelegate.h",
        "qnx.qrc",
        "qnxabstractqtversion.cpp",
        "qnxabstractqtversion.h",
        "qnxbaseqtconfigwidget.cpp",
        "qnxbaseqtconfigwidget.h",
        "qnxbaseqtconfigwidget.ui",
        "qnxconstants.h",
        "qnxdebugsupport.cpp",
        "qnxdebugsupport.h",
        "qnxdeployconfiguration.cpp",
        "qnxdeployconfiguration.h",
        "qnxdeployconfigurationfactory.cpp",
        "qnxdeployconfigurationfactory.h",
        "qnxdeploystepfactory.cpp",
        "qnxdeploystepfactory.h",
        "qnxdeviceconfiguration.cpp",
        "qnxdeviceconfiguration.h",
        "qnxdeviceconfigurationfactory.cpp",
        "qnxdeviceconfigurationfactory.h",
        "qnxdeviceconfigurationwizard.cpp",
        "qnxdeviceconfigurationwizard.h",
        "qnxdeviceconfigurationwizardpages.cpp",
        "qnxdeviceconfigurationwizardpages.h",
        "qnxplugin.cpp",
        "qnxplugin.h",
        "qnxqtversion.cpp",
        "qnxqtversion.h",
        "qnxqtversionfactory.cpp",
        "qnxqtversionfactory.h",
        "qnxrunconfiguration.cpp",
        "qnxrunconfiguration.h",
        "qnxrunconfigurationfactory.cpp",
        "qnxrunconfigurationfactory.h",
        "qnxruncontrol.cpp",
        "qnxruncontrol.h",
        "qnxruncontrolfactory.cpp",
        "qnxruncontrolfactory.h",
        "qnxutils.cpp",
        "qnxutils.h",
        "images/target-small.png",
        "images/target.png",
    ]
}