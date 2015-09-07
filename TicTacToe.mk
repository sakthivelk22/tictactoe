##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=TicTacToe
ConfigurationName      :=Debug
WorkspacePath          := "D:\CodeLite\Practice"
ProjectPath            := "D:\CodeLite\Practice\TicTacToe"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=King0Beasts
Date                   :=07-09-2015
CodeLitePath           :="C:\CodeLite"
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
ObjectsFileList        :="TicTacToe.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=windres
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := ar rcus
CXX      := g++
CC       := gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)


##
## User defined environment variables
##
CodeLiteDir:=C:\CodeLite
UNIT_TEST_PP_SRC_DIR:=C:\UnitTest++-1.3
Objects0=$(IntermediateDirectory)/main$(ObjectSuffix) $(IntermediateDirectory)/cell$(ObjectSuffix) $(IntermediateDirectory)/board$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/CodeLite/Practice/TicTacToe/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main$(ObjectSuffix) -MF$(IntermediateDirectory)/main$(DependSuffix) -MM "main.cpp"

$(IntermediateDirectory)/main$(PreprocessSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main$(PreprocessSuffix) "main.cpp"

$(IntermediateDirectory)/cell$(ObjectSuffix): cell.cpp $(IntermediateDirectory)/cell$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/CodeLite/Practice/TicTacToe/cell.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/cell$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/cell$(DependSuffix): cell.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/cell$(ObjectSuffix) -MF$(IntermediateDirectory)/cell$(DependSuffix) -MM "cell.cpp"

$(IntermediateDirectory)/cell$(PreprocessSuffix): cell.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/cell$(PreprocessSuffix) "cell.cpp"

$(IntermediateDirectory)/board$(ObjectSuffix): board.cpp $(IntermediateDirectory)/board$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/CodeLite/Practice/TicTacToe/board.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/board$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/board$(DependSuffix): board.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/board$(ObjectSuffix) -MF$(IntermediateDirectory)/board$(DependSuffix) -MM "board.cpp"

$(IntermediateDirectory)/board$(PreprocessSuffix): board.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/board$(PreprocessSuffix) "board.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) $(IntermediateDirectory)/main$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/main$(DependSuffix)
	$(RM) $(IntermediateDirectory)/main$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/cell$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/cell$(DependSuffix)
	$(RM) $(IntermediateDirectory)/cell$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/board$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/board$(DependSuffix)
	$(RM) $(IntermediateDirectory)/board$(PreprocessSuffix)
	$(RM) $(OutputFile)
	$(RM) $(OutputFile).exe
	$(RM) "../.build-debug/TicTacToe"


