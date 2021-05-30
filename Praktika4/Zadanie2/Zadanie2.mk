##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Zadanie2
ConfigurationName      :=Debug
WorkspacePath          :=/home/student/my_cplusplus_programs/Prakttimp/Praktika4
ProjectPath            :=/home/student/my_cplusplus_programs/Prakttimp/Praktika4/Zadanie2
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=student
Date                   :=30/05/21
CodeLitePath           :=/home/student/.codelite
LinkerName             :=g++
SharedObjectLinkerName :=g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.o.i
DebugSwitch            :=-gstab
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="Zadanie2.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)crypto++ 
ArLibs                 :=  "crypto++" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := ar rcus
CXX      := g++
CC       := gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/DES.cpp$(ObjectSuffix) $(IntermediateDirectory)/AES.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/student/my_cplusplus_programs/Prakttimp/Praktika4/Zadanie2/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/DES.cpp$(ObjectSuffix): DES.cpp $(IntermediateDirectory)/DES.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/student/my_cplusplus_programs/Prakttimp/Praktika4/Zadanie2/DES.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/DES.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/DES.cpp$(DependSuffix): DES.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/DES.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/DES.cpp$(DependSuffix) -MM DES.cpp

$(IntermediateDirectory)/DES.cpp$(PreprocessSuffix): DES.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/DES.cpp$(PreprocessSuffix) DES.cpp

$(IntermediateDirectory)/AES.cpp$(ObjectSuffix): AES.cpp $(IntermediateDirectory)/AES.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/student/my_cplusplus_programs/Prakttimp/Praktika4/Zadanie2/AES.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/AES.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/AES.cpp$(DependSuffix): AES.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/AES.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/AES.cpp$(DependSuffix) -MM AES.cpp

$(IntermediateDirectory)/AES.cpp$(PreprocessSuffix): AES.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/AES.cpp$(PreprocessSuffix) AES.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


