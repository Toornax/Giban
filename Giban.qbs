import qbs

Project {
    minimumQbsVersion: "1.7.1"

    CppApplication {
        Depends { name: "Qt.core" }
        Depends { name: "Qt.quick" }

        property pathList qmlImportPaths: []

        cpp.cxxLanguageVersion: "c++17"
        cpp.includePaths: ["include/"]

        cpp.defines: [
            "QT_DEPRECATED_WARNINGS",
        ]

        Group {
            name: "Sources files"
            files: ["**/*.cpp"]
            prefix: "src/"
        }

        Group {
            name: "Headers files"
            files: ["**/*.hpp"]
            prefix: "include/"
        }

        Group {
            name: "QML files"
            files: ["*.qml"]
            prefix: "qml/"
        }

        Group {
            fileTagsFilter: "application"
            qbs.install: true
        }
    }
}
