project "physX"
	kind "StaticLib"
	language "C++"
    cppdialect "C++17"
    staticruntime "On"

	targetdir ("bin/" .. outputDir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputDir .. "/%{prj.name}")

	files
	{
		"source/**.cpp",
	}
	removefiles { "source/foundation/unix/**.cpp" }
	
	includedirs{
		"include",
		"include/common",
		"include/foundation",
		"include/collision",
		"source/common/src",
		"source/common/include",
		"source/pvd/include",
		"source/lowlevelaabb/include",
		"source/scenequery/include",
		"source/geomutils/include",
		"source/simulationcontroller/src",
		"source/simulationcontroller/include",
		"source/lowlevel/api/include",
		"source/geomutils/src",
		"source/lowlevel/software/include",
		"source/lowlevel/common/include/pipeline",
		"source/geomutils/src/contact",
		"source/lowlevel/common/include/utils",
		"source/geomutils/src/pcm",
		"source/lowleveldynamics/include",
		"source/geomutils/src/mesh",
		"source/geomutils/src/hf",
		"source/geomutils/src/convex",
		"source/geomutils/src/common",
		"source/geomutils/src/intersection",
		"source/geomutils/src/distance",
		"source/geomutils/src/ccd",
		"source/geomutils/src/gjk",
		"source/geomutils/src/sweep",
		"source/physxgpu/include",
		"source/fastxml/include",
		"source/physx/src",
		"source/physx/src/device",
		"source/lowlevel/common/include/collision",
		"source/physxextensions/src",
		"source/physxextensions/src/serialization/File",
		"source/physxextensions/src/serialization/Xml",
		"source/physxextensions/src/serialization/Binary",
		"source/physxvehicle/src/physxmetadata/include",
		"source/physxmetadata/core/include",
		"source/physxmetadata/extensions/include",
		"source/filebuf/include",
		"source/physxvehicle/src",
	}
	
	defines{
		"PX_PHYSX_STATIC_LIB"
	}


	filter "system:windows"
		systemversion "latest"
		
        defines{
                
        }

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"