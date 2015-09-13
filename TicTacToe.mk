##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=TicTacToe
ConfigurationName      :=Debug
WorkspacePath          := "F:\CodeBase"
ProjectPath            := "F:\CodeBase\tictactoe"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=User
Date                   :=13/09/2015
CodeLitePath           :="C:\Program Files\CodeLite"
LinkerName             :=C:/TDM_GCC_MINGW/bin/g++.exe
SharedObjectLinkerName :=C:/TDM_GCC_MINGW/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
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
RcCompilerName         :=C:/TDM_GCC_MINGW/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/TDM_GCC_MINGW/bin/ar.exe rcu
CXX      := C:/TDM_GCC_MINGW/bin/g++.exe
CC       := C:/TDM_GCC_MINGW/bin/gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/TDM_GCC_MINGW/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:="C:\Program Files\CodeLite"
UNIT_TEST_PP_SRC_DIR:="C:\UNITTEST_CPP"
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/cell.cpp$(ObjectSuffix) $(IntermediateDirectory)/board.cpp$(ObjectSuffix) 



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
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "F:/CodeBase/tictactoe/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM "main.cpp"

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) "main.cpp"

$(IntermediateDirectory)/cell.cpp$(ObjectSuffix): cell.cpp $(IntermediateDirectory)/cell.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "F:/CodeBase/tictactoe/cell.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/cell.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/cell.cpp$(DependSuffix): cell.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/cell.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/cell.cpp$(DependSuffix) -MM "cell.cpp"

$(IntermediateDirectory)/cell.cpp$(PreprocessSuffix): cell.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/cell.cpp$(PreprocessSuffix) "cell.cpp"

$(IntermediateDirectory)/board.cpp$(ObjectSuffix): board.cpp $(IntermediateDirectory)/board.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "F:/CodeBase/tictactoe/board.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/board.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/board.cpp$(DependSuffix): board.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/board.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/board.cpp$(DependSuffix) -MM "board.cpp"

$(IntermediateDirectory)/board.cpp$(PreprocessSuffix): board.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/board.cpp$(PreprocessSuffix) "board.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


