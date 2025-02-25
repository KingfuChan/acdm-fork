classdef ACDM_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        ACDMUIFigure                    matlab.ui.Figure
        FileMenu                        matlab.ui.container.Menu
        NewMenu                         matlab.ui.container.Menu
        OpenMenu                        matlab.ui.container.Menu
        SaveMenu                        matlab.ui.container.Menu
        SaveasMenu                      matlab.ui.container.Menu
        Menu                            matlab.ui.container.Menu
        ExportMenu                      matlab.ui.container.Menu
        Menu_2                          matlab.ui.container.Menu
        QuitMenu                        matlab.ui.container.Menu
        DataMenu                        matlab.ui.container.Menu
        VIC2DCorrelatedsolutiondatafilesMenu  matlab.ui.container.Menu
        VIC3DCorrelatedsolutiondatafilesMenu  matlab.ui.container.Menu
        ToolsMenu                       matlab.ui.container.Menu
        CrackpatternmodificationMenu    matlab.ui.container.Menu
        CracklinelinkageMenu            matlab.ui.container.Menu
        SmoothingMenu                   matlab.ui.container.Menu
        ParametersMenu                  matlab.ui.container.Menu
        DICMenu_2                       matlab.ui.container.Menu
        CrackinclinationMenu            matlab.ui.container.Menu
        CrackkinematicmeasurementMenu   matlab.ui.container.Menu
        VisualisationMenu               matlab.ui.container.Menu
        HelpMenu                        matlab.ui.container.Menu
        UsermanualMenu                  matlab.ui.container.Menu
        AboutMenu                       matlab.ui.container.Menu
        TabGroup                        matlab.ui.container.TabGroup
        DetectionTab                    matlab.ui.container.Tab
        GridLayout                      matlab.ui.container.GridLayout
        Panel_14                        matlab.ui.container.Panel
        GridLayout4                     matlab.ui.container.GridLayout
        Panel_22                        matlab.ui.container.Panel
        GridLayout12                    matlab.ui.container.GridLayout
        RundetectionButton              matlab.ui.control.Button
        Panel_21                        matlab.ui.container.Panel
        GridLayoutCrackDetectionMethod  matlab.ui.container.GridLayout
        EdgedetectionparametersPanel    matlab.ui.container.Panel
        GridLayout11                    matlab.ui.container.GridLayout
        ErrorareadilationEditField_2    matlab.ui.control.NumericEditField
        ErrorareadilationEditField_2Label  matlab.ui.control.Label
        ErrorstrainlevelmmmEditField    matlab.ui.control.NumericEditField
        ErrorstrainlevelmmmEditFieldLabel  matlab.ui.control.Label
        ReferencedataDropDown_2         matlab.ui.control.DropDown
        ReferencedataDropDown_2Label    matlab.ui.control.Label
        ErrorsashighstrainsCheckBox_2   matlab.ui.control.CheckBox
        Label                           matlab.ui.control.Label
        LowthresholdmmmEditField        matlab.ui.control.NumericEditField
        LowthresholdmmmEditFieldLabel   matlab.ui.control.Label
        HighthresholdmmmEditField       matlab.ui.control.NumericEditField
        HighthresholdmmmEditFieldLabel  matlab.ui.control.Label
        ThresholdingparametersPanel     matlab.ui.container.Panel
        GridLayout10                    matlab.ui.container.GridLayout
        ReferencedataDropDown           matlab.ui.control.DropDown
        ReferencedataDropDownLabel      matlab.ui.control.Label
        ErrorsashighstrainsCheckBox     matlab.ui.control.CheckBox
        RunthresholdingButton           matlab.ui.control.Button
        HighstrainthresholdmmmEditField  matlab.ui.control.NumericEditField
        HighstrainthresholdmmmEditFieldLabel  matlab.ui.control.Label
        Panel_20                        matlab.ui.container.Panel
        GridLayout9                     matlab.ui.container.GridLayout
        GridLayout20                    matlab.ui.container.GridLayout
        DeleteButton_2                  matlab.ui.control.Button
        CrackdetectionmethodButtonGroup  matlab.ui.container.ButtonGroup
        EdgedetectionButton             matlab.ui.control.RadioButton
        ThresholdingButton              matlab.ui.control.RadioButton
        Panel_18                        matlab.ui.container.Panel
        GridLayout7                     matlab.ui.container.GridLayout
        Panel_19                        matlab.ui.container.Panel
        GridLayout8                     matlab.ui.container.GridLayout
        AddButton                       matlab.ui.control.Button
        RemoveButton                    matlab.ui.control.Button
        DICfilesforcrackdetectionListBox  matlab.ui.control.ListBox
        DICfilesforcrackdetectionListBoxLabel  matlab.ui.control.Label
        DICfilesListBox                 matlab.ui.control.ListBox
        DICfilesListBoxLabel            matlab.ui.control.Label
        DICParametersPanel              matlab.ui.container.Panel
        GridLayout6                     matlab.ui.container.GridLayout
        EditButton                      matlab.ui.control.Button
        FilterEditField                 matlab.ui.control.EditField
        FilterLabel                     matlab.ui.control.Label
        StepEditField                   matlab.ui.control.NumericEditField
        StepLabel                       matlab.ui.control.Label
        SubsetEditField                 matlab.ui.control.NumericEditField
        SubsetLabel                     matlab.ui.control.Label
        Panel_16                        matlab.ui.container.Panel
        GridLayout5                     matlab.ui.container.GridLayout
        DICdatapathEditField            matlab.ui.control.EditField
        DICdatapathLabel                matlab.ui.control.Label
        Panel_8                         matlab.ui.container.Panel
        GridLayout2                     matlab.ui.container.GridLayout
        UndeformedimagecoordinatespxxyLabel  matlab.ui.control.Label
        Panel_9                         matlab.ui.container.Panel
        GridLayout3                     matlab.ui.container.GridLayout
        SigmaCheckBox                   matlab.ui.control.CheckBox
        CracklinesCheckBox              matlab.ui.control.CheckBox
        CombinedhighstrainareasCheckBox  matlab.ui.control.CheckBox
        IndividualhighstrainareasCheckBox  matlab.ui.control.CheckBox
        PrincipalstrainsCheckBox        matlab.ui.control.CheckBox
        UIAxes                          matlab.ui.control.UIAxes
        ClassificationTab               matlab.ui.container.Tab
        GridLayout_2                    matlab.ui.container.GridLayout
        Panel_15                        matlab.ui.container.Panel
        GridLayout13                    matlab.ui.container.GridLayout
        Panel_24                        matlab.ui.container.Panel
        GridLayout15                    matlab.ui.container.GridLayout
        Panel_23                        matlab.ui.container.Panel
        GridLayout14                    matlab.ui.container.GridLayout
        DeleteButton                    matlab.ui.control.Button
        RenamechangecolorButton         matlab.ui.control.Button
        ModifyselectionButton           matlab.ui.control.Button
        AddnewfamilyButton              matlab.ui.control.Button
        CrackfamiliesListBox            matlab.ui.control.ListBox
        CrackfamiliesListBoxLabel       matlab.ui.control.Label
        Panel_10                        matlab.ui.container.Panel
        GridLayout2_2                   matlab.ui.container.GridLayout
        UndeformedimagecoordinatespxxyLabel_2  matlab.ui.control.Label
        Panel_11                        matlab.ui.container.Panel
        GridLayout3_2                   matlab.ui.container.GridLayout
        SigmaCheckBox_2                 matlab.ui.control.CheckBox
        CracklinesCheckBox_2            matlab.ui.control.CheckBox
        PrincipalstrainsCheckBox_2      matlab.ui.control.CheckBox
        UIAxes_2                        matlab.ui.control.UIAxes
        KinematicMeasurementTab         matlab.ui.container.Tab
        GridLayout_3                    matlab.ui.container.GridLayout
        Panel_17                        matlab.ui.container.Panel
        GridLayout16                    matlab.ui.container.GridLayout
        Panel_26                        matlab.ui.container.Panel
        GridLayout18                    matlab.ui.container.GridLayout
        ResetplotButton                 matlab.ui.control.Button
        UpdateplotButton                matlab.ui.control.Button
        Panel_25                        matlab.ui.container.Panel
        GridLayout17                    matlab.ui.container.GridLayout
        CrackKinematicComponentsButtonGroup  matlab.ui.container.ButtonGroup
        ReliabilityindexButton          matlab.ui.control.RadioButton
        ButtonGroup_3                   matlab.ui.container.ButtonGroup
        colorButton                     matlab.ui.control.ToggleButton
        bwButton                        matlab.ui.control.ToggleButton
        FullcrackdisplacementvectoropeningandslidingButton  matlab.ui.control.RadioButton
        CracksliponlyButton             matlab.ui.control.RadioButton
        CrackopeningonlyButton          matlab.ui.control.RadioButton
        CrackkinematicplottypeButtonGroup  matlab.ui.container.ButtonGroup
        KinematicvectorsmultiplemeasuringstagesButton  matlab.ui.control.RadioButton
        ScattersinglemeasuringstageButton  matlab.ui.control.RadioButton
        ContourfillingssinglemeasuringstageButton  matlab.ui.control.RadioButton
        CrackfamiliesListBox_2          matlab.ui.control.ListBox
        CrackfamiliesListBox_2Label     matlab.ui.control.Label
        DICmeasuringstagesListBox_2     matlab.ui.control.ListBox
        DICmeasuringstagesListBox_2Label  matlab.ui.control.Label
        GridLayout15_2                  matlab.ui.container.GridLayout
        RuncrackkinematicmeasurementButton  matlab.ui.control.Button
        Panel_12                        matlab.ui.container.Panel
        GridLayout2_3                   matlab.ui.container.GridLayout
        GridLayout19                    matlab.ui.container.GridLayout
        UndeformedphysicalcoordinatesmmXYLabel  matlab.ui.control.Label
        ButtonGroup_2                   matlab.ui.container.ButtonGroup
        PhysicalcoordinatesmmButton     matlab.ui.control.ToggleButton
        ImagecoordinatespxButton        matlab.ui.control.ToggleButton
        Panel_13                        matlab.ui.container.Panel
        GridLayout3_3                   matlab.ui.container.GridLayout
        ButtonGroup                     matlab.ui.container.ButtonGroup
        SmoothedButton                  matlab.ui.control.ToggleButton
        OriginalButton                  matlab.ui.control.ToggleButton
        CrackkinematicsCheckBox         matlab.ui.control.CheckBox
        FamilycolorCheckBox             matlab.ui.control.CheckBox
        CracklinesCheckBox_3            matlab.ui.control.CheckBox
        UIAxes_3                        matlab.ui.control.UIAxes
    end


    properties (Access = public)
        AppData; % data to be saved
        LocalAppData; % temp data (will not be saved)
        tempData;
        dlg; % dialog window 
        cbar; %colorbar
    end

    properties (Access = private)
        DICDialog; % DIC dialog box app
        IWDialog; % crack inclination parameter dialog
        KMDialog; % crack kinematic parameters dialog
        VisParamDialog;
        SmoothingDialog; % crack kinematic parameters dialog
        CrackPatternModificationDialog;
    end

    methods (Access = private)

    end

    methods (Access = public)

        function closedlg(app)
            if ~isempty(app.dlg)
                close(app.dlg)
            end
        end

        function check = checkDependencies(app)
            % check MATALB dependencies

            minMATLABversion = '9.10'; % (Release 2021a)
            Toolboxes = {'Image Processing Toolbox';...
                'Statistics and Machine Learning Toolbox';...
                'Curve Fitting Toolbox';...
                'Navigation Toolbox';...
                'Robotics System Toolbox';...
                'ROS Toolbox';...
                };

            check = 1;

            if ~isdeployed % check only if source code is not deployed
                V = ver;
                VName = {V.Name};
                [a,index] = find(strcmp(VName, 'MATLAB'));
                if isempty(a)

                    waitfor(errordlg({'MATLAB error!'},'MATLAB Error'));
                    check = 0;
                    return
                else
                    if verLessThan('matlab',minMATLABversion)
                        waitfor(errordlg({'MATLAB error!','','MATLAB 9.10 (2021a) or higher must be installed'},'File Error'));
                        check = 0;
                        return
                    end

                    for i=1:length(Toolboxes)
                        if ~any(strcmp(VName, Toolboxes{i}))
                            waitfor(errordlg({'MATLAB error!','','At least 1 of the following required MATLAB toolboxes are missing:','',char(Toolboxes'),'','Get all installed toolboxes with the following command in the MATLAB prompt:','>> ver'},'File Error'));
                            check = 0;
                            return
                        end
                    end
                end
            end

        end

        function [names,data] = getUiControls(app)

            fn = fieldnames(app);
            count=0;
            for k=1:numel(fn)

                if  isa(app.(fn{k}),'matlab.ui.control.ListBox') || ...
                        isa(app.(fn{k}),'matlab.ui.control.DropDown')

                    count=count+1;
                    names{count}=fn{k};

                    data(count).Class=class(app.(fn{k}));
                    data(count).Items=app.(fn{k}).Items;
                    data(count).Value=app.(fn{k}).Value;
                    data(count).ItemsData=app.(fn{k}).ItemsData;
                    data(count).Visible=app.(fn{k}).Visible;
                    data(count).Enable=app.(fn{k}).Enable;
                end
                if  isa(app.(fn{k}),'matlab.ui.control.ListBox')
                    data(count).Multiselect=app.(fn{k}).Multiselect;
                end

                if isa(app.(fn{k}),'matlab.ui.control.EditField') || ...
                        isa(app.(fn{k}),'matlab.ui.control.NumericEditField') || ...
                        isa(app.(fn{k}),'matlab.ui.control.RadioButton') || ...
                        isa(app.(fn{k}),'matlab.ui.control.CheckBox')

                    count=count+1;
                    names{count}=fn{k};

                    data(count).Class=class(app.(fn{k}));
                    data(count).Value = app.(fn{k}).Value;
                    data(count).Visible = app.(fn{k}).Visible;
                    data(count).Enable = app.(fn{k}).Enable;
                end

                if isa(app.(fn{k}),'matlab.ui.control.Button')

                    count=count+1;
                    names{count}=fn{k};

                    data(count).Class=class(app.(fn{k}));
                    data(count).Visible = app.(fn{k}).Visible;
                    data(count).Enable = app.(fn{k}).Enable;
                end
            end


        end



        function initiateProperties(app)
            app.AppData = struct(...
                'DataType',[],...
                'ImageFilesNames',[],...
                'DICDataFolderPath',[],...
                'DICDataFileNames',[],...
                'DICProperties',...
                struct(...
                'Subset',[],...
                'Step',[],...
                'SelectedFilter',[],...
                'Filters',[],...
                'SelectedAOIs',[],...
                'AOIs',[]...
                ),...
                'HSAs',[],...
                'ErrorAsHSAFileName','',...
                'HSAcombined',[],...
                'ErrorAsEdgeFileName','',...
                'BW',[],...
                'BRANCH',[],...
                'NODE',[],...
                'FAMILY',...
                struct(...
                'Name',[],...
                'Color',[]...
                ),...
                'cracklineplotdata',[],...
                'KMProperties',...
                struct(...
                'iw',15,...
                'd1',[],...
                'd2',[],...
                'reliabilityThreshold',0.01 ...
                ),...
                'Tab3_MeasuringStagesSelection',...
                struct(...
                'single',[],...
                'multiple',[]...
                ),...
                'SmoothingParameters',...
                struct(...
                'DeleteSmoothedData',0,...
                'Applied',1,...
                'CLSpan',1,...
                'CLMethod','moving',...
                'KInterpolate',1,...
                'KInterpolateMethod','nearest',...
                'KSpan',1,...
                'KMethod','moving'...
                ),...
                'VisualizationParameters',...
                struct(...
                'CrackLineWidth',1,...
                'CrackLineColor',[0,0,0],...
                'MaxStrain',50,...
                'MinCrackWidth',-inf,...
                'MinSteps',1,...
                'MaxCrackWidth',2,...
                'MaxError',0.01,...
                'ContourFfac',10,...
                'Scatterfac',50,...
                'KinVecfac',20,...
                'KinVecHelpLineWidth',0.5,...
                'KinVecHelpLineColor',[0.9,0.9,0.9],...
                'KinVecHelpLineInterval',3,...
                'KinVecKinLineWidth',1,...
                'KinVecKinLineColor',[1,0,0])...
                );


            app.LocalAppData = struct(...
                'ACDMfilepath',[],...
                'ImageFiles',[],...
                'DICFile1',[],...
                'DICFiles',[],...
                'DICCoordinates',[],...
                'TabPlot',struct(...
                'image',[],...
                'cracklineplot',[],...
                'branchplot',[],...
                'kinematicplot',[],...
                'cbar',[],...
                'reset',1 ...
                ),...
                'B',[]);

            app.tempData = []; % for sharing data between apps

            app.dlg = [];

            app.LocalAppData.TabPlot(1).reset = 1;
            app.LocalAppData.TabPlot(2).reset = 1;
            app.LocalAppData.TabPlot(3).reset = 1;

            app.LocalAppData.TabPlot(1).cbar = [];
            app.LocalAppData.TabPlot(2).cbar = [];
            app.LocalAppData.TabPlot(3).cbar = [];

            app.TabGroup.SelectedTab = app.DetectionTab;


            uiplot(app,1);
            uiplot(app,2);
            uiplot(app,3);




            %% UI Content
            % Tab1
            app.DICdatapathEditField.Value = '';

            app.SubsetEditField.Value = 0;
            app.StepEditField.Value = 0;
            app.FilterEditField.Value = '';

            app.DICfilesListBox.Items = {};

            app.DICfilesforcrackdetectionListBox.Items = {};

            app.ReferencedataDropDown.Items = {};
            app.ReferencedataDropDown_2.Items = {};

            % Tab2
            app.CrackfamiliesListBox.Items = {};

            % Tab3
            app.DICmeasuringstagesListBox_2.Items = {};
            app.DICmeasuringstagesListBox_2.ItemsData = [];
            app.CrackfamiliesListBox_2.Items = {};

            app.FamilycolorCheckBox.Value = 0;

            setInteractivities(app);

        end


        function setInteractivities(app)

            drawnow;
            figure(app.ACDMUIFigure)
            drawnow;

            %% Model UI Controls
            % Menu

            if isempty(app.LocalAppData.ACDMfilepath)
                app.SaveMenu.Enable = 'off';
            else
                app.SaveMenu.Enable = 'on';
            end

            if isempty(app.AppData.DICDataFileNames)
                app.SaveasMenu.Enable = 'off';
            else
                app.SaveasMenu.Enable = 'on';
            end


            if isempty(app.LocalAppData.DICFiles)
                app.CrackpatternmodificationMenu.Enable = 'off';
                %                 app.CrackLineMergingMenu.Enable = 'off';
            else
                app.CrackpatternmodificationMenu.Enable = 'on';
                %                 app.CrackLineMergingMenu.Enable = 'on';
            end
            if ~isempty(app.AppData.BRANCH)
                app.CrackpatternmodificationMenu.Enable = 'on';
                app.CracklinelinkageMenu.Enable = 'on';
                app.ExportMenu.Enable = 'on';
            else
                app.CrackpatternmodificationMenu.Enable = 'off';
                app.CracklinelinkageMenu.Enable = 'off';
                app.ExportMenu.Enable = 'off';
            end


            %% Tab Detection

            % no selection in DIC Data List and
            % no selection in Crack Detection list
            if isempty(app.DICfilesListBox.Value) && isempty(app.DICfilesforcrackdetectionListBox.Value)

                app.AddButton.Enable = 'off';
                app.RemoveButton.Enable = 'off';
                app.DeleteButton_2.Enable = 'off';

                app.PrincipalstrainsCheckBox.Enable = 'off';
                app.PrincipalstrainsCheckBox_2.Enable = 'off';
                app.SigmaCheckBox.Enable = 'off';
                app.SigmaCheckBox_2.Enable = 'off';
                app.IndividualhighstrainareasCheckBox.Enable = 'off';
                app.CombinedhighstrainareasCheckBox.Enable = 'off';

                app.PrincipalstrainsCheckBox.Value = 0;
                app.PrincipalstrainsCheckBox_2.Value = 0;
                app.SigmaCheckBox.Value = 0;
                app.SigmaCheckBox_2.Value = 0;
                app.IndividualhighstrainareasCheckBox.Value = 0;
                app.CombinedhighstrainareasCheckBox.Value = 0;

            end

            if ~isempty(app.DICfilesListBox.Items)
                app.DICMenu_2.Enable = 'on';
                app.EditButton.Enable = 'on';
            else
                app.DICMenu_2.Enable = 'off';
                app.EditButton.Enable = 'off';
            end

            % list element selected in DIC Data List
            if ~isempty(app.DICfilesListBox.Value)
                app.RemoveButton.Enable = 'off';
                app.AddButton.Enable = 'on';

                dicfile_index = [];
                for i=1:length(app.DICfilesListBox.Items)
                    if any(strcmp(app.DICfilesListBox.Items{i},app.DICfilesListBox.Value))
                        dicfile_index = i;
                        break
                    end
                end
             
               
                if dicfile_index==1
                    app.DeleteButton_2.Enable = 'off';
                else
                    app.DeleteButton_2.Enable = 'on';
                end
            end

            % list element selected in Crack Detection List
            if ~isempty(app.DICfilesforcrackdetectionListBox.Value)

                app.RemoveButton.Enable = 'on';
                app.AddButton.Enable = 'off';
                app.DeleteButton_2.Enable = 'off';
            end

            % Crack Detection List
            if isempty(app.DICfilesforcrackdetectionListBox.Items)
                app.RundetectionButton.Enable = 'off';
                app.RunthresholdingButton.Enable = 'off';
            else
                app.RundetectionButton.Enable = 'on';
                app.RunthresholdingButton.Enable = 'on';
            end

            % Crack detection method
            if app.ThresholdingButton.Value
                app.GridLayoutCrackDetectionMethod.RowHeight = {'1x',0};
                app.IndividualhighstrainareasCheckBox.Visible = 'on';
                app.CombinedhighstrainareasCheckBox.Visible = 'on';
            else
                app.GridLayoutCrackDetectionMethod.RowHeight = {0,'1x'};
                app.IndividualhighstrainareasCheckBox.Visible = 'off';
                app.CombinedhighstrainareasCheckBox.Visible = 'off';
                app.IndividualhighstrainareasCheckBox.Value = 0;
                app.CombinedhighstrainareasCheckBox.Value = 0;
            end

            if ~isempty(app.ReferencedataDropDown.Items)
                app.ReferencedataDropDown.Enable = 'on';
            else
                app.ReferencedataDropDown.Enable = 'off';
            end

            if ~isempty(app.ReferencedataDropDown_2.Items)
                app.ReferencedataDropDown_2.Enable = 'on';
            else
                app.ReferencedataDropDown_2.Enable = 'off';
            end


            %% Plot UI Controls
            % HSA individual
            if ~isempty(app.DICfilesforcrackdetectionListBox.Value)
                dicfile_index = [];
                for i=1:length(app.DICfilesListBox.Items)
                    if any(strcmp(app.DICfilesListBox.Items{i},app.DICfilesforcrackdetectionListBox.Value))
                        dicfile_index = i;
                        break
                    end
                end

                if ~isempty(app.AppData.HSAs)
                    if ~isempty(app.AppData.HSAs{dicfile_index})
                        app.IndividualhighstrainareasCheckBox.Enable = 'on';
                        app.CombinedhighstrainareasCheckBox.Enable = 'on';
                    else
                        app.IndividualhighstrainareasCheckBox.Enable = 'off';
                        app.CombinedhighstrainareasCheckBox.Enable = 'off';
                        app.IndividualhighstrainareasCheckBox.Value = 0;
                        app.CombinedhighstrainareasCheckBox.Value = 0;
                    end
                end
            end

            if ~isempty(app.DICfilesListBox.Value)
                app.PrincipalstrainsCheckBox.Enable = 'on';
                app.PrincipalstrainsCheckBox_2.Enable = 'on';

                app.SigmaCheckBox.Enable = 'on';
                app.SigmaCheckBox_2.Enable = 'on';

                app.IndividualhighstrainareasCheckBox.Enable = 'off';
                app.CombinedhighstrainareasCheckBox.Enable = 'off';
                app.IndividualhighstrainareasCheckBox.Value = 0;
                app.CombinedhighstrainareasCheckBox.Value = 0;
            end

            if ~isempty(app.DICfilesforcrackdetectionListBox.Value)
                app.PrincipalstrainsCheckBox.Enable = 'on';
                app.PrincipalstrainsCheckBox_2.Enable = 'on';
                app.SigmaCheckBox.Enable = 'on';
                app.SigmaCheckBox_2.Enable = 'on';
            end

            % Crack lines
            if ~isempty(app.AppData.cracklineplotdata)
                app.CracklinesCheckBox.Enable = 'on';
                app.CracklinesCheckBox_2.Enable = 'on';
                app.CracklinesCheckBox_3.Enable = 'on';
            else
                app.CracklinesCheckBox.Enable = 'off';
                app.CracklinesCheckBox_2.Enable = 'off';
                app.CracklinesCheckBox_3.Enable = 'off';
                app.CracklinesCheckBox.Value = 0;
                app.CracklinesCheckBox_2.Value = 0;
                app.CracklinesCheckBox_3.Value = 0;
            end

            % Classification Tab
            if isempty(app.AppData.BRANCH)
                app.AddnewfamilyButton.Enable = 'off';
            else

                if ~isempty(app.AppData.BRANCH(1).orientation)
                    app.AddnewfamilyButton.Enable = 'on';
                else
                    app.AddnewfamilyButton.Enable = 'off';
                end
            end

            if isempty(app.AppData.FAMILY(1).Name)
                app.CrackfamiliesListBox.Items = {};
                app.CrackfamiliesListBox_2.Items = {};
            end



            if isempty(app.CrackfamiliesListBox.Value)
                app.RenamechangecolorButton.Enable = 'off';
                app.RenamechangecolorButton.BackgroundColor = app.DeleteButton.BackgroundColor;
                app.ModifyselectionButton.Enable = 'off';
                app.DeleteButton.Enable = 'off';
            else

                app.DeleteButton.Enable = 'on';
                if length(app.CrackfamiliesListBox.Value) ==1
                    app.ModifyselectionButton.Enable = 'on';
                    app.RenamechangecolorButton.Enable = 'on';
                else
                    app.ModifyselectionButton.Enable = 'off';
                    app.RenamechangecolorButton.Enable = 'off';
                end
            end

            % Kinematic Measuring Tab
            if ~isempty(app.AppData.BRANCH)
                if sum([app.AppData.BRANCH(:).family])>0
                    app.RuncrackkinematicmeasurementButton.Enable = 'on';
                    app.FamilycolorCheckBox.Enable = 'on';
                else
                    app.RuncrackkinematicmeasurementButton.Enable = 'off';
                    app.FamilycolorCheckBox.Enable = 'off';
                    app.FamilycolorCheckBox.Value = 0;
                end
            else
                app.RuncrackkinematicmeasurementButton.Enable = 'off';
                app.FamilycolorCheckBox.Enable = 'off';
                app.FamilycolorCheckBox.Value = 0;
            end

            if ~isempty(app.AppData.BRANCH)
                if isfield(app.AppData.BRANCH(1),'width') && sum([app.AppData.BRANCH(:).family])>0 && ~isempty(app.DICmeasuringstagesListBox_2.Value) && ~isempty(app.CrackfamiliesListBox_2.Value)
                    app.UpdateplotButton.Enable = 'on';
                    app.ResetplotButton.Enable = 'on';
                    app.SmoothingMenu.Enable = 'on';
                else
                    app.UpdateplotButton.Enable = 'off';
                    app.ResetplotButton.Enable = 'off';
                    app.SmoothingMenu.Enable = 'off';
                end
            else
                app.UpdateplotButton.Enable = 'off';
                app.ResetplotButton.Enable = 'off';
                app.SmoothingMenu.Enable = 'off';
            end

            if ~isempty(app.AppData.BRANCH)
                if ~isempty(app.LocalAppData.TabPlot(3).kinematicplot) && isfield(app.AppData.BRANCH(1),'width') && sum([app.AppData.BRANCH(:).family])>0
                    app.CrackkinematicsCheckBox.Enable = 'on';
                else
                    app.CrackkinematicsCheckBox.Enable = 'off';
                    app.CrackkinematicsCheckBox.Value = 0;
                end
            else
                app.CrackkinematicsCheckBox.Enable = 'off';
                app.CrackkinematicsCheckBox.Value = 0;
            end

            if app.ContourfillingssinglemeasuringstageButton.Value || app.ScattersinglemeasuringstageButton.Value
                app.DICmeasuringstagesListBox_2.Multiselect = 'off';
                app.CracksliponlyButton.Enable = 'off';
                if app.CracksliponlyButton.Value
                    app.CrackopeningonlyButton.Value = 1;
                end

                app.ButtonGroup_3.Visible = 'on';
                app.ReliabilityindexButton.Enable = 'on';

            else
                if app.ReliabilityindexButton.Value
                    app.CrackopeningonlyButton.Value = 1;
                end
                app.ButtonGroup_3.Visible = 'off';
                app.ReliabilityindexButton.Enable = 'off';
                app.CracksliponlyButton.Enable = 'on';
                app.DICmeasuringstagesListBox_2.Multiselect = 'on';
            end

            % original / smoothed data
            if isempty(app.AppData.BRANCH)
                app.SmoothedButton.Enable = 'off';
                app.OriginalButton.Enable = 'off';
            else
                app.OriginalButton.Enable = 'on';
                if isfield(app.AppData.BRANCH,'width_filt') || isfield(app.AppData.BRANCH,'x_filt')
                    app.SmoothedButton.Enable = 'on';
                else
                    app.SmoothedButton.Enable = 'off';
                end
            end

            % Update
            if isempty(app.LocalAppData.TabPlot(3).image)
                app.UpdateplotButton.Enable = 'off';
            else
                app.UpdateplotButton.Enable = 'on';
            end


            % coordinate system
            if app.PhysicalcoordinatesmmButton.Value
                app.UndeformedphysicalcoordinatesmmXYLabel.Text = {'Undeformed physical coordinates [mm]';'( X ↦ ; Y ↥ )'};
            else
                app.UndeformedphysicalcoordinatesmmXYLabel.Text = {'Undeformed image coordinates [px]';'( x ↦ ; y ↧ )'};
            end

        end


        function removeKinematics(app)
            if isfield(app.AppData.BRANCH,'width')
                app.AppData.BRANCH=rmfield(app.AppData.BRANCH,{'width','slip','theta_a','theta_b','referencepoints','residual_a','residual_b','reliability_index','flipped_a','flipped_b'});
            end
        end

        function removeSmoothedValues(app)
            if isfield(app.AppData.BRANCH,'width_filt')
                app.AppData.BRANCH=rmfield(app.AppData.BRANCH,{'width_filt','slip_filt'});
            end
            if isfield(app.AppData.BRANCH,'x_filt')
                app.AppData.BRANCH=rmfield(app.AppData.BRANCH,{'x_filt','y_filt','X_filt','Y_filt','Z_filt'});
            end
        end


        function dir = Ydirection(app)
            dir = -1;
        end

        function uiplot(app,tab,axes)
            reset = app.LocalAppData.TabPlot(tab).reset;
            switch tab
                case 1
                    UIAxes = app.UIAxes;
                case 2
                    UIAxes = app.UIAxes_2;
                case 3
                    UIAxes = app.UIAxes_3;
                otherwise
                    UIAxes = axes;

            end
            % plot parameters
            fac_e1 = 1/ (app.AppData.VisualizationParameters.MaxStrain/1000);
            colorHSAs = [1,1,1]*0.5;
            colorHSAcombined = [1,1,1]*0.7;

            % check if clear axes
            if reset
                cla(UIAxes,'reset')
                title(UIAxes, '')
                xlabel(UIAxes, '')
                ylabel(UIAxes, '')
                UIAxes.PlotBoxAspectRatio = [1 1 1];
                UIAxes.ClippingStyle = 'rectangle';
                UIAxes.XColor = 'none';
                UIAxes.XTick = [];
                UIAxes.YColor = 'none';
                UIAxes.YTick = [];
                UIAxes.ZColor = 'none';
                UIAxes.ZTick = [];

                hold(UIAxes,'on');

                app.LocalAppData.TabPlot(tab).cracklineplot = [];
                app.LocalAppData.TabPlot(tab).branchplot = [];
                app.LocalAppData.TabPlot(tab).kinematicplot = [];
                app.LocalAppData.TabPlot(tab).image = [];

                [~,btns] = axtoolbar(UIAxes,{'export','export','pan','zoomin','zoomout','restoreview'});
                btns(1).ButtonPushedFcn = {@restoreview,app,tab};
                btns(5).Children(1).ButtonPushedFcn = {@saveas,app,tab};
            end

            % Colormap
            if tab == 3 && app.CrackkinematicsCheckBox.Value && ...
                    (app.ContourfillingssinglemeasuringstageButton.Value || app.ScattersinglemeasuringstageButton.Value) && ...
                    (app.FullcrackdisplacementvectoropeningandslidingButton.Value || (app.CrackopeningonlyButton.Value && app.colorButton.Value))
                colormap(UIAxes,jet(100))
            else
                cmap = jet(255);
                cmap = cmap(50:end,:);
                colormap(UIAxes,cmap)
            end

            % Colorbar
            colorb = colorbar(UIAxes);
            if (app.PrincipalstrainsCheckBox.Value == 0 && app.SigmaCheckBox.Value == 0) || tab == 3
                colorb.Visible = 'off';
                app.LocalAppData.TabPlot(tab).cbar = [];
            else
                caxis(UIAxes,[0,1])
                colorb.Visible = 'on';
                colorb.Location = 'eastoutside';
                colorb.Ticks = [0,0.2,0.4,0.6,0.8,1];
                colorb.TickLabels = colorb.Ticks/fac_e1*1000;
                colorb.Box = 'off';

                if app.PrincipalstrainsCheckBox.Value
                    colorb.Label.String = '\epsilon_1 [mm/m]';
                else
                    colorb.Label.String = '\sigma [10^{-3}px]';
                end
                colorb.Label.FontSize = 10;
                colorb.Label.Color = 'k';
                colorb.Label.Position = [1.5,0.5,0];
                app.LocalAppData.TabPlot(tab).cbar = colorb;
            end


            % Axes Toolbar Callbacks
            function restoreview(~,~,app,tab)
                app.LocalAppData.TabPlot(tab).reset = 1;
                uiplot(app,tab);
            end

            function saveas(~,d,app,tab)
                selection = uiconfirm(app.ACDMUIFigure,'Saving format..','Save as..','Options',{'Export as FIG-file..','Save as (image)..','Save as (vector format)..','Cancel'},...
                    'DefaultOption',1,'CancelOption',3);
                if strcmp(selection,'Cancel')
                    return
                end

                if strcmp(selection,'Export as FIG-file..')
                    if isempty(app.LocalAppData.TabPlot(tab).cbar)
                        copyUIAxes(UIAxes);
                    else
                        copyUIAxes(UIAxes,'colorbar',app.LocalAppData.TabPlot(tab).cbar);
                    end
                    return
                end

                if strcmp(selection,'Save as (image)..')
                    matlab.graphics.internal.export.exportCallback(matlab.graphics.controls.internal.exportHelper(d.Axes))
                    return
                end
                if strcmp(selection,'Save as (vector format)..')

                    [FileName,PathName] = uiputfile('*.pdf','Export vector graphic');

                    dlg = uiprogressdlg(app.ACDMUIFigure,'Title',['Exporting plot ',FileName,' ..'],...
                        'Indeterminate','on');
                    if ~isequal(FileName,0) && ~isequal(PathName,0)
                        exportgraphics(d.Axes,fullfile(PathName,FileName),'ContentType','vector');
                    end
                    delete(dlg);
                end
            end

            % plot AOIs
            if isempty(app.LocalAppData.DICFiles)
                return
            end

            for i = 1: length(app.LocalAppData.DICFiles{1}.AOI)
                if reset
                    im{i} = imagesc(app.LocalAppData.DICCoordinates.AOI{i}.x(1,:),app.LocalAppData.DICCoordinates.AOI{i}.y(:,1),repmat((1-(app.LocalAppData.DICFiles{1}.AOI{i}.sigma>0)*0.05),[1,1,3]),'Parent',UIAxes);

                    axis(UIAxes,'equal');
                    ax = UIAxes;
                    ax.YDir = 'reverse';

                else
                    im = app.LocalAppData.TabPlot(tab).image;
                    im{i}.CData = repmat((1-(app.LocalAppData.DICFiles{1}.AOI{i}.sigma>0)*0.05),[1,1,3]);
                end
                app.LocalAppData.TabPlot(tab).image = im;
            end

            for i = 1: length(app.LocalAppData.DICFiles{1}.AOI)
                if tab == 3
                    app.LocalAppData.TabPlot(tab).image{i}.Visible = 'off';
                else
                    app.LocalAppData.TabPlot(tab).image{i}.Visible = 'on';
                end
            end

            dicfile_index = [];
            if ~isempty(app.DICfilesListBox.Value) % DIC file plot

                for i=1:length(app.DICfilesListBox.Items)
                    if any(strcmp(app.DICfilesListBox.Items{i},app.DICfilesListBox.Value))
                        dicfile_index = i;
                        break
                    end
                end
            end

            if ~isempty(app.DICfilesforcrackdetectionListBox.Value) % Crack Detection file plot

                for i=1:length(app.DICfilesListBox.Items)
                    if any(strcmp(app.DICfilesListBox.Items{i},app.DICfilesforcrackdetectionListBox.Value))
                        dicfile_index = i;
                        break
                    end
                end

            end

            % get selected crack detection file indeces
            crackdetection_index = [];
            for i=1:length(app.DICfilesforcrackdetectionListBox.Items)
                if any(strcmp(app.DICfilesforcrackdetectionListBox.Value,app.DICfilesforcrackdetectionListBox.Items{i}))
                    crackdetection_index = i;
                    break
                end
            end

            % plot e1-fields
            plote1field = false;
            if (tab == 1 || tab == 10) && app.PrincipalstrainsCheckBox.Value == 1 && ~isempty(dicfile_index) || ...
                    (tab == 2 || tab == 11) && app.PrincipalstrainsCheckBox_2.Value == 1 && ~isempty(dicfile_index)
                plote1field = true;
            end
            if plote1field
                for i = 1: length(app.LocalAppData.DICFiles{1}.AOI)
                    colorUnitMat = ind2rgb(round(app.LocalAppData.DICFiles{dicfile_index}.AOI{i}.e1*length(cmap(:,1))*fac_e1),cmap);
                    condition = repmat(app.LocalAppData.DICFiles{dicfile_index}.AOI{i}.sigma>0,[1,1,3]);
                    im{i}.CData(condition) = colorUnitMat(condition);
                end
            end

            % plot sigma-fields
            plotsigmafield = false;
            if (tab == 1 || tab == 10) && app.SigmaCheckBox.Value == 1 && ~isempty(dicfile_index) || ...
                    (tab == 2 || tab == 11) && app.SigmaCheckBox_2.Value == 1 && ~isempty(dicfile_index)
                plotsigmafield = true;
            end
            if plotsigmafield
                for i = 1: length(app.LocalAppData.DICFiles{1}.AOI)
                    colorUnitMat = ind2rgb(round(app.LocalAppData.DICFiles{dicfile_index}.AOI{i}.sigma*length(cmap(:,1))*fac_e1),cmap);
                    condition = repmat(app.LocalAppData.DICFiles{dicfile_index}.AOI{i}.sigma>0,[1,1,3]);
                    im{i}.CData(condition) = colorUnitMat(condition);
                end

            end


            if (tab == 1 || tab == 10) && ~isempty(app.AppData.HSAs) && ~isempty(dicfile_index) && app.ThresholdingButton.Value
                % plot HSA (combined)
                if ~isempty(app.AppData.HSAs{dicfile_index}) && app.CombinedhighstrainareasCheckBox.Value == 1 && ~isempty(app.DICfilesforcrackdetectionListBox.Value)
                    for i = 1: length(app.LocalAppData.DICFiles{1}.AOI)
                        colorUnitMat = ind2rgb(app.AppData.HSAcombined{i},colorHSAcombined);
                        condition = repmat(app.AppData.HSAcombined{i}>0,[1,1,3]);
                        im{i}.CData(condition) = colorUnitMat(condition);
                    end
                end

                % plot HSA (single)
                if (tab == 1 || tab == 10) && ~isempty(app.AppData.HSAs{dicfile_index}) && app.IndividualhighstrainareasCheckBox.Value == 1 && ~isempty(app.DICfilesforcrackdetectionListBox.Value)
                    for i = 1: length(app.LocalAppData.DICFiles{1}.AOI)
                        colorUnitMat = ind2rgb(app.AppData.HSAs{dicfile_index}{i},colorHSAs);
                        condition = repmat(app.AppData.HSAs{dicfile_index}{i}>0,[1,1,3]);
                        im{i}.CData(condition) = colorUnitMat(condition);
                    end
                end


            end

            % plot Crack line
            if ~isempty(app.AppData.cracklineplotdata) && reset

                x = app.AppData.cracklineplotdata.x;
                y = app.AppData.cracklineplotdata.y;

                if tab == 3
                    if app.PhysicalcoordinatesmmButton.Value
                        [x,y,~,~] = Tab1_getCrackLinePlotData(app,app.AppData.BRANCH,app.AppData.NODE,'mm',true);
                        y = Ydirection(app)*y;
                    else
                        [x,y,~,~] = Tab1_getCrackLinePlotData(app,app.AppData.BRANCH,app.AppData.NODE,'px',true);
                    end
                end
                %                 pl = line(UIAxes,x,y,'Color','k'); % do not set linewidth!! problem occured
                pl = plot(UIAxes,x,y);
                app.LocalAppData.TabPlot(tab).cracklineplot = pl;
            end
            app.LocalAppData.TabPlot(tab).cracklineplot.Color = app.AppData.VisualizationParameters.CrackLineColor;
            app.LocalAppData.TabPlot(tab).cracklineplot.LineWidth = app.AppData.VisualizationParameters.CrackLineWidth;
            if tab == 3 && ~reset
                if app.PhysicalcoordinatesmmButton.Value
                    [x,y,~,~] = Tab1_getCrackLinePlotData(app,app.AppData.BRANCH,app.AppData.NODE,'mm',true);
                    y = Ydirection(app)*y;
                else
                    [x,y,~,~] = Tab1_getCrackLinePlotData(app,app.AppData.BRANCH,app.AppData.NODE,'px',true);
                end
                app.LocalAppData.TabPlot(tab).cracklineplot.XData = x;
                app.LocalAppData.TabPlot(tab).cracklineplot.YData = y;
            end

            if (tab == 2 || tab ==3) && reset
                for i = 1:length(app.AppData.BRANCH)
                    if tab == 3
                        if app.PhysicalcoordinatesmmButton.Value
                            [x,y,~,~] = Tab1_getCrackLinePlotData(app,app.AppData.BRANCH(i),app.AppData.NODE,'mm',true);
                            y = Ydirection(app)*y;
                        else
                            [x,y,~,~] = Tab1_getCrackLinePlotData(app,app.AppData.BRANCH(i),app.AppData.NODE,'px',true);
                        end
                    else
                        [x,y,~,~] = Tab1_getCrackLinePlotData(app,app.AppData.BRANCH(i),app.AppData.NODE,'px',false);
                    end
                    app.LocalAppData.TabPlot(tab).branchplot{i} = plot(ax,x,y,'ZData',x*0+100);
                end
            end

            if tab ==3 && ~reset
                for i = 1:length(app.AppData.BRANCH)
                    if app.PhysicalcoordinatesmmButton.Value
                        [x,y,~,~] = Tab1_getCrackLinePlotData(app,app.AppData.BRANCH(i),app.AppData.NODE,'mm',true);
                        y = Ydirection(app)*y;
                    else
                        [x,y,~,~] = Tab1_getCrackLinePlotData(app,app.AppData.BRANCH(i),app.AppData.NODE,'px',true);
                    end
                    app.LocalAppData.TabPlot(tab).branchplot{i}.XData = x;
                    app.LocalAppData.TabPlot(tab).branchplot{i}.YData = y;
                end
            end

            if ~isempty(app.LocalAppData.TabPlot(tab).cracklineplot)

                if (tab == 1 || tab == 10) && app.CracklinesCheckBox.Value || ...
                        tab == 2 && app.CracklinesCheckBox_2.Value || ...
                        tab == 3 && app.CracklinesCheckBox_3.Value || ...
                        tab == 11
                    app.LocalAppData.TabPlot(tab).cracklineplot.Visible = 'on';
                else
                    app.LocalAppData.TabPlot(tab).cracklineplot.Visible = 'off';
                end
            end

            if tab == 2 || tab == 3
                if ~isempty(app.AppData.BRANCH)
                    if ~isempty(app.LocalAppData.TabPlot(tab).branchplot{1})
                        if (app.CracklinesCheckBox_2.Value && tab == 2) || (app.CracklinesCheckBox_3.Value && tab == 3)
                            for i = 1:length(app.AppData.BRANCH)
                                app.LocalAppData.TabPlot(tab).branchplot{i}.Visible = 'on';
                                if ~isempty(app.AppData.BRANCH(i).family) && (tab ==2 || (tab == 3 && app.FamilycolorCheckBox.Value))
                                    color = app.AppData.FAMILY(app.AppData.BRANCH(i).family(end)).Color;
                                    app.LocalAppData.TabPlot(tab).branchplot{i}.Color = color;
                                else
                                    app.LocalAppData.TabPlot(tab).branchplot{i}.Color = app.AppData.VisualizationParameters.CrackLineColor;
                                end
                                app.LocalAppData.TabPlot(tab).branchplot{i}.LineWidth = app.AppData.VisualizationParameters.CrackLineWidth;
                            end
                        else

                            for i = 1:length(app.AppData.BRANCH)
                                app.LocalAppData.TabPlot(tab).branchplot{i}.Visible = 'off';
                            end
                        end
                    end
                end
            end

            % Kinematic plots
            if tab == 3 && (reset || isempty(app.LocalAppData.TabPlot(3).kinematicplot))
                enableDefaultInteractivity(app.UIAxes_3)
                app.LocalAppData.TabPlot(3).kinematicplot = [];
                if ~isempty(app.AppData.BRANCH)
                    if isfield(app.AppData.BRANCH(1),'width')

                        dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Updating plot',...
                            'Indeterminate','on');

                        if app.KinematicvectorsmultiplemeasuringstagesButton.Value == 1
                            [kx,ky,hx,hy,br_no,index,ls,ori,width,slip,error] = Tab3_updatekinematicplot(app);
                            if ~isempty(hx)
                                hl = plot3(app.UIAxes_3,hx,hy,hx*0+0.1,...
                                    'Color',app.AppData.VisualizationParameters.KinVecHelpLineColor,...
                                    'LineWidth',app.AppData.VisualizationParameters.KinVecHelpLineWidth);
                                row1 = dataTipTextRow(' ',[]);
                                hl.DataTipTemplate.DataTipRows(1) = row1;
                                hl.DataTipTemplate.DataTipRows(2:end) = [];
                                hl.DataTipTemplate.Interpreter = 'none';

                                app.LocalAppData.TabPlot(3).kinematicplot{1} = hl;

                                kl = plot3(app.UIAxes_3,kx,ky,kx*0+0.2,...
                                    'Color',app.AppData.VisualizationParameters.KinVecKinLineColor,...
                                    'Linewidth',app.AppData.VisualizationParameters.KinVecKinLineWidth);
                                row1 = dataTipTextRow('Branch No.: ',br_no);
                                row2 = dataTipTextRow('Index: ',index);
                                row3 = dataTipTextRow('DIC measuring stage: ',string(ls));
                                row4 = dataTipTextRow('Crack inclination [°]: ',round(ori,3));
                                row5 = dataTipTextRow('Crack width [mm]: ',round(width,3));
                                row6 = dataTipTextRow('Crack slip [mm]: ',round(slip,3));
                                row7 = dataTipTextRow('Reliability index [mm]: ',round(error,6));
                                kl.DataTipTemplate.DataTipRows(1) = row1;
                                kl.DataTipTemplate.DataTipRows(2) = row2;
                                kl.DataTipTemplate.DataTipRows(3) = row3;
                                kl.DataTipTemplate.DataTipRows(4) = row4;
                                kl.DataTipTemplate.DataTipRows(5) = row5;
                                kl.DataTipTemplate.DataTipRows(6) = row6;
                                kl.DataTipTemplate.DataTipRows(7) = row7;
                                kl.DataTipTemplate.Interpreter = 'none';

                                app.LocalAppData.TabPlot(3).kinematicplot{2} = kl;
                            end
                        end

                        if app.ContourfillingssinglemeasuringstageButton.Value == 1
                            [cx,cy,cData]=Tab3_updatecontourplot(app);
                            if ~isempty(cx)

                                [~,n] = size(cx);
                                V = [cx',cy'];
                                F = repmat([1,2,3,4,1],n/4,1)+repmat([0:n/4-1]'.*4,1,5);

                                if app.CrackopeningonlyButton.Value && app.bwButton.Value
                                    %                                     f=fill(UIAxes,cx',cy','k');
                                    f = patch(UIAxes,'Faces',F,'Vertices',V,'FaceColor','k');
                                else
                                    %                                     f=fill(UIAxes,cx',cy',cData');
                                    f = patch(UIAxes,'Faces',F,'Vertices',V,'FaceVertexCData',cData','FaceColor','flat');
                                end

                                caxis(UIAxes,[1 100]);

                                set(f,'LineStyle','none')

                                disableDefaultInteractivity(app.UIAxes_3)
                                length(f)
                                for f_i=1:length(f)
                                    app.LocalAppData.TabPlot(3).kinematicplot{f_i} = f(f_i,1);
                                end
                            end
                        end
                        if app.ScattersinglemeasuringstageButton.Value == 1
                            [kx,ky,markersize,colour,br_no,index,ls,ori,width,slip] = Tab3_updatescatterplot(app);
                            s = scatter(UIAxes,kx,ky,((markersize./2).^2).*pi,colour,'filled');
                            row1 = dataTipTextRow('Branch No.: ',br_no);
                            row2 = dataTipTextRow('Index: ',index);
                            row3 = dataTipTextRow('DIC Measuring stage: ',string(ls));
                            row4 = dataTipTextRow('Crack Inclination [°]: ',ori);
                            row5 = dataTipTextRow('Crack Width [mm]: ',width);
                            row6 = dataTipTextRow('Crack Slip [mm]: ',slip);
                            s.DataTipTemplate.DataTipRows(1) = row1;
                            s.DataTipTemplate.DataTipRows(2) = row2;
                            s.DataTipTemplate.DataTipRows(3) = row3;
                            s.DataTipTemplate.DataTipRows(4) = row4;
                            s.DataTipTemplate.DataTipRows(5) = row5;
                            s.DataTipTemplate.DataTipRows(6) = row6;
                            s.DataTipTemplate.Interpreter = 'none';
                            app.LocalAppData.TabPlot(3).kinematicplot{1} = s;
                        end
                        drawnow;
                        figure(app.ACDMUIFigure)
                        drawnow;
                        delete(dlg);
                    end
                end
            end

            if tab == 3 && ~isempty(app.LocalAppData.TabPlot(3).kinematicplot)
                dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Updating plot',...
                    'Indeterminate','on');
                for i = 1:length(app.LocalAppData.TabPlot(3).kinematicplot)
                    if app.CrackkinematicsCheckBox.Value
                        caxis(UIAxes,[1,100])

                        app.LocalAppData.TabPlot(3).kinematicplot{i}.Visible = 'on';
                    else
                        caxis(UIAxes,[0,1])
                        app.LocalAppData.TabPlot(3).kinematicplot{i}.Visible = 'off';
                    end
                end
                if app.CrackkinematicsCheckBox.Value && (app.ContourfillingssinglemeasuringstageButton.Value || app.ScattersinglemeasuringstageButton.Value) && app.FullcrackdisplacementvectoropeningandslidingButton.Value

                    colorb = colorbar(UIAxes);
                    colorb.Location = 'eastoutside';
                    colorb.Ticks = ([0,25,50,75,100]*0.99+1);
                    colorb.TickLabels = (colorb.Ticks-1-50*0.99)/0.99/50;
                    colorb.Box = 'off';
                    colorb.Label.String = '\delta_t / \delta_n';
                    colorb.Label.FontSize = 10;
                    colorb.Label.Color = 'k';
                    colorb.Label.Position = [1.5,50*0.99+1,0];

                    app.LocalAppData.TabPlot(tab).cbar = colorb;
                elseif app.CrackkinematicsCheckBox.Value && (app.ContourfillingssinglemeasuringstageButton.Value || app.ScattersinglemeasuringstageButton.Value) && app.CrackopeningonlyButton.Value && app.colorButton.Value

                    colorb = colorbar(UIAxes);
                    colorb.Location = 'eastoutside';
                    colorb.Ticks = ([0,20,40,60,80,100]*0.99+1);
                    colorb.TickLabels = (colorb.Ticks-1)/0.99/100*app.AppData.VisualizationParameters.MaxCrackWidth;
                    colorb.Box = 'off';
                    colorb.Label.String = '\delta_n [mm]';
                    colorb.Label.FontSize = 10;
                    colorb.Label.Color = 'k';
                    colorb.Label.Position = [1.5,50*0.99+1,0];

                    app.LocalAppData.TabPlot(tab).cbar = colorb;
                elseif app.CrackkinematicsCheckBox.Value && (app.ContourfillingssinglemeasuringstageButton.Value || app.ScattersinglemeasuringstageButton.Value) && app.ReliabilityindexButton.Value

                    colorb = colorbar(UIAxes);
                    colorb.Location = 'eastoutside';
                    colorb.Ticks = ([0,20,40,60,80,100]*0.99+1);
                    colorb.TickLabels = (colorb.Ticks-1)/0.99/100*app.AppData.VisualizationParameters.MaxError;
                    colorb.Box = 'off';
                    colorb.Label.String = 'error [mm]';
                    colorb.Label.FontSize = 10;
                    colorb.Label.Color = 'k';
                    colorb.Label.Position = [1.5,50*0.99+1,0];

                    app.LocalAppData.TabPlot(tab).cbar = colorb;
                else
                    colorbar(UIAxes,'off')

                    app.LocalAppData.TabPlot(tab).cbar = [];
                end
                drawnow;
                figure(app.ACDMUIFigure)
                drawnow;
                delete(dlg);
            end
            app.LocalAppData.TabPlot(tab).reset = 0;

        end
        
        

        function Menu3_linkCrackBranches(app)

            figure(app.ACDMUIFigure)

            % initiate interactive plot
            clear tempf;
            tempf = figure(1);
            clf
            tempf.Position = app.UIAxes_2.Position;

            tempf.Position(1) = app.ACDMUIFigure.Position(1)+app.ACDMUIFigure.Position(3)/2-app.UIAxes_2.Position(3)/2;
            tempf.Position(2) = app.ACDMUIFigure.Position(2)+app.ACDMUIFigure.Position(4)/2-app.UIAxes_2.Position(4)/2;

            %             tempf.Position(3) = tempf.Position(3)/2;
            initiatePlot()

            function initiatePlot(~,~)
                ax = axes('Parent',tempf);
                cla(ax);

                app.LocalAppData.TabPlot(11).reset = 1;
                uiplot(app,11,ax)

                tempf.Name = 'Crack Branch Linkage Tool';
                title(ax,'click on crack to select / deselect      -     right-click to confirm linkage','Color', 'k','FontWeight',"normal",'FontAngle',"italic");

                set(tempf, 'MenuBar', 'none');
                set(tempf, 'ToolBar', 'none');
                axtoolbar(ax,{'export','pan','zoomin','zoomout','restoreview'});

                if app.PrincipalstrainsCheckBox_2.Value || app.SigmaCheckBox_2.Value
                    xlimits = xlim(ax);
                    ylimits = ylim(ax);
                    x = [xlimits(1),xlimits(2),xlimits(2),xlimits(1)];
                    y = [ylimits(1),ylimits(1),ylimits(2),ylimits(2)];
                    pat=patch(ax,x,y,'w','ZData',x*0+5);
                    set(pat,'FaceAlpha',0.8);
                    set(pat,'EdgeColor','none')
                end

                % Background
                for i = 1:length(ax.Children)
                    background(i)=ax.Children(i);
                end

                % Button Down Fcn of Crack Branches
                for i = 1:length(app.AppData.BRANCH) % current crack lines
                    [x,y,~,~] = Tab1_getCrackLinePlotData(app,app.AppData.BRANCH(i),app.AppData.NODE,'px',false);
                    p{i}= plot(ax,x,y,'ZData',x*0+100);
                    p{i}.Color = 'k';
                    p{i}.ButtonDownFcn = {@LineSelectionFcn,app,i};
                end

                % Context Menu of Background
                cm = uicontextmenu(tempf);
                m1 = uimenu(cm,'Text','Accept crack linkage');
                m1.MenuSelectedFcn = {@acceptlink,app};

                tempf.ContextMenu = cm;

                for i = 1:length(background)
                    background(i).ContextMenu = cm;
                end

                BRANCHstolink = [];
                allowedBRANCH = 1:length(app.AppData.BRANCH);

                BRANCHtolink_sorted = [];
                localnodes_sorted = [];
                endnotes = [];

                function LineSelectionFcn(~,~,app,i)

                    if ~ismember(i,[allowedBRANCH,BRANCHstolink])
                        return
                    end

                    if ismember(i,BRANCHstolink)
                        ind = find(BRANCHstolink==i);
                        if ind < length(BRANCHstolink)/2
                            BRANCHstolink(1:ind) = [];
                        else
                            BRANCHstolink(ind:end) = [];
                        end
                    else
                        BRANCHstolink = [BRANCHstolink,i];
                    end

                    if isempty(BRANCHstolink)
                        allowedBRANCH = 1:length(app.AppData.BRANCH);
                    else

                        BRANCHstolink = sort(BRANCHstolink);


                        NODE = app.AppData.NODE;
                        BRANCH = app.AppData.BRANCH;

                        % get linking nodes
                        localnodes = [];
                        for j = 1:length(BRANCHstolink)
                            node = BRANCH(BRANCHstolink(j)).nodes;
                            for n=1:length(node)
                                if sum(ismember(NODE(node(n)).branches,BRANCHstolink))==2
                                    localnodes = [localnodes,node(n)];
                                end
                            end
                        end
                        localnodes = unique(localnodes);

                        % set starting branch
                        start = BRANCHstolink(1);
                        for j = 1:length(BRANCHstolink)
                            node = BRANCH(BRANCHstolink(j)).nodes;
                            if sum(ismember(node,localnodes)) == 1
                                start = BRANCHstolink(j);
                                break
                            end
                        end

                        BRANCHtolink_sorted = start;
                        localnodes_sorted = [];


                        % add iteratively successive branches
                        for j = 2:length(BRANCHstolink)
                            % get next node
                            next_node = localnodes(find(ismember(localnodes,BRANCH(BRANCHtolink_sorted(end)).nodes)));
                            localnodes = localnodes(localnodes ~= next_node);

                            % get next branch
                            nextbranches = NODE(next_node).branches;
                            nextbranches = nextbranches(ismember(nextbranches,BRANCHstolink));
                            nextbranch = nextbranches(~ismember(nextbranches,BRANCHtolink_sorted));


                            BRANCHtolink_sorted = [BRANCHtolink_sorted,nextbranch];
                            localnodes_sorted = [localnodes_sorted, next_node];
                        end

                        % update BRANCH and NODE
                        newbranchindex = BRANCHtolink_sorted(1);

                        nodes1 = app.AppData.BRANCH(newbranchindex).nodes;
                        nodes1 = nodes1(~ismember(nodes1,localnodes_sorted));

                        nodes2 = app.AppData.BRANCH(BRANCHtolink_sorted(end)).nodes;
                        nodes2 = nodes2(~ismember(nodes2,localnodes_sorted));

                        endnotes = unique([nodes1,nodes2]);

                        allnodes = [localnodes_sorted,endnotes];
                        allnodes = unique(allnodes);

                        BRANCHstolink = BRANCHtolink_sorted;


                        allowedBRANCH = [];
                        if ~isempty(endnotes)
                            for o= 1:length(endnotes)
                                allowedBRANCH = [allowedBRANCH,app.AppData.NODE(endnotes(o)).branches];
                            end
                        end


                        allowedBRANCH_red = [];
                        for n=1:length(allowedBRANCH)
                            if length(find(allowedBRANCH == allowedBRANCH(n))) == 1 && sum(ismember(BRANCH(allowedBRANCH(n)).nodes,allnodes))<2
                                allowedBRANCH_red = [allowedBRANCH_red , allowedBRANCH(n)];
                            end
                        end

                        allowedBRANCH = allowedBRANCH_red;

                    end

                    for j=1:length(p)
                        if ismember(j,BRANCHstolink)
                            p{j}.Color ='r';
                        elseif ismember(j,allowedBRANCH)
                            p{j}.Color ='k';
                        else
                            p{j}.Color = [1,1,1]*0.7;
                        end
                    end
                end

                function acceptlink(~,~,app)
                    if length(BRANCHstolink)<2
                        return
                    end
                    removeKinematics(app)
                    removeSmoothedValues(app)

                    NODE = app.AppData.NODE;
                    BRANCH = app.AppData.BRANCH;

                    % link BRANCHes
                    newBRANCH = struct(...
                        'no',[],...
                        'x',[],...
                        'y',[],...
                        'X',[],...
                        'Y',[],...
                        'Z',[],...
                        'aoi',[],...
                        'v_index',[],...
                        'h_index',[],...
                        'length',[],...
                        'Length',[],...
                        'orientation',[],...
                        'Orientation',[],...
                        'orientation_plot',[],...
                        'Orientation_plot',[],...
                        'family',[],...
                        'nodes',[]...
                        );

                    for j = 1:length(BRANCHtolink_sorted)
                        flip = 0;

                        if j < length(BRANCHtolink_sorted)
                            d0 = diff([[app.AppData.BRANCH(BRANCHtolink_sorted(j)).x(1);app.AppData.NODE(localnodes_sorted(j)).x],[app.AppData.BRANCH(BRANCHtolink_sorted(j)).y(1);app.AppData.NODE(localnodes_sorted(j)).y]]);
                            l0 = sum(sqrt(sum(d0.*d0,2)));

                            d1 = diff([[app.AppData.BRANCH(BRANCHtolink_sorted(j)).x(end);app.AppData.NODE(localnodes_sorted(j)).x],[app.AppData.BRANCH(BRANCHtolink_sorted(j)).y(end);app.AppData.NODE(localnodes_sorted(j)).y]]);
                            l1 = sum(sqrt(sum(d1.*d1,2)));
                        else
                            d0 = diff([[app.AppData.BRANCH(BRANCHtolink_sorted(j)).x(end);app.AppData.NODE(localnodes_sorted(j-1)).x],[app.AppData.BRANCH(BRANCHtolink_sorted(j)).y(end);app.AppData.NODE(localnodes_sorted(j-1)).y]]);
                            l0 = sum(sqrt(sum(d0.*d0,2)));

                            d1 = diff([[app.AppData.BRANCH(BRANCHtolink_sorted(j)).x(1);app.AppData.NODE(localnodes_sorted(j-1)).x],[app.AppData.BRANCH(BRANCHtolink_sorted(j)).y(1);app.AppData.NODE(localnodes_sorted(j-1)).y]]);
                            l1 = sum(sqrt(sum(d1.*d1,2)));
                        end

                        if l1 > l0
                            flip = 1;
                        end

                        if ~flip
                            newBRANCH.x = [newBRANCH.x;app.AppData.BRANCH(BRANCHtolink_sorted(j)).x];
                            newBRANCH.y = [newBRANCH.y;app.AppData.BRANCH(BRANCHtolink_sorted(j)).y];
                            newBRANCH.X = [newBRANCH.X;app.AppData.BRANCH(BRANCHtolink_sorted(j)).X];
                            newBRANCH.Y = [newBRANCH.Y;app.AppData.BRANCH(BRANCHtolink_sorted(j)).Y];
                            newBRANCH.Z = [newBRANCH.Z;app.AppData.BRANCH(BRANCHtolink_sorted(j)).Z];

                            newBRANCH.v_index = [newBRANCH.v_index;app.AppData.BRANCH(BRANCHtolink_sorted(j)).v_index];
                            newBRANCH.h_index = [newBRANCH.h_index;app.AppData.BRANCH(BRANCHtolink_sorted(j)).h_index];
                        else
                            newBRANCH.x = [newBRANCH.x;flipud(app.AppData.BRANCH(BRANCHtolink_sorted(j)).x)];
                            newBRANCH.y = [newBRANCH.y;flipud(app.AppData.BRANCH(BRANCHtolink_sorted(j)).y)];
                            newBRANCH.X = [newBRANCH.X;flipud(app.AppData.BRANCH(BRANCHtolink_sorted(j)).X)];
                            newBRANCH.Y = [newBRANCH.Y;flipud(app.AppData.BRANCH(BRANCHtolink_sorted(j)).Y)];
                            newBRANCH.Z = [newBRANCH.Z;flipud(app.AppData.BRANCH(BRANCHtolink_sorted(j)).Z)];

                            newBRANCH.v_index = [newBRANCH.v_index;flipud(app.AppData.BRANCH(BRANCHtolink_sorted(j)).v_index)];
                            newBRANCH.h_index = [newBRANCH.h_index;flipud(app.AppData.BRANCH(BRANCHtolink_sorted(j)).h_index)];

                        end

                        if j < length(BRANCHtolink_sorted)
                            newBRANCH.x = [newBRANCH.x;app.AppData.NODE(localnodes_sorted(j)).x];
                            newBRANCH.y = [newBRANCH.y;app.AppData.NODE(localnodes_sorted(j)).y];
                            newBRANCH.X = [newBRANCH.X;app.AppData.NODE(localnodes_sorted(j)).X];
                            newBRANCH.Y = [newBRANCH.Y;app.AppData.NODE(localnodes_sorted(j)).Y];
                            newBRANCH.Z = [newBRANCH.Z;app.AppData.NODE(localnodes_sorted(j)).Z];

                            newBRANCH.v_index = [newBRANCH.v_index;app.AppData.NODE(localnodes_sorted(j)).v_index];
                            newBRANCH.h_index = [newBRANCH.h_index;app.AppData.NODE(localnodes_sorted(j)).h_index];
                        end
                    end


                    % update BRANCH and NODE
                    newbranchindex = BRANCHtolink_sorted(1);
                    newBRANCH.aoi = app.AppData.BRANCH(newbranchindex).aoi;

                    newBRANCH.nodes = endnotes;


                    % clean NODE.branches
                    for k=1:length(app.AppData.NODE)
                        NODE(k).branches = [];
                    end

                    % readress Nodes
                    count_br = 0;
                    for j = 1:length(app.AppData.BRANCH)
                        if j == newbranchindex
                            count_br = count_br + 1;
                            BRANCH(count_br) = newBRANCH;
                            BRANCH(count_br).no = count_br;
                            newbracnhindex_afterreaddressing = count_br;
                        elseif ~ismember(j, BRANCHtolink_sorted)
                            count_br = count_br + 1;
                            BRANCH(count_br) = app.AppData.BRANCH(j);
                            BRANCH(count_br).no = count_br;
                        end


                        for k=1:length(app.AppData.NODE)
                            if ismember(j,app.AppData.NODE(k).branches)
                                if ~ismember(j,BRANCHtolink_sorted)
                                    NODE(k).branches = [NODE(k).branches,count_br];
                                end
                            end
                        end
                    end
                    for n =1:length(newBRANCH.nodes)
                        NODE(newBRANCH.nodes(n)).branches = sort(unique([NODE(newBRANCH.nodes(n)).branches,newbracnhindex_afterreaddressing]));
                    end

                    BRANCH(count_br+1:end)=[];

                    app.AppData.BRANCH = BRANCH;
                    app.AppData.NODE = NODE;

                    assignin('base','BRANCH',BRANCH)
                    assignin('base','NODE',NODE)

                    % restore selection
                    BRANCHstolink = [];
                    allowedBRANCH = 1:length(app.AppData.BRANCH);
                    for j=1:length(p)
                        if ismember(j,BRANCHstolink)
                            p{j}.Color ='r';
                        elseif ismember(j,allowedBRANCH)
                            p{j}.Color ='k';
                        else
                            p{j}.Color = [1,1,1]*0.7;
                        end
                    end


                    %% check : to delete
                    check = 1;
                    for j = 1:length(app.AppData.BRANCH)
                        for k=1:length(app.AppData.BRANCH(j).nodes)
                            if ~ismember(j,app.AppData.NODE(app.AppData.BRANCH(j).nodes(k)).branches)
                                check = 0;
                                break
                            end
                        end
                    end

                    for j = 1:length(app.AppData.NODE)
                        for k=1:length(app.AppData.NODE(j).branches)
                            if ~ismember(j,app.AppData.BRANCH(app.AppData.NODE(j).branches(k)).nodes)
                                check = 0;
                                break
                            end
                        end
                    end

                    initiatePlot();
                end

                %%
                waitfor(tempf)
            end
        end



        function Menu4_setDICParameters(app,values)

            app.SubsetEditField.Value = values{1};
            app.FilterEditField.Value = values{2};

            app.AppData.DICProperties.Subset = values{1};
            app.AppData.DICProperties.SelectedFilter = values{2};
            app.AppData.DICProperties.Filters = values{3};
            app.AppData.DICProperties.SelectedAOIs = values{4};
            app.AppData.DICProperties.AOIs = values{5};

            Menu4_restoreKMParameters(app)
        end


        function Menu4_restoreKMParameters(app)
            app.AppData.KMProperties.d1 = sqrt(2) * app.AppData.DICProperties.Subset;
            app.AppData.KMProperties.d2 = app.AppData.KMProperties.d1 / 2;
            app.AppData.KMProperties.reliabilityThreshold = 0.01;
        end
        
        
        function [valid,fileNames] = Tab1_checkDICfiles(app,fileNames,path,datatype)
            
            valid = false;
          
          
            % check amount and location of selected DIC files
            if isempty(app.AppData.DICDataFileNames)
                fileNames = sort(string(fileNames));
                if length(fileNames)<2
                    uiconfirm(app.ACDMUIFigure,'At least 2 files are required','Error',...
                        'Options',{'Ok'},...
                        "Icon",'error',...
                        'DefaultOption',1,'CancelOption',1);
                    return
                end
             
            else
                if ~strcmp(path, app.AppData.DICDataFolderPath)
                    uiconfirm(app.ACDMUIFigure,['Only files from ',app.AppData.DICDataFolderPath,' can be loaded'],'Error',...
                        'Options',{'Ok'},...
                        "Icon",'error',...
                        'DefaultOption',1,'CancelOption',1);
                    return
                end
                fileNames = sort(unique(string([fileNames,app.AppData.DICDataFileNames])));
            end
            
            
            % check content and consistency of DIC files
         
            DICFile1 = load([path,fileNames{1}]);

            % check if all required fields exist in first file
            switch datatype
                case 'VIC2D'
                    check = isfield(DICFile1, {'x','y','u','v','x_c','y_c','u_c','v_c','e1','gamma','sigma'});
                    
                case 'VIC3D'
                    check = isfield(DICFile1, {'x','y','u','v','X','Y','Z','U','V','W','e1','gamma','sigma'});
            end

            if sum(check)<length(check)
                switch datatype
                    case 'VIC2D'
                        waitfor(errordlg({'File error!','','Input data must contain at least the following fiels: x, y, u, v, x_c, y_c, u_c, v_c, e1, gamma, sigma'},'File Error'));
                    case 'VIC3D'
                        waitfor(errordlg({'File error!','','Input data must contain at least the following fiels: x, y, u, v, X, Y, Z, U, V, W, e1, gamma, sigma'},'File Error'));
                end
         
                return
            end

            % check file consistency in all other files
            listOfVariablesFile1 = who('-file',[path,fileNames{1}]);
            for i = 2:length(fileNames)
                if ~isequaln(who('-file',[path,fileNames{i}]),listOfVariablesFile1)
                    waitfor(errordlg({'File error!','','Input data are not consistent'},'File Error'));
                    return
                end
            end

            switch datatype
                case 'VIC2D'
                    if ~Tab1_isvalidCoordinates(app,DICFile1.x_c,DICFile1.y_c,DICFile1.sigma)
                        waitfor(errordlg({'File error!','','DIC Coordinates X and Y must contain positive orientation (e.g X-axes pointing to the right, Y-axes pointing up)'},'File Error'));
                        return
                    end
                case 'VIC3D'
                    if ~Tab1_isvalidCoordinates(app,DICFile1.X,DICFile1.Y,DICFile1.sigma)
                        waitfor(errordlg({'File error!','','DIC Coordinates X and Y must contain positive orientation (e.g X-axes pointing to the right, Y-axes pointing up)'},'File Error'));
                        return
                    end
            end


            switch datatype
                case 'VIC2D'
                    if isfield(DICFile1, {'sigma_0'})
                        waitfor(errordlg({'File error!','','The current version only supports one AOI for VIC 2D data'},'File Error'));
                        return
                    end
            end
            
            
            valid = true;
            
        end
        

        function completed = Tab1_loadDICfiles(app,fileNames,path,datatype)
            
            completed = false;

            DICFile1 = load([path,fileNames{1}]);
            
            DICPropertiesOld = app.AppData.DICProperties;

            switch datatype
                case 'VIC2D'
                    DICFile1.X = DICFile1.x_c;
                    DICFile1.Y = DICFile1.y_c;
                    DICFile1.Z = DICFile1.y_c.*0;
                    DICFile1.U = DICFile1.u_c;
                    DICFile1.V = DICFile1.v_c;
                    DICFile1.W = DICFile1.v_c.*0;
                    DICFile1 = rmfield(DICFile1,{'x_c','y_c','u_c','v_c'});
            end

            % Assign DIC step size
            step = DICFile1.x(1,2)-DICFile1.x(1,1);
            app.AppData.DICProperties.Step = step;

            % DIC properties dialog (only if not are already assigned)
            if isempty(app.AppData.DICProperties.Subset)
                dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Updating DIC parameters',...
                    'Indeterminate','on');
                               
                app.DICDialog = DICParameters(app,DICFile1,fileNames{1});
                uiwait(app.DICDialog.DICParametersUIFigure)
                close(dlg)

                if isempty(app.AppData.DICProperties.Subset)
                    app.AppData.DICProperties = DICPropertiesOld;
                    app.SubsetEditField.Value = 0;
                    app.StepEditField.Value = 0;
                    app.FilterEditField.Value = '';
                    setInteractivities(app);
                    return
                end
            end


            % get e1 fields
            filter = str2double(char(app.AppData.DICProperties.SelectedFilter(8:end)));
            names=fieldnames(DICFile1);
            count=0;
            if filter == 1
                for i=1:length(names)
                    if strfind(names{i},'e1')==1
                        count=count+1;
                        all_e1_fields{count}=names{i};
                    end
                end

                for i=2:length(app.AppData.DICProperties.Filters)
                    for j=1:length(all_e1_fields)
                        if strfind(all_e1_fields{j},['e1_',num2str(i-1)])==1
                            all_e1_fields{j}=[];
                        end
                    end
                end
                e1_fields =  all_e1_fields(~cellfun('isempty', all_e1_fields));
            else
                for i=1:length(names)
                    if strfind(names{i},['e1_',num2str(filter-1)])==1
                        count=count+1;
                        e1_fields{count}=names{i};
                    end
                end
            end

            % Load DIC data files
            tic
            seconds = 0;

            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Loading files ...',...
                'Message','Loading files',"Cancelable",'on');

            DICFiles = [];
            for i = 1 : length(fileNames)
                if dlg.CancelRequested
        
                    app.AppData.DICProperties = DICPropertiesOld;
                    if isempty(app.AppData.DICProperties.Subset)
                        app.SubsetEditField.Value = 0;
                        app.StepEditField.Value = 0;
                        app.FilterEditField.Value = '';
                    else
                        app.SubsetEditField.Value = app.AppData.DICProperties.Subset;
                        app.StepEditField.Value = app.AppData.DICProperties.Step;
                        app.FilterEditField.Value = app.AppData.DICProperties.SelectedFilter;
                    end
                    setInteractivities(app);
                    return
                end
                count=0;
                % loop over all AOIs
                for j = 1 : length(e1_fields)
                    if any(strcmp(app.AppData.DICProperties.SelectedAOIs,app.AppData.DICProperties.AOIs{j}))
                        count=count+1;


                        temp = load([path,fileNames{i}],e1_fields{j},['gamma',char(e1_fields{j}(3:end))]);


                        DICFiles{i}.AOI{count}.e1=temp.(e1_fields{j});
                        DICFiles{i}.AOI{count}.gamma=temp.(['gamma',char(e1_fields{j}(3:end))]);

                        if j==1
                            switch datatype
                                case 'VIC2D'
                                    temp = load([path,fileNames{i}],'u','v','sigma','u_c','v_c');
                                    temp.U = temp.u_c;
                                    temp.V = temp.v_c;
                                    temp.W = temp.v_c.*0;
                                    temp = rmfield(temp,{'u_c','v_c'});
                                case 'VIC3D'
                                    temp = load([path,fileNames{i}],'u','v','sigma','U','V','W');
                            end


                            temp.U(temp.sigma==-1) = nan;
                            temp.V(temp.sigma==-1) = nan;
                            temp.W(temp.sigma==-1) = nan;
                            DICFiles{i}.AOI{count}.u=temp.u;
                            DICFiles{i}.AOI{count}.v=temp.v;
                            DICFiles{i}.AOI{count}.sigma=temp.sigma;
                            DICFiles{i}.AOI{count}.U=temp.U;
                            DICFiles{i}.AOI{count}.V=temp.V;
                            DICFiles{i}.AOI{count}.W=temp.W;

                            if i==1
                                switch datatype
                                    case 'VIC2D'
                                        temp = load([path,fileNames{i}],'x','y','sigma','x_c','y_c');
                                        temp.X = temp.x_c;
                                        temp.Y = temp.y_c;
                                        temp.Z = temp.y_c.*0;
                                        temp = rmfield(temp,{'x_c','y_c'});
                                    case 'VIC3D'
                                        temp = load([path,fileNames{i}],'x','y','sigma','X','Y','Z');
                                end


                                temp.X(temp.sigma==-1) = nan;
                                temp.Y(temp.sigma==-1) = nan;
                                temp.Z(temp.sigma==-1) = nan;
                                DICCoordinates.AOI{count}.x = temp.x;
                                DICCoordinates.AOI{count}.y = temp.y;
                                DICCoordinates.AOI{count}.sigma = temp.sigma;
                                DICCoordinates.AOI{count}.X = temp.X;
                                DICCoordinates.AOI{count}.Y = temp.Y;
                                DICCoordinates.AOI{count}.Z = temp.Z;
                            end
                        else
                            switch datatype
                                case 'VIC2D'
                                    temp = load([path,fileNames{i}],['u_',num2str(j-2)],['v_',num2str(j-2)],['sigma_',num2str(j-2)],['u_c_',num2str(j-2)],['v_c_',num2str(j-2)]);

                                    temp.(['U_',num2str(j-2)]) = temp.(['u_c_',num2str(j-2)]);
                                    temp.(['V_',num2str(j-2)]) = temp.(['v_c_',num2str(j-2)]);
                                    temp.(['W_',num2str(j-2)]) = temp.(['v_c_',num2str(j-2)]).*0;
                                    temp = rmfield(temp,{['u_c_',num2str(j-2)],['v_c_',num2str(j-2)]});
                                case 'VIC3D'
                                    temp = load([path,fileNames{i}],['u_',num2str(j-2)],['v_',num2str(j-2)],['sigma_',num2str(j-2)],['U_',num2str(j-2)],['V_',num2str(j-2)],['W_',num2str(j-2)]);
                            end

                            temp.(['U_',num2str(j-2)])(temp.(['sigma_',num2str(j-2)])==-1) = nan;
                            temp.(['V_',num2str(j-2)])(temp.(['sigma_',num2str(j-2)])==-1) = nan;
                            temp.(['W_',num2str(j-2)])(temp.(['sigma_',num2str(j-2)])==-1) = nan;

                            DICFiles{i}.AOI{count}.u=temp.(['u_',num2str(j-2)]);
                            DICFiles{i}.AOI{count}.v=temp.(['v_',num2str(j-2)]);
                            DICFiles{i}.AOI{count}.sigma=temp.(['sigma_',num2str(j-2)]);
                            DICFiles{i}.AOI{count}.U=temp.(['U_',num2str(j-2)]);
                            DICFiles{i}.AOI{count}.V=temp.(['V_',num2str(j-2)]);
                            DICFiles{i}.AOI{count}.W=temp.(['W_',num2str(j-2)]);

                            if i==1
                                switch datatype
                                    case 'VIC2D'
                                        temp = load([path,fileNames{i}],['x_',num2str(j-2)],['y_',num2str(j-2)],['sigma_',num2str(j-2)],['x_c_',num2str(j-2)],['y_c_',num2str(j-2)]);

                                        temp.(['X_',num2str(j-2)]) = temp.(['x_c_',num2str(j-2)]);
                                        temp.(['Y_',num2str(j-2)]) = temp.(['y_c_',num2str(j-2)]);
                                        temp.(['Z_',num2str(j-2)]) = temp.(['y_c_',num2str(j-2)]).*0;
                                        temp = rmfield(temp,{['x_c_',num2str(j-2)],['y_c_',num2str(j-2)]});
                                    case 'VIC3D'
                                        temp = load([path,fileNames{i}],['x_',num2str(j-2)],['y_',num2str(j-2)],['sigma_',num2str(j-2)],['X_',num2str(j-2)],['Y_',num2str(j-2)],['Z_',num2str(j-2)]);
                                end

                                temp = load([path,fileNames{i}],['x_',num2str(j-2)],['y_',num2str(j-2)],['sigma_',num2str(j-2)],['X_',num2str(j-2)],['Y_',num2str(j-2)],['Z_',num2str(j-2)]);
                                temp.(['X_',num2str(j-2)])(temp.(['sigma_',num2str(j-2)])==-1) = nan;
                                temp.(['Y_',num2str(j-2)])(temp.(['sigma_',num2str(j-2)])==-1) = nan;
                                temp.(['Z_',num2str(j-2)])(temp.(['sigma_',num2str(j-2)])==1) = nan;

                                DICCoordinates.AOI{count}.x = temp.(['x_',num2str(j-2)]);
                                DICCoordinates.AOI{count}.y = temp.(['y_',num2str(j-2)]);
                                DICCoordinates.AOI{count}.sigma =temp.(['sigma_',num2str(j-2)]);
                                DICCoordinates.AOI{count}.X = temp.(['X_',num2str(j-2)]);
                                DICCoordinates.AOI{count}.Y = temp.(['Y_',num2str(j-2)]);
                                DICCoordinates.AOI{count}.Z = temp.(['Z_',num2str(j-2)]);
                            end
                        end
                    end

                end

                dlg_value = min(i / length(fileNames),1);

                if abs(seconds-toc)>0.1

                    dlg.Value = dlg_value;
                    seconds = toc;

                    minutes_text = floor(seconds/dlg_value*(1-dlg_value)/60);
                    seconds_text = floor(seconds/dlg_value*(1-dlg_value)) - minutes_text*60;
                    text = [num2str(minutes_text,'%.0f'),' minutes ',num2str(seconds_text,'%.0f'),' seconds'];
                    if minutes_text < 1
                        text = [num2str(seconds_text,'%.0f'),' seconds'];
                    end
                    dlg.Message = {['Estimated remaining time: ',text]};
                end
            end
            
            % assign appdata
            app.AppData.DataType = datatype;
            app.AppData.DICDataFolderPath = path;
            app.AppData.DICDataFileNames = fileNames;
            
            
            app.LocalAppData.DICFile1 = DICFile1;
            app.LocalAppData.DICFiles = DICFiles;
            app.LocalAppData.DICCoordinates = DICCoordinates;
            
            % Assign DIC step size
            app.StepEditField.Value = step;

            
            
            
            

%             app.DICdatapathEditField.Value = app.AppData.DICDataFolderPath;

%             app.DICfilesListBox.Items = app.AppData.DICDataFileNames;
%             app.DICfilesListBox.Value = app.DICfilesListBox.Items{end};
% 
% %             app.DICmeasuringstagesListBox_2.Items = app.AppData.DICDataFileNames;
% %             app.DICmeasuringstagesListBox_2.ItemsData = 1:numel(app.AppData.DICDataFileNames);
% %             app.DICfilesforcrackdetectionListBox.Items = {};
% 
%             app.ReferencedataDropDown.Items = app.AppData.DICDataFileNames;
%             app.ReferencedataDropDown_2.Items = app.AppData.DICDataFileNames;
% 
%             app.LocalAppData.TabPlot(1).reset = 1;
%             app.LocalAppData.TabPlot(2).reset = 1;
%             app.LocalAppData.TabPlot(3).reset = 1;

%             app.PrincipalstrainsCheckBox.Value = 1;
%             app.PrincipalstrainsCheckBox_2.Value = 1;
% 
%             app.SigmaCheckBox.Value = 0;
%             app.SigmaCheckBox_2.Value = 0;
            % plot Tab1
            uiplot(app,1);

            close(dlg);
            
            
            completed = true;

        end

        function varargout = Tab1_isvalidCoordinates(app,X,Y,sigma)
            YY = Y;
            YY(sigma == -1) = nan;
            down = YY(2:end,:)-YY(1:end-1,:);
            right = YY(:,2:end)-YY(:,1:end-1);

            downweigth = nansum(down(:));
            rightweigth = nansum(right(:));

            ydir = atan2d(-downweigth,rightweigth);
            if ydir < 0
                ydir = ydir+360;
            end

            XX = X;
            XX(sigma == -1) = nan;
            down = XX(2:end,:)-XX(1:end-1,:);
            right = XX(:,2:end)-XX(:,1:end-1);

            downweigth = nansum(down(:));
            rightweigth = nansum(right(:));

            xdir = atan2d(-downweigth,rightweigth);
            if xdir < 0
                xdir = xdir+360;
            end
            diff =  angdiff(xdir/180*pi,ydir/180*pi)*180/pi;

            valid = (diff>0 && diff<180);

            switch nargout
                case 1
                    varargout{1} = valid;
                case 2
                    varargout{1} = xdir;
                    varargout{2} = ydir;
            end
        end

        function Tab1_setHSAs(app)
            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Please Wait',...
                'Message','Analyse High Strain Areas',"Cancelable",'on');
            % find refernece error dic file
            if app.ErrorsashighstrainsCheckBox.Value == 1
                app.AppData.ErrorAsHSAFileName = app.ReferencedataDropDown.Value;
                referncevalue=[];
                for i=1:length(app.DICfilesListBox.Items)
                    if strcmp(app.DICfilesListBox.Items{i},app.ReferencedataDropDown.Value)
                        referncevalue = i;
                        break
                    end
                end
            else
                app.AppData.ErrorAsHSAFileName = '';
            end
            tempHSAs=cell(0);
            app.AppData.HSAs=cell(0);

            for i=1:length(app.DICfilesListBox.Items) % (i = measuring stage

                if dlg.CancelRequested
                    return
                end
                if any(strcmp(app.DICfilesforcrackdetectionListBox.Items,app.DICfilesListBox.Items{i}))
                    for j=1:length(app.LocalAppData.DICFiles{1}.AOI) % j = AOI)

                        tempHSAs{i}{j}=app.LocalAppData.DICFiles{i}.AOI{j}.e1>app.HighstrainthresholdmmmEditField.Value/1000;

                        if app.ErrorsashighstrainsCheckBox.Value == 1
                            tempHSAs{i}{j}=tempHSAs{i}{j}+(app.LocalAppData.DICFiles{i}.AOI{j}.sigma==-1);
                            tempHSAs{i}{j}=(tempHSAs{i}{j}>=1);
                            tempHSAs{i}{j}(app.LocalAppData.DICFiles{referncevalue}.AOI{j}.sigma==-1)=0;
                        end
                    end
                else
                    tempHSAs{i}=[];

                end
                dlg.Value = i / length(app.DICfilesListBox.Items);
            end
            close(dlg)

            app.AppData.HSAs=tempHSAs;


            % set combined HSA
            for i=1:length(app.LocalAppData.DICFiles{1}.AOI) % loop over all AOIs
                app.AppData.HSAcombined{i}=0;
                for j=1:length(app.AppData.HSAs) % loop over oll HSA files
                    if ~isempty(app.AppData.HSAs{j})
                        app.AppData.HSAcombined{i}=app.AppData.HSAcombined{i}+app.AppData.HSAs{j}{i};
                    end
                end
                app.AppData.HSAcombined{i}=(app.AppData.HSAcombined{i}>0);
            end
        end

        function BW = Tab1_detectCracks(app)

            if app.ThresholdingButton.Value
                BW = Tab1_getCracksBW_Thresholding(app);
            else
                BW = Tab1_getCracksBW_EdgeDetection(app);
            end

            assignin('base','AppData',app.AppData)
            assignin('base','LocalAppData',app.LocalAppData)

            assignin('base','BRANCH',app.AppData.BRANCH)
            assignin('base','NODE',app.AppData.NODE)
        end

        function BW = Tab1_getCracksBW_Thresholding(app)
            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Creating Crack file (Processing AOI 1)',...
                'Indeterminate','on');
            for i=1:length(app.LocalAppData.DICFiles{1}.AOI)
                HSA=app.AppData.HSAcombined{i};

                THINCRACKS = Tab1_thinBWCracks(app,HSA);

                BW{i} = THINCRACKS;
            end
            close(dlg);

        end

        function BW = Tab1_getCracksBW_EdgeDetection(app)
            % initiate progress dialog bar
            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Creating Crack file (Processing AOI 1)',...
                'Indeterminate','on');

            % read parameters
            T_High = app.HighthresholdmmmEditField.Value/1000;      % [mm/m]
            T_Low  = app.LowthresholdmmmEditField.Value/1000;    % [mm/m]


            % edge detection at principal strain field on last active
            % measuring stage
            refernceindex=[];
            for i=1:length(app.DICfilesListBox.Items)
                if strcmp(app.DICfilesListBox.Items{i},app.DICfilesforcrackdetectionListBox.Items(1,end))
                    refernceindex = i;
                    break
                end
            end



            for AOIi=1:length(app.LocalAppData.DICFiles{1}.AOI)

                e1 = app.LocalAppData.DICFiles{refernceindex}.AOI{AOIi}.e1;
                gamma = app.LocalAppData.DICFiles{refernceindex}.AOI{AOIi}.gamma;

                for i=1:length(app.DICfilesListBox.Items)
                    if strcmp(app.DICfilesListBox.Items{i},app.ReferencedataDropDown_2.Value)
                        AOIboundaryrefernceindex = i;
                        break
                    end
                end
                BOUNDARYHOLES = (app.LocalAppData.DICFiles{AOIboundaryrefernceindex}.AOI{AOIi}.sigma == -1);


                if app.ErrorsashighstrainsCheckBox_2.Value == 1

                    app.AppData.ErrorAsEdgeFileName = app.ReferencedataDropDown_2.Value;

                    % Treat errors as high strains with gaussian filter
                    errors = (app.LocalAppData.DICFiles{refernceindex}.AOI{AOIi}.sigma == -1);
                    errors(BOUNDARYHOLES) = 0;
                    errordilation = app.ErrorareadilationEditField_2.Value;
                    errorcrackareas = imdilate(errors, ones(errordilation));

                    errors_filt = imgaussfilt(double(errorcrackareas),1) * app.ErrorstrainlevelmmmEditField.Value / 1000;
                    [~,error_grad] = imgradient(errors_filt,'prewitt');

                    index = (error_grad > 90);
                    error_grad(index) = error_grad(index) - 180;

                    index = (error_grad < -90);
                    error_grad(index) = error_grad(index) + 180;

                    error_grad = error_grad / 180 * pi;

                    e1_filled = e1 + errors_filt;
                    gamma_filled = gamma;
                    gamma_filled(errorcrackareas) = error_grad(errorcrackareas);

                else
                    app.AppData.ErrorAsEdgeFileName = '';

                    e1_filled = e1;
                    gamma_filled = gamma;

                    errorcrackareas = e1_filled * 0;
                end

                [e1EDGES] = fun_e1edgedetection(e1_filled,gamma_filled,BOUNDARYHOLES,T_High,T_Low);

                EDGES = e1EDGES + errorcrackareas;
                EDGES = (EDGES ~= 0);

                % Crack thinning
                THINCRACKS = Tab1_thinBWCracks(app,EDGES);

                assignin('base','THINCRACKS',THINCRACKS)
                % Branch Connection
                CONNECTEDCRACKS = fun_branchconnection(THINCRACKS,e1_filled,BOUNDARYHOLES,T_High,T_Low);

                % Crack thinning
                CONNECTEDCRACKS = Tab1_thinBWCracks(app,CONNECTEDCRACKS);

                BW{AOIi} = CONNECTEDCRACKS;

            end
            close(dlg);
        end

        function Tab1_setCrackData(app,values)
            BW = values{1};
            BRANCH = values{2};
            NODE = values{3};

            if isempty(BRANCH)
                app.AppData.cracklineplotdata = [];
                app.AppData.BW = [];
                app.AppData.BRANCH = [];
                app.AppData.NODE = [];
                return
            end
            if isempty(BRANCH(1).x)
                app.AppData.cracklineplotdata = [];
                app.AppData.BW = [];
                app.AppData.BRANCH = [];
                app.AppData.NODE = [];
                return
            end



            [x,y,branchnumber,branchlength] = Tab1_getCrackLinePlotData(app,BRANCH,NODE,'px',false);

            Cracks.x = x;
            Cracks.y = y;
            app.AppData.cracklineplotdata = Cracks;

            app.AppData.BW = BW;
            app.AppData.BRANCH = BRANCH;
            app.AppData.NODE= NODE;


        end

        function thinBW = Tab1_thinBWCracks(app,thickBW)
            thinBW = bwmorph(thickBW,'clean',1);

            thinBW = bwmorph(thinBW,'bridge');
            thinBW = bwmorph(thinBW,'close',inf);
            thinBW = bwmorph(thinBW,'thin',inf);

            thinBW_old = thinBW*0;
            while ~isequaln(thinBW,thinBW_old)
                thinBW_old = thinBW;

                thinBW = bwmorph(thinBW,'close',inf);
                thinBW = bwmorph(thinBW,'bridge',inf);
                thinBW = bwmorph(thinBW,'thin',inf);
            end

        end

        function [BRANCH, NODE] =  Tab1_getBranchesAndNodes(app,BW,uifigure)

            dlg = uiprogressdlg(uifigure,'Title','Creating Crack file (Processing AOI 1)',...
                'Indeterminate','off',"Cancelable",'on');
            try

                neighb0=[0,0,0;0,1,0;0,0,0];
                neighb4=[0,1,0;1,1,1;0,1,0];
                neighb8=ones(3,3);

                BRANCH = struct(...
                    'no',[],...
                    'x',[],...
                    'y',[],...
                    'X',[],...
                    'Y',[],...
                    'Z',[],...
                    'aoi',[],...
                    'v_index',[],...
                    'h_index',[],...
                    'length',[],...
                    'Length',[],...
                    'orientation',[],...
                    'Orientation',[],...
                    'orientation_plot',[],...
                    'Orientation_plot',[],...
                    'family',[],...
                    'nodes',[]...
                    );

                NODE = struct(...
                    'x',[],...
                    'y',[],...
                    'X',[],...
                    'Y',[],...
                    'Z',[],...
                    'aoi',[],...
                    'v_index',[],...
                    'h_index',[],...
                    'branches',[]);

                branchcount=0;
                nodecount=0;

                DICCoordinates = app.LocalAppData.DICCoordinates;

                tic
                seconds = 0;

                for AOIi=1:length(app.LocalAppData.DICFiles{1}.AOI)
                    dlg.Title = ['Creating Crack file (Processing AOI ',num2str(AOIi),')'];
                    % general properties
                    [m,n]=size(BW{AOIi});

                    % branchpoints
                    BP = bwmorph(BW{AOIi},'branchpoints');
                    [BP_lab,max_BP_lab]=bwlabeln(BP,neighb8); % labeled Branchpoints

                    % dilate branchpoint in order to ensure unconnected branches
                    BP_dilated=imdilate(BP,neighb8);
                    BP_dilated=BP_dilated.*BW{AOIi};

                    % BW reduced by dilated branchpoints
                    BW_red=BW{AOIi}-BP_dilated;

                    % label all regular branches (small branches between close branchpoints are
                    % not detected)
                    [BW_red_lab,max_br_lab]=bwlabel(BW_red);

                    % initiate labeled branches (image with branches number at loci)
                    BR_lab=zeros(m,n);

                    % add pixels in each branch until branchpoint is reached
                    for i=1:max_br_lab
                        if dlg.CancelRequested
                            BRANCH = [];
                            NODE = [];
                            return
                        end

                        BRANCH_i = (BW_red_lab==i);
                        ep = bwmorph(BRANCH_i,'endpoints');
                        [y,x] = find(ep==1);

                        start1=zeros(m,n);
                        if ~isempty(x) % this is the case for closed circles
                            % for 1st end:
                            start1(y(1),x(1))=1;
                            start1=imdilate(start1,neighb8);
                            ADD1=(BP_dilated-BP).*start1; % Add only pixels from dilated BP
                            BRANCH_i=BRANCH_i+ADD1;

                            % for 2nd end
                            if length(x)>1
                                end1=zeros(m,n);
                                end1(y(2),x(2))=1;
                                end1=imdilate(end1,neighb8);
                                ADD1=(BP_dilated-BP).*end1; % Add only one pixel from dilated BP
                                BRANCH_i=BRANCH_i+ADD1;
                            end
                        end
                        BR_lab=BR_lab+BRANCH_i*i;
                        dlg.Value = i/max_br_lab*0.20;

                        dlg_value = min(i/max_br_lab*0.20,1);

                        if abs(seconds-toc)>0.1

                            dlg.Value = dlg_value;
                            seconds = toc;

                            minutes_text = floor(seconds/dlg_value*(1-dlg_value)/60);
                            seconds_text = floor(seconds/dlg_value*(1-dlg_value)) - minutes_text*60;
                            text = [num2str(minutes_text,'%.0f'),' minutes ',num2str(seconds_text,'%.0f'),' seconds'];
                            if minutes_text < 1
                                text = [num2str(seconds_text,'%.0f'),' seconds'];
                            end
                            dlg.Message = {['Estimated remaining time: ',text]};
                        end

                    end

                    % remaining branches
                    BR_remaining=BW{AOIi}-(BR_lab>0)-BP;


                    % remove all remaining pixels which are isolated (BPs which are only
                    % connected by one pixel)
                    max_BR=max_br_lab;

                    [BR_remaining_lab,max_br_rem_lab]=bwlabeln(BR_remaining,neighb0);
                    for i=1:max_br_rem_lab

                        BR_remaining_i=(BR_remaining_lab==i); % only one pixel

                        neighbored_BPs=imdilate(BR_remaining_i,neighb8).*BP_lab;
                        if length(unique(neighbored_BPs))-1>1 % check if pixel is surrounded by more than 1 BP
                            % label particular pixel
                            max_BR=max_BR+1;
                            BR_lab=BR_lab+BR_remaining_i*max_BR;
                            BR_remaining=BR_remaining-BR_remaining_i;
                        end

                    end


                    % remove all remaining pixels (leafs and BP connections with 2 pixels
                    for j=1:max_BP_lab % iterate over all BPs
                        if dlg.CancelRequested
                            BRANCH = [];
                            NODE = [];
                            return
                        end

                        BP_j=(BP_lab==j);
                        neigh_BR_remaining=imdilate(BP_j,neighb8).*BR_remaining; % neighbouring remaining pixels

                        % label neighbouring remaining pixels
                        [neigh_BR_remaining_lab,max_neigh_BR_remaining_lab]=bwlabeln(neigh_BR_remaining,neighb0);
                        for k=1:max_neigh_BR_remaining_lab % iterate over neighbouring remaining pixels
                            neigh_BR_remaining_k=(neigh_BR_remaining_lab==k);

                            % search for connecting pixels (other neighbouring pixels around
                            % current PBs are excluded)- only search for other remaining pixels
                            dil_field=(BR_remaining-neigh_BR_remaining+neigh_BR_remaining_k>0);
                            conn=imdilate(neigh_BR_remaining_k,neighb8).*dil_field;

                            % label particular pixel lines
                            BR_remaining=BR_remaining-conn;
                            max_BR=max_BR+1;
                            BR_lab=BR_lab+conn*max_BR;
                        end
                        dlg.Value = 0.2 + j/max_BP_lab*0.05;

                        dlg_value = min(0.2 + j/max_BP_lab*0.05,1);

                        if abs(seconds-toc)>0.1

                            dlg.Value = dlg_value;
                            seconds = toc;

                            minutes_text = floor(seconds/dlg_value*(1-dlg_value)/60);
                            seconds_text = floor(seconds/dlg_value*(1-dlg_value)) - minutes_text*60;
                            text = [num2str(minutes_text,'%.0f'),' minutes ',num2str(seconds_text,'%.0f'),' seconds'];
                            if minutes_text < 1
                                text = [num2str(seconds_text,'%.0f'),' seconds'];
                            end
                            dlg.Message = {['Estimated remaining time: ',text]};
                        end

                    end


                    %%%%%%%%%%%%%%%%%%%%%%
                    % Create BRANCH and NODE variables


                    for i=1:max_BP_lab

                        % search for crack line points (x and y)
                        BP_i=(BP_lab==i);
                        ep=bwmorph(BP_i,'endpoints');
                        [y,x]=find(ep==1);
                        start=[y(1),x(1)];
                        trace_line = bwtraceboundary(BP_i,start,'S');
                        cracklength=ceil(length(trace_line)/2);

                        x_BW=trace_line(1:cracklength,2);
                        y_BW=trace_line(1:cracklength,1);

                        for o=1:length(x_BW)
                            NODE(nodecount+i).x(o,1) = DICCoordinates.AOI{AOIi}.x( y_BW(o) , x_BW(o) );
                            NODE(nodecount+i).y(o,1) = DICCoordinates.AOI{AOIi}.y( y_BW(o) , x_BW(o) );

                            NODE(nodecount+i).X(o,1) = DICCoordinates.AOI{AOIi}.X( y_BW(o) , x_BW(o) );
                            NODE(nodecount+i).Y(o,1) = DICCoordinates.AOI{AOIi}.Y( y_BW(o) , x_BW(o) );
                            NODE(nodecount+i).Z(o,1) = DICCoordinates.AOI{AOIi}.Z( y_BW(o) , x_BW(o) );

                            NODE(nodecount+i).aoi=AOIi;

                            NODE(nodecount+i).v_index(o,1)=y_BW(o);
                            NODE(nodecount+i).h_index(o,1)=x_BW(o);
                        end
                    end

                    % address all nodes to branches
                    for i=1:max_BR
                        if dlg.CancelRequested
                            BRANCH = [];
                            NODE = [];
                            return
                        end

                        BRANCH(branchcount+i).no=branchcount+i;
                        BR_i=(BR_lab==i);


                        % search for endpoints
                        ep=bwmorph(BR_i,'endpoints');
                        [y,x]=find(ep==1);
                        if isempty(y)
                            [y,x]=find(BR_i==1);
                            % search for crack line points (x and y)
                            start=[y(1),x(1)];
                            trace_line = bwtraceboundary(BR_i,start,'S');
                            cracklength=length(trace_line);
                        else
                            % search for crack line points (x and y)
                            start=[y(1),x(1)];
                            trace_line = bwtraceboundary(BR_i,start,'S');
                            cracklength=ceil(length(trace_line)/2);
                        end

                        x_BW=trace_line(1:cracklength,2);
                        y_BW=trace_line(1:cracklength,1);

                        for o=1:length(x_BW)
                            BRANCH(branchcount+i).x(o,1)=DICCoordinates.AOI{AOIi}.x( y_BW(o) , x_BW(o) );
                            BRANCH(branchcount+i).y(o,1)=DICCoordinates.AOI{AOIi}.y( y_BW(o) , x_BW(o) );

                            BRANCH(branchcount+i).X(o,1)=DICCoordinates.AOI{AOIi}.X( y_BW(o) , x_BW(o) );
                            BRANCH(branchcount+i).Y(o,1)=DICCoordinates.AOI{AOIi}.Y( y_BW(o) , x_BW(o) );
                            BRANCH(branchcount+i).Z(o,1)=DICCoordinates.AOI{AOIi}.Z( y_BW(o) , x_BW(o) );

                            BRANCH(branchcount+i).aoi=AOIi;
                            BRANCH(branchcount+i).v_index(o,1)=y_BW(o);
                            BRANCH(branchcount+i).h_index(o,1)=x_BW(o);

                        end

                        % search for nodes
                        % for 1st end:
                        start1=zeros(m,n);
                        start1(y(1),x(1))=1;
                        start1=imdilate(start1,neighb8);
                        BPs=BP.*start1;
                        [BPs_lab,maxi]=bwlabeln(BPs,neighb0);
                        for j=1:maxi
                            [y2,x2]=find(BPs_lab==j);
                            nodenumber=BP_lab(y2(1),x2(1));
                            if sum(ismember(BRANCH(branchcount+i).nodes,nodecount+nodenumber))==0
                                BRANCH(branchcount+i).nodes=[BRANCH(branchcount+i).nodes,nodecount+nodenumber];
                                NODE(nodecount+nodenumber).branches=[NODE(nodecount+nodenumber).branches branchcount+i];
                            end
                        end

                        if length(x)>1 % if branch contains more than one pixel there are two endpoints
                            end1=zeros(m,n);
                            end1(y(2),x(2))=1;
                            end1=imdilate(end1,neighb8);
                            BPs=BP.*end1;
                            [BPs_lab,maxi]=bwlabeln(BPs,neighb0);
                            for j=1:maxi
                                [y2,x2]=find(BPs_lab==j);
                                nodenumber=BP_lab(y2(1),x2(1));
                                if sum(ismember(BRANCH(branchcount+i).nodes,nodecount+nodenumber))==0
                                    BRANCH(branchcount+i).nodes=[BRANCH(branchcount+i).nodes,nodecount+nodenumber];
                                    NODE(nodecount+nodenumber).branches=[NODE(nodecount+nodenumber).branches branchcount+i];
                                end
                            end
                        end
                        dlg.Value = 0.25 + i/max_BR*0.75;

                        dlg_value = min(0.25 + i/max_BR*0.75,1);

                        if abs(seconds-toc)>0.1

                            dlg.Value = dlg_value;
                            seconds = toc;

                            minutes_text = floor(seconds/dlg_value*(1-dlg_value)/60);
                            seconds_text = floor(seconds/dlg_value*(1-dlg_value)) - minutes_text*60;
                            text = [num2str(minutes_text,'%.0f'),' minutes ',num2str(seconds_text,'%.0f'),' seconds'];
                            if minutes_text < 1
                                text = [num2str(seconds_text,'%.0f'),' seconds'];
                            end
                            dlg.Message = {['Estimated remaining time: ',text]};
                        end



                    end
                    nodecount = nodecount + max_BP_lab;
                    branchcount= branchcount + max_BR;
                end
                if branchcount == 0
                    BRANCH = [];
                    NODE = [];
                end

                if nodecount == 0
                    NODE = [];
                end
            catch

                uialert(app.ACDMUIFigure,{'Problem occured during creating the crack file.','','Try a different crack detection'},'Error');
                BRANCH = [];
                NODE = [];
            end

            close(dlg);
        end

        function [x,y,branchnumber,branchlength] = Tab1_getCrackLinePlotData(app,BRANCH,NODE,unit,smoothed)
            x=[];
            y=[];
            branchnumber=[];
            branchlength=[];



            for i=1:length(BRANCH)

                %check for smoothed values
                if app.SmoothedButton.Value && isfield(BRANCH,'x_filt') && smoothed
                    BRANCH(i).x =  BRANCH(i).x_filt;
                    BRANCH(i).y =  BRANCH(i).y_filt;
                    BRANCH(i).X =  BRANCH(i).X_filt;
                    BRANCH(i).Y =  BRANCH(i).Y_filt;
                end

                if strcmp(unit,'px')
                    x_add = BRANCH(i).x;
                    y_add = BRANCH(i).y;
                else
                    x_add = BRANCH(i).X;
                    y_add = BRANCH(i).Y;
                end

                if ~isempty(BRANCH(i).nodes)
                    % node's coordinate of BRANCH(i)
                    if strcmp(unit,'px')
                        nx=NODE(BRANCH(i).nodes(1)).x;
                        ny=NODE(BRANCH(i).nodes(1)).y;
                        if length(BRANCH(i).nodes)==2
                            nx=[nx;NODE(BRANCH(i).nodes(2)).x];
                            ny=[ny;NODE(BRANCH(i).nodes(2)).y];
                        end
                    else
                        nx=NODE(BRANCH(i).nodes(1)).X;
                        ny=NODE(BRANCH(i).nodes(1)).Y;
                        if length(BRANCH(i).nodes)==2
                            nx=[nx;NODE(BRANCH(i).nodes(2)).X];
                            ny=[ny;NODE(BRANCH(i).nodes(2)).Y];
                        end
                    end

                    % node at FIRST coordinate of crack (only if there is a node)
                    nx1=[];
                    ny1=[];
                    d=zeros(length(nx),1);
                    for j=1:length(nx)
                        d(j)=pdist([x_add(1),y_add(1);nx(j),ny(j)],'euclidean');
                    end

                    [dmin,ind]=min(d);
                    if dmin<=sqrt(2)*app.AppData.DICProperties.Step
                        nx1=nx(ind);
                        ny1=ny(ind);
                    end

                    x=[x;nan;[nx1;x_add]];
                    y=[y;nan;[ny1;y_add]];
                    branchnumber=[branchnumber;nan;ones(length([nx1;x_add]),1)*BRANCH(i).no];
                    branchlength=[branchlength;nan;ones(length([nx1;x_add]),1)*length([nx1;x_add])];

                    if length(x_add)==1 && length(BRANCH(i).nodes)>1

                        nx1=[];
                        ny1=[];
                        d(ind)=inf;

                        [dmin,ind]=min(d);
                        if dmin<=sqrt(2)*app.AppData.DICProperties.Step
                            nx1=nx(ind);
                            ny1=ny(ind);
                        end
                        x=[x;nx1];
                        y=[y;ny1];
                        branchnumber=[branchnumber;BRANCH(i).no];
                        branchlength=[branchlength;1];
                    elseif length(x_add)>1
                        % node at FIRST coordinate of crack (only if there is a node)
                        nx2=[];
                        ny2=[];
                        d=zeros(length(nx),1);
                        for j=1:length(nx)
                            d(j)=pdist([x_add(end),y_add(end);nx(j),ny(j)],'euclidean');
                        end

                        [dmin,ind]=min(d);
                        if dmin<=sqrt(2)*app.AppData.DICProperties.Step
                            nx2=nx(ind);
                            ny2=ny(ind);
                        end

                        x=[x;nan;[x_add;nx2]];
                        y=[y;nan;[y_add;ny2]];
                        branchnumber=[branchnumber;nan;ones(length([nx2;x_add]),1)*BRANCH(i).no];
                        branchlength=[branchlength;nan;ones(length([nx2;x_add]),1)*length([nx2;x_add])];
                    end
                else
                    x=[x;nan;[x_add]];
                    y=[y;nan;[y_add]];
                    branchnumber=[branchnumber;nan;ones(length([x_add]),1)*BRANCH(i).no];
                    branchlength=[branchlength;nan;ones(length([x_add]),1)*length([x_add])];
                end
            end

            for i=1:length(NODE)
                if length(NODE(i).x)>1
                    if strcmp(unit,'px')
                        x=[x;nan;[NODE(i).x]];
                        y=[y;nan;[NODE(i).y]];
                    else
                        x=[x;nan;[NODE(i).X]];
                        y=[y;nan;[NODE(i).Y]];
                    end

                    branchnumber=[branchnumber;nan;ones(length(NODE(i).x),1)*0];
                    branchlength=[branchlength;nan;ones(length(NODE(i).x),1)*length(NODE(i).x)];
                end
            end
        end

        function [BRANCH_out] = Tab1_setInclination(app,BRANCH_in)
            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Please Wait',...
                'Message','Setting Crack Inclination',"Cancelable",'on');

            iw = app.AppData.KMProperties.iw;
            d = (iw-1)/2;
            BRANCH = BRANCH_in;
            BRANCH_out = [];
            for i=1:length(BRANCH)
                % check if cancel
                if dlg.CancelRequested
                    return
                end

                % initiate orientation vector
                BRANCH(i).orientation=nan(length(BRANCH(i).x),1);
                BRANCH(i).Orientation=nan(length(BRANCH(i).x),1);
                BRANCH(i).Orientation_plot=nan(length(BRANCH(i).x),1);
                BRANCH(i).orientation_plot=nan(length(BRANCH(i).x),1);

                if length(BRANCH(i).x)==1
                    BRANCH(i).orientation=NaN;
                    BRANCH(i).Orientation=NaN;
                    BRANCH(i).Orientation_plot=NaN;
                    BRANCH(i).orientation_plot=NaN;

                else
                    % extend branch, in order to also capture point close to the
                    % endpoints
                    l=length(BRANCH(i).x)-1;
                    x_ext=[-fliplr(BRANCH(i).x(2:end)')+2*BRANCH(i).x(1)',BRANCH(i).x',-fliplr(BRANCH(i).x(1:end-1)')+2*BRANCH(i).x(end)'];
                    y_ext=[-fliplr(BRANCH(i).y(2:end)')+2*BRANCH(i).y(1)',BRANCH(i).y',-fliplr(BRANCH(i).y(1:end-1)')+2*BRANCH(i).y(end)'];

                    X_ext=[-fliplr(BRANCH(i).X(2:end)')+2*BRANCH(i).X(1)',BRANCH(i).X',-fliplr(BRANCH(i).X(1:end-1)')+2*BRANCH(i).X(end)'];
                    Y_ext=[-fliplr(BRANCH(i).Y(2:end)')+2*BRANCH(i).Y(1)',BRANCH(i).Y',-fliplr(BRANCH(i).Y(1:end-1)')+2*BRANCH(i).Y(end)'];

                    while l<d
                        x_ext=[-fliplr(x_ext(2:end))+2*x_ext(1),x_ext,-fliplr(x_ext(1:end-1))+2*x_ext(end)];
                        y_ext=[-fliplr(y_ext(2:end))+2*y_ext(1),y_ext,-fliplr(y_ext(1:end-1))+2*y_ext(end)];

                        X_ext=[-fliplr(X_ext(2:end))+2*X_ext(1),X_ext,-fliplr(X_ext(1:end-1))+2*X_ext(end)];
                        Y_ext=[-fliplr(Y_ext(2:end))+2*Y_ext(1),Y_ext,-fliplr(Y_ext(1:end-1))+2*Y_ext(end)];

                        l=(length(x_ext)-length(BRANCH(i).x))/2;
                    end

                    % get all orientations
                    for j=1:length(BRANCH(i).x)
                        x=x_ext(j-d+l:j+d+l);
                        y=y_ext(j-d+l:j+d+l);

                        X=X_ext(j-d+l:j+d+l);
                        Y=Y_ext(j-d+l:j+d+l);

                        window=zeros([(max(y)-min(y))+1,(max(x)-min(x))+1]);
                        window(sub2ind([(max(y)-min(y))+1,(max(x)-min(x))+1],y-min(y)+1,x-min(x)+1))=1;

                        reg = regionprops(window,'Orientation');
                        BRANCH(i).orientation(j) = reg.Orientation;

                        BRANCH(i).Orientation(j) = Tab1_pcaAngle(app,X,Y);
                    end

                    % define orientation for plot [px]
                    mOri = Tab1_pcaAngle(app,BRANCH(i).x,-BRANCH(i).y); % mean orientation of whole branch

                    angle_cr_old = mOri;

                    for j=1:length(BRANCH(i).x)

                        Ori_i=BRANCH(i).orientation(j);
                        if abs(angle_cr_old-Ori_i)>90
                            if Ori_i<0
                                Ori_i=Ori_i+180;
                            else
                                Ori_i=Ori_i-180;
                            end
                        end
                        angle_cr_old=Ori_i;

                        BRANCH(i).orientation_plot(j) = Ori_i;
                    end

                    % define orientation for plot [mm]
                    mOri = Tab1_pcaAngle(app,BRANCH(i).X,BRANCH(i).Y); % mean orientation of whole branch

                    angle_cr_old = mOri;

                    for j=1:length(BRANCH(i).x)

                        Ori_i=BRANCH(i).Orientation(j);
                        if abs(angle_cr_old-Ori_i)>90
                            if Ori_i<0
                                Ori_i=Ori_i+180;
                            else
                                Ori_i=Ori_i-180;
                            end
                        end
                        angle_cr_old=Ori_i;

                        BRANCH(i).Orientation_plot(j) = Ori_i;
                    end
                end
                dlg.Value = i / length(BRANCH);
            end

            BRANCH_out = BRANCH;


        end

        function BRANCH_out = Tab1_setBRANCHLenth(app,BRANCH_in)
            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Please Wait',...
                'Message','Setting Crack Length',"Cancelable",'on');
            BRANCH = BRANCH_in;
            BRANCH_out = [];
            for i=1:length(BRANCH)
                if dlg.CancelRequested
                    return
                end

                if length(BRANCH(i).x)<2
                    l = 0;
                    L = 0;
                else
                    % px
                    d = diff([BRANCH(i).x,BRANCH(i).y]);
                    l = sum(sqrt(sum(d.*d,2)));

                    % mm
                    D = diff([BRANCH(i).X,BRANCH(i).Y]);
                    L = sum(sqrt(sum(D.*D,2)));
                end
                BRANCH(i).length = l;
                BRANCH(i).Length = L;
                dlg.Value = i / length(BRANCH);
            end
            BRANCH_out = BRANCH;

            delete(dlg)
        end


        function angle = Tab1_pcaAngle(~,X,Y)
            % angle of main PCA axis [deg]
            X = X(~isnan(X));
            Y = Y(~isnan(Y));
            if isempty(X) || isempty(Y) || length(X)<2 || length(X) ~= length(Y)
                angle = nan;
                return
            end

            X = X(:)-mean(X(:));
            Y = Y(:)-mean(Y(:));
            % PCA
            c = cov(X, Y);
            [V, D] = eig(c);
            [~,index] = sort(diag(D));

            if length(V)<2
                angle = nan;
                return
            end

            % Angle
            [Xa, Ya] = deal(V(1,index(end)), V(2,index(end)));
            angle = cart2pol(Xa, Ya)*180/pi;

            if angle > 90
                angle = angle - 180;
            end
            if angle <= -90
                angle = angle + 180;
            end
        end



        function Tab2_selectBranchesinFamily(app,familynr)
            figure(app.ACDMUIFigure)

            % initiate interactive plot
            clear tempf;
            tempf = figure;
            tempf.Position = app.UIAxes_2.Position;

            tempf.Position(1) = app.ACDMUIFigure.Position(1)+app.ACDMUIFigure.Position(3)/2-app.UIAxes_2.Position(3)/2;
            tempf.Position(2) = app.ACDMUIFigure.Position(2)+app.ACDMUIFigure.Position(4)/2-app.UIAxes_2.Position(4)/2;

            %             tempf.Position(3) = tempf.Position(3)/2;

            ax = axes('Parent',tempf);

            app.LocalAppData.TabPlot(11).reset = 1;
            uiplot(app,11,ax)

            tempf.Name = 'Crack Branch Selection';
            title(ax,'click on crack or right-click on areas of interest to select / deselect','Color', 'k','FontWeight',"normal",'FontAngle',"italic");

            set(tempf, 'MenuBar', 'none');
            set(tempf, 'ToolBar', 'none');
            axtoolbar(ax,{'export','pan','zoomin','zoomout','restoreview'});

            if app.PrincipalstrainsCheckBox_2.Value || app.SigmaCheckBox_2.Value
                xlimits = xlim(ax);
                ylimits = ylim(ax);
                x = [xlimits(1),xlimits(2),xlimits(2),xlimits(1)];
                y = [ylimits(1),ylimits(1),ylimits(2),ylimits(2)];
                pat=patch(ax,x,y,'w','ZData',x*0+5);
                set(pat,'FaceAlpha',0.8);
                set(pat,'EdgeColor','none')
            end

            % Background
            for i = 1:length(ax.Children)
                background(i)=ax.Children(i);
            end

            % Button Down Fcn of Crack Branches
            for i = 1:length(app.AppData.BRANCH) % current crack lines
                [x,y,~,~] = Tab1_getCrackLinePlotData(app,app.AppData.BRANCH(i),app.AppData.NODE,'px',false);
                p{i}= plot(ax,x,y,'ZData',x*0+100);
                if ismember(familynr,app.AppData.BRANCH(i).family)
                    p{i}.Color = app.AppData.FAMILY(familynr).Color;
                else
                    p{i}.Color = 'k';
                end
                p{i}.ButtonDownFcn = {@LineSelectionFcn,app,p{i},i};
            end

            % Context Menu of Background
            cm = uicontextmenu(tempf);
            m1 = uimenu(cm,'Text','Select all');
            m2 = uimenu(cm,'Text','Select none');
            m3 = uimenu(cm,'Text','Invert selelction');

            m4 = uimenu(cm,'Text','');
            m4.Enable = 'off';
            m5 = uimenu(cm,'Text','Select by crack inclination');
            m6 = uimenu(cm,'Text','Deselect by crack inclination');
            m7 = uimenu(cm,'Text','Select / deselect by crack length');
            m8 = uimenu(cm,'Text','Select / deselect by polygonal area');


            m1.MenuSelectedFcn = {@SelectAllFcn,app,p};
            m2.MenuSelectedFcn = {@SelectNoneFcn,app,p};
            m3.MenuSelectedFcn = {@InvertSelectionFcn,app,p};
            m5.MenuSelectedFcn = {@SelectionByInclinationFcn,app,p,true};
            m6.MenuSelectedFcn = {@SelectionByInclinationFcn,app,p,false};
            m7.MenuSelectedFcn = {@SelectionByLength,app,p};
            m8.MenuSelectedFcn = {@SelectionByPolygon,app,p};

            tempf.ContextMenu = cm;

            for i = 1:length(background)
                background(i).ContextMenu = cm;
            end


            function LineSelectionFcn(~,~,app,p,i)
                if ismember(familynr,app.AppData.BRANCH(i).family)
                    f = app.AppData.BRANCH(i).family;
                    f = f(f~=familynr);
                    app.AppData.BRANCH(i).family = f;
                    p.Color = 'k';
                else

                    app.AppData.BRANCH(i).family = unique([app.AppData.BRANCH(i).family,familynr]);
                    p.Color = app.AppData.FAMILY(familynr).Color;
                end

            end

            function SelectAllFcn(~,~,app,p)
                for i=1:length(app.AppData.BRANCH)
                    app.AppData.BRANCH(i).family = unique([app.AppData.BRANCH(i).family,familynr]);
                    p{i}.Color = app.AppData.FAMILY(familynr).Color;
                end
            end

            function SelectNoneFcn(~,~,app,p)
                for i=1:length(app.AppData.BRANCH)
                    f = app.AppData.BRANCH(i).family;
                    f = f(f~=familynr);
                    app.AppData.BRANCH(i).family = f;
                    p{i}.Color = 'k';
                end
            end

            function InvertSelectionFcn(src,evt,app,p)
                for i=1:length(app.AppData.BRANCH)
                    LineSelectionFcn(src,evt,app,p{i},i)
                end
            end

            function SelectionByInclinationFcn(~,~,app,p,select)

                % Open new figure for angular selection
                angleselection = figure;
                angleselection.Name = 'Mean Crack Inclination Selection';

                set(angleselection, 'MenuBar', 'none');
                set(angleselection, 'ToolBar', 'none');
                angleselection.Position = tempf.Position;

                angleselection.Position(3)=angleselection.Position(4)/2;
                angleselection.Position(1)=tempf.Position(1)+tempf.Position(3)/2-angleselection.Position(3)/2;

                ax = axes('Parent',angleselection);
                title(ax,'click to select range','Color', 'k','FontWeight',"normal",'FontAngle',"italic");

                % Initiate plots
                pol(1)=polar(nan,nan);
                hold on
                pol(2)=polar(nan,nan);
                pol(3)=polar(nan,nan);
                pol(4)=fill(nan,nan,app.AppData.FAMILY(familynr).Color);

                set(pol(1:3),'Color','k','LineWidth',2)
                pol(4).FaceAlpha = 0.3;
                pol(4).EdgeColor = 'none';

                axis([0 inf -inf inf])
                t = findall(angleselection,'type','text');
                delete(t);

                tex(1) = text(ax,0,0,'');
                tex(2) = text(ax,0,0,'');

                set(angleselection, 'WindowButtonMotionFcn', {@mouseMove,ax,pol,tex});

                for i=1:2
                    try
                        k = waitforbuttonpress;
                    catch
                        return
                    end

                    if k==0
                        C = get (gca, 'CurrentPoint');
                        if C(1,1)<0 && C(1,2)>=0
                            C=[0,1];
                        end
                        if C(1,1)<0 && C(1,2)<0
                            C=[0,-1];
                        end
                        coord(i,:)=[C(1,1), C(1,2)];
                        [theta,~] = cart2pol(C(1,1), C(1,2));
                        theta=min(max(theta,-pi/2),pi/2);
                        [x,y] = pol2cart(theta,1);
                        set(pol(i),'xData',[0 x],'yData',[0 y]);
                        set(pol(i),'Color','k','LineWidth',1.5)
                        angle(i)=theta*180/pi();
                    end
                end
                delete(pol(3))
                pol(3)=[];
                set(angleselection, 'WindowButtonMotionFcn', '');


                function mouseMove(src,evt,ax,pol,tex)
                    cursorPoint = get(ax, 'CurrentPoint');
                    [theta,~] = cart2pol(cursorPoint(1,1), cursorPoint(1,2));
                    theta = min(max(theta,-pi/2),pi/2);
                    [x, y] = pol2cart(theta,1);
                    set(pol(3),'xData',[0 x],'yData',[0 y]);
                    if isnan(pol(1).XData)
                        tex(1).Position=[x,y];
                        tex(1).String = ['  ',num2str(theta*180/pi,'%.2f'),' °'];
                    else
                        tex(2).Position=[x,y];
                        tex(2).String = ['  ',num2str(theta*180/pi,'%.2f'),' °'];
                    end

                    if ~isnan(pol(1).XData)
                        x1 = pol(1).XData(2);
                        y1 = pol(1).YData(2);
                        [theta1,~] = cart2pol(x1,y1);
                        th = min(theta1,theta):abs(theta1-theta)/100:max(theta1,theta);
                        xunit = cos(th);
                        yunit = sin(th);
                        pol(4).XData = [0,xunit,0];
                        pol(4).YData = [0,yunit,0];
                    end
                end
                pause(0.5)
                delete(angleselection)

                if ishandle(tempf)

                    angle = sort(angle);
                    angle = round(angle*100)/100;

                    for i=1:length(app.AppData.BRANCH)
                        if mean(app.AppData.BRANCH(i).orientation)>angle(1) &&  mean(app.AppData.BRANCH(i).orientation)<angle(2)

                            if select
                                app.AppData.BRANCH(i).family = unique([app.AppData.BRANCH(i).family,familynr]);
                                p{i}.Color = app.AppData.FAMILY(familynr).Color;
                            else
                                f = app.AppData.BRANCH(i).family;
                                f = f(f~=familynr);
                                app.AppData.BRANCH(i).family = f;
                                p{i}.Color = 'k';
                            end
                        end
                    end
                end
                delete(angleselection)

            end

            function SelectionByPolygon(~,~,app,p)
                roi = drawpolygon(gca,'Color',app.AppData.FAMILY(familynr).Color);

                if isvalid(roi)
                    cm = uicontextmenu(gcf);
                    m1 = uimenu(cm,'Text','Select cracks inside area');
                    m2 = uimenu(cm,'Text','Deselect cracks inside area');
                    m3 = uimenu(cm,'Text','');
                    m3.Enable = 'off';
                    m4 = uimenu(cm,'Text','Delete area');
                    m1.MenuSelectedFcn = {@SelectCracksInPolyon,app,roi,p,true};
                    m2.MenuSelectedFcn = {@SelectCracksInPolyon,app,roi,p,false};
                    m4.MenuSelectedFcn = {@RemovePolyon,roi};

                    roi.ContextMenu = cm;
                end

                function SelectCracksInPolyon(~,~,app,roi,p,select)

                    xv = roi.Position(:,1);
                    yv = roi.Position(:,2);

                    if isvalid(roi)
                        for i=1:length(app.AppData.BRANCH)
                            in = inpolygon(app.AppData.BRANCH(i).x,app.AppData.BRANCH(i).y,xv,yv);
                            if sum(in)==length(app.AppData.BRANCH(i).x)
                                if select
                                    app.AppData.BRANCH(i).family = unique([app.AppData.BRANCH(i).family,familynr]);
                                    p{i}.Color = app.AppData.FAMILY(familynr).Color;
                                else
                                    f = app.AppData.BRANCH(i).family;
                                    f = f(f~=familynr);
                                    app.AppData.BRANCH(i).family = f;
                                    p{i}.Color = 'k';
                                end
                            end
                        end

                        delete(roi)
                    end
                end

                function RemovePolyon(~,~,roi)
                    delete(roi)
                end
            end

            function SelectionByLength(~,~,app,p)

                app.tempData = [];
                Dialog = CrackLengthSelection(app);
                uiwait(Dialog.UIFigure)

                if isempty(app.tempData)
                    return
                end

                len = app.tempData(1);
                select = app.tempData(2);
                above = app.tempData(3);

                for i=1:length(app.AppData.BRANCH)
                    l = app.AppData.BRANCH(i).Length;

                    if l>len && (select && above) || l<len && (select && ~above) % case select
                        app.AppData.BRANCH(i).family = unique([app.AppData.BRANCH(i).family,familynr]);
                        p{i}.Color = app.AppData.FAMILY(familynr).Color;
                    end

                    if l>len && (~select && above) || l<len && (~select && ~above) % case deselect
                        f = app.AppData.BRANCH(i).family;
                        f = f(f~=familynr);
                        app.AppData.BRANCH(i).family = f;
                        p{i}.Color = 'k';
                    end

                end
            end
            %%
            waitfor(tempf)
            uiplot(app,2)
        end


        function Tab2_resetFamilies(app)
            for i=1:length(app.AppData.BRANCH)
                app.AppData.BRANCH(i).family = [];
            end
            app.CrackfamiliesListBox.Items = {};
            app.CrackfamiliesListBox_2.Items = {};
            app.AppData.FAMILY = struct('Name',[],'Color',[]);
        end



        function Tab3_calculateKinematics(app)
            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Please Wait',...
                'Message','Calculating kinematics...',"Cancelable",'on');

            % get parameters
            d1 = app.AppData.KMProperties.d1;
            d2 = app.AppData.KMProperties.d2;

            st = app.AppData.DICProperties.Step;

            % get data
            DICdata = app.LocalAppData.DICFiles;
            DICCoordinates = app.LocalAppData.DICCoordinates;
            BRANCH = app.AppData.BRANCH;

            % remove BRANCH fields
            if isfield(BRANCH,'width')
                BRANCH=rmfield(BRANCH,{'width','slip','theta_a','theta_b','referencepoints','residual_a','residual_b','reliability_index','flipped_a','flipped_b'});
            end
            if isfield(BRANCH,'width_filt')
                BRANCH=rmfield(BRANCH,{'width_filt','slip_filt'});
            end
            if isfield(BRANCH,'x_filt')
                BRANCH=rmfield(BRANCH,{'x_filt','y_filt','X_filt','Y_filt','Z_filt'});
            end


            % calculate amount of crack points
            % (for estimating of remaining time)
            tic
            count = 0;
            seconds = 0;
            dlg_value = 0;

            for i=1:length(BRANCH)
                if isempty(BRANCH(i).family)
                    continue
                end
                count = count + length(BRANCH(i).x);
            end

            % loop over all BRANCHes
            for i=1:length(BRANCH)
                if isempty(BRANCH(i).family)
                    continue
                end

                % initiate struct fields
                BRANCH(i).referencepoints.a.v_index = cell(length(BRANCH(i).x),1);
                BRANCH(i).referencepoints.a.h_index = cell(length(BRANCH(i).x),1);

                BRANCH(i).referencepoints.a_flipped.v_index = cell(length(BRANCH(i).x),1);
                BRANCH(i).referencepoints.a_flipped.h_index = cell(length(BRANCH(i).x),1);

                BRANCH(i).referencepoints.b.v_index = cell(length(BRANCH(i).x),1);
                BRANCH(i).referencepoints.b.h_index = cell(length(BRANCH(i).x),1);

                BRANCH(i).referencepoints.b_flipped.v_index = cell(length(BRANCH(i).x),1);
                BRANCH(i).referencepoints.b_flipped.h_index = cell(length(BRANCH(i).x),1);

                BRANCH(i).flipped_a = nan(length(BRANCH(i).x),length(DICdata)); % [0 or 1]
                BRANCH(i).flipped_b = nan(length(BRANCH(i).x),length(DICdata)); % [0 or 1]

                BRANCH(i).theta_a = nan(length(BRANCH(i).x),length(DICdata)); % [mm]
                BRANCH(i).theta_b = nan(length(BRANCH(i).x),length(DICdata)); % [mm]
                BRANCH(i).width = nan(length(BRANCH(i).x),length(DICdata)); % [mm]
                BRANCH(i).slip = nan(length(BRANCH(i).x),length(DICdata)); % [mm]

                BRANCH(i).residual_a = nan(length(BRANCH(i).x),length(DICdata)); % [mm]
                BRANCH(i).residual_b = nan(length(BRANCH(i).x),length(DICdata)); % [mm]
                BRANCH(i).reliability_index = nan(length(BRANCH(i).x),length(DICdata)); % [mm]

                aoi = BRANCH(i).aoi;

                [dimv,dimh] = size(DICCoordinates.AOI{aoi}.x);
                BOUNDARYHOLES = 1 - (DICdata{1}.AOI{aoi}.sigma > 0);

                for j = 1:length(BRANCH(i).x) % loop over BRANCH length
                    if dlg.CancelRequested
                        return
                    end

                    % get crack location
                    cracklocation = [BRANCH(i).v_index(j),BRANCH(i).h_index(j)];

                    % get physical coordinates of crack location
                    CrackLocation = indextomm(cracklocation,...
                        DICCoordinates.AOI{aoi}.X,...
                        DICCoordinates.AOI{aoi}.Y);

                    angle = BRANCH(i).orientation(j)/180*pi; % orientation in image plane (-pi/2,pi/2]
                    Angle = BRANCH(i).Orientation(j)/180*pi; % orientation in physical plane (-pi/2,pi/2]

                    %select Kinematic Points
                    delta_a = round((d1/st/2+0.5)*[-cos(angle),-sin(angle)]);
                    delta_b = round((d1/st/2+0.5)*[cos(angle),sin(angle)]);

                    y_max = max(cracklocation(1)+delta_a(1),cracklocation(1)+delta_b(1));
                    y_min = min(cracklocation(1)+delta_a(1),cracklocation(1)+delta_b(1));
                    x_max = max(cracklocation(2)+delta_a(2),cracklocation(2)+delta_b(2));
                    x_min = min(cracklocation(2)+delta_a(2),cracklocation(2)+delta_b(2));

                    % check boundary of aoi
                    if ~(x_max <= dimh && x_min > 0 && y_max <= dimv && y_min > 0)
                        continue
                    end

                    % a1 and b1 = first reference points
                    a1 = cracklocation + delta_a;
                    b1 = cracklocation + delta_b;

                    % a2 and b2 = last reference points
                    a2 = a1 + round((d2/st+0.5) * [-sin(angle),cos(angle)]);
                    a2_flipped = a1 - round((d2/st+0.5) * [-sin(angle),cos(angle)]);

                    b2 = b1 + round((d2/st+0.5) * [-sin(angle),cos(angle)]);
                    b2_flipped = b1 - round((d2/st+0.5)*[-sin(angle),cos(angle)]);


                    % check validity of boundary reference points
                    if BOUNDARYHOLES(a1(1),a1(2)) == 1 || BOUNDARYHOLES(b1(1),b1(2)) == 1
                        dlg_value = min(dlg_value + 1 / count,1);
                        continue
                    end

                    valid_a = 1;
                    valid_a_flipped = 1;
                    valid_b = 1;
                    valid_b_flipped = 1;

                    % a2
                    if a2(1) > dimv || a2(1) <= 0 || a2(2) > dimh || a2(2) <= 0
                        valid_a = 0;
                    else
                        if BOUNDARYHOLES(a2(1),a2(2)) == 1
                            valid_a = 0;
                        end
                    end

                    % a2_flipped
                    if a2_flipped(1) > dimv || a2_flipped(1) <= 0 || a2_flipped(2) > dimh || a2_flipped(2) <= 0
                        valid_a_flipped = 0;
                    else
                        if BOUNDARYHOLES(a2_flipped(1),a2_flipped(2)) == 1
                            valid_a_flipped = 0;
                        end
                    end

                    % b2
                    if b2(1) > dimv || b2(1) <= 0 || b2(2) > dimh || b2(2) <= 0
                        valid_b = 0;
                    else
                        if BOUNDARYHOLES(b2(1),b2(2)) == 1
                            valid_b = 0;
                        end
                    end

                    % b_flipped
                    if b2_flipped(1) > dimv || b2_flipped(1) <= 0 || b2_flipped(2) > dimh || b2_flipped(2) <= 0
                        valid_b_flipped = 0;
                    else
                        if BOUNDARYHOLES(b2_flipped(1),b2_flipped(2)) == 1
                            valid_b_flipped = 0;
                        end
                    end

                    % check validity
                    if (valid_a == 0 && valid_a_flipped == 0) || (valid_b == 0 && valid_b_flipped == 0)
                        continue
                    end


                    % get undeformed reference points (all points)
                    if valid_a == 1
                        Ga = gridpath(a1,a2);
                        BRANCH(i).referencepoints.a.v_index{j} = Ga(:,1)';
                        BRANCH(i).referencepoints.a.h_index{j} = Ga(:,2)';

                        P_a_undeformed = indextomm([BRANCH(i).referencepoints.a.v_index{j}',BRANCH(i).referencepoints.a.h_index{j}'],...
                            DICCoordinates.AOI{aoi}.X,...
                            DICCoordinates.AOI{aoi}.Y);
                    end

                    if valid_a_flipped == 1
                        Ga_flipped = gridpath(a1,a2_flipped);
                        BRANCH(i).referencepoints.a_flipped.v_index{j} = Ga_flipped(:,1)';
                        BRANCH(i).referencepoints.a_flipped.h_index{j} = Ga_flipped(:,2)';

                        P_a_flipped_undeformed = indextomm([BRANCH(i).referencepoints.a_flipped.v_index{j}',BRANCH(i).referencepoints.a_flipped.h_index{j}'],...
                            DICCoordinates.AOI{aoi}.X,...
                            DICCoordinates.AOI{aoi}.Y);
                    end

                    if valid_b == 1
                        Gb = gridpath(b1,b2);
                        BRANCH(i).referencepoints.b.v_index{j} = Gb(:,1)';
                        BRANCH(i).referencepoints.b.h_index{j} = Gb(:,2)';

                        P_b_undeformed = indextomm([BRANCH(i).referencepoints.b.v_index{j}',BRANCH(i).referencepoints.b.h_index{j}'],...
                            DICCoordinates.AOI{aoi}.X,...
                            DICCoordinates.AOI{aoi}.Y);
                    end

                    if valid_b_flipped == 1
                        Gb_flipped = gridpath(b1,b2_flipped);
                        BRANCH(i).referencepoints.b_flipped.v_index{j} = Gb_flipped(:,1)';
                        BRANCH(i).referencepoints.b_flipped.h_index{j} = Gb_flipped(:,2)';

                        P_b_flipped_undeformed = indextomm([BRANCH(i).referencepoints.b_flipped.v_index{j}',BRANCH(i).referencepoints.b_flipped.h_index{j}'],...
                            DICCoordinates.AOI{aoi}.X,...
                            DICCoordinates.AOI{aoi}.Y);
                    end


                    % check relation between image and physical coordinate
                    % system - relevant for orientaton

                    % undeformed coordinates of kinematic points in [mm]
                    A=[DICCoordinates.AOI{aoi}.X(a1(1),a1(2)) ; DICCoordinates.AOI{aoi}.Y(a1(1),a1(2))];
                    B=[DICCoordinates.AOI{aoi}.X(b1(1),b1(2)) ; DICCoordinates.AOI{aoi}.Y(b1(1),b1(2))];

                    % Crack point location
                    O=[(A(1)+B(1));A(2)+B(2)]/2;

                    % vectors between origin and kinematic points in
                    % undeformed state
                    Oa=(A-O);

                    AB_dir = 1;
                    if angdiff(BRANCH(i).Orientation(j)/180*pi , atan2d(Oa(2),Oa(1))/180*pi)*180/pi < 0
                        AB_dir = -1;
%                         if Angle < 0
%                             Angle = Angle + pi;
%                         else
%                             Angle = Angle - pi;
%                         end
                    end


                    % Loop over measuring stages
                    for k=1:length(DICdata)

                        % rigid motion of crack lip A
                        if valid_a == 1
                            P_a_deformed = indextomm([BRANCH(i).referencepoints.a.v_index{j}',BRANCH(i).referencepoints.a.h_index{j}'],...
                                DICdata{k}.AOI{aoi}.U,...
                                DICdata{k}.AOI{aoi}.V)+P_a_undeformed;
                            w_a = weights(...
                                [BRANCH(i).referencepoints.a.v_index{j};BRANCH(i).referencepoints.a.h_index{j}],...
                                [BRANCH(i).v_index(j);BRANCH(i).h_index(j)],DICdata{1}.AOI{aoi}.sigma...
                                );

                            [R_a,t_a] = rotSVD(P_a_undeformed,P_a_deformed,w_a);

                            error_a = errorSVD(P_a_undeformed,P_a_deformed,R_a,t_a,w_a);
                        end

                        if valid_a_flipped == 1
                            P_a_flipped_deformed = indextomm([BRANCH(i).referencepoints.a_flipped.v_index{j}',BRANCH(i).referencepoints.a_flipped.h_index{j}'],...
                                DICdata{k}.AOI{aoi}.U,...
                                DICdata{k}.AOI{aoi}.V)+P_a_flipped_undeformed;
                            w_a_flipped = weights(...
                                [BRANCH(i).referencepoints.a_flipped.v_index{j};BRANCH(i).referencepoints.a_flipped.h_index{j}],...
                                [BRANCH(i).v_index(j);BRANCH(i).h_index(j)],DICdata{1}.AOI{aoi}.sigma...
                                );

                            [R_a_flipped,t_a_flipped] = rotSVD(P_a_flipped_undeformed,P_a_flipped_deformed,w_a_flipped);

                            error_a_flipped = errorSVD(P_a_flipped_undeformed,P_a_flipped_deformed,R_a_flipped,t_a_flipped,w_a_flipped);
                        end

                        % rigid motion of crack lip B
                        if valid_b == 1
                            P_b_deformed = indextomm([BRANCH(i).referencepoints.b.v_index{j}',BRANCH(i).referencepoints.b.h_index{j}'],...
                                DICdata{k}.AOI{aoi}.U,...
                                DICdata{k}.AOI{aoi}.V)+P_b_undeformed;
                            w_b = weights(...
                                [BRANCH(i).referencepoints.b.v_index{j};BRANCH(i).referencepoints.b.h_index{j}],...
                                [BRANCH(i).v_index(j);BRANCH(i).h_index(j)],DICdata{1}.AOI{aoi}.sigma...
                                );

                            [R_b,t_b] = rotSVD(P_b_undeformed,P_b_deformed,w_b);

                            error_b = errorSVD(P_b_undeformed,P_b_deformed,R_b,t_b,w_b);
                        end

                        if valid_b_flipped == 1
                            P_b_flipped_deformed = indextomm([BRANCH(i).referencepoints.b_flipped.v_index{j}',BRANCH(i).referencepoints.b_flipped.h_index{j}'],...
                                DICdata{k}.AOI{aoi}.U,...
                                DICdata{k}.AOI{aoi}.V)+P_b_flipped_undeformed;
                            w_b_flipped = weights(...
                                [BRANCH(i).referencepoints.b_flipped.v_index{j};BRANCH(i).referencepoints.b_flipped.h_index{j}],...
                                [BRANCH(i).v_index(j);BRANCH(i).h_index(j)],DICdata{1}.AOI{aoi}.sigma...
                                );


                            [R_b_flipped,t_b_flipped] = rotSVD(P_b_flipped_undeformed,P_b_flipped_deformed,w_b_flipped);

                            error_b_flipped = errorSVD(P_b_flipped_undeformed,P_b_flipped_deformed,R_b_flipped,t_b_flipped,w_b_flipped);
                        end


                        % side A
                        if valid_a == 1 && valid_a_flipped == 0
                            if isnan(error_a)
                                continue
                            end
                            flipped_a = 0;
                        end
                        if valid_a == 0 && valid_a_flipped == 1
                            if isnan(error_a_flipped)
                                continue
                            end
                            flipped_a = 1;
                        end
                        if valid_a == 1 && valid_a_flipped == 1
                            if ~isnan(error_a) && isnan(error_a_flipped)
                                flipped_a = 0;
                            end
                            if isnan(error_a) && ~isnan(error_a_flipped)
                                flipped_a = 1;
                            end
                            if ~isnan(error_a) && ~isnan(error_a_flipped)
                                if error_a > error_a_flipped
                                    flipped_a = 1;
                                else
                                    flipped_a = 0;
                                end
                            end
                            if isnan(error_a) && isnan(error_a_flipped)
                                continue
                            end
                        end

                        if flipped_a == 1
                            P_a_deformed = P_a_flipped_deformed;
                            w_a = w_a_flipped;
                            R_a = R_a_flipped;
                            t_a = t_a_flipped;
                            error_a = error_a_flipped;
                        end

                        % side B
                        if valid_b == 1 && valid_b_flipped == 0
                            if isnan(error_b)
                                continue
                            end
                            flipped_b = 0;
                        end
                        if valid_b == 0 && valid_b_flipped == 1
                            if isnan(error_b_flipped)
                                continue
                            end
                            flipped_b = 1;
                        end
                        if valid_b == 1 && valid_b_flipped == 1
                            if ~isnan(error_b) && isnan(error_b_flipped)
                                flipped_b = 0;
                            end
                            if isnan(error_b) && ~isnan(error_b_flipped)
                                flipped_b = 1;
                            end
                            if ~isnan(error_b) && ~isnan(error_b_flipped)
                                if error_b > error_b_flipped
                                    flipped_b = 1;
                                else
                                    flipped_b = 0;
                                end
                            end
                            if isnan(error_b) && isnan(error_b_flipped)
                                continue
                            end
                        end

                        if flipped_b == 1
                            P_b_deformed = P_b_flipped_deformed;
                            w_b = w_b_flipped;
                            R_b = R_b_flipped;
                            t_b = t_b_flipped;
                            error_b = error_b_flipped;
                        end

                        % convert Rotation matrix to 2d rotation angle
                        eul_a = rotm2eul(vertcat(horzcat(R_a,[1;1]),[1,1,1]));
                        theta_a = eul_a(1);

                        eul_b = rotm2eul(vertcat(horzcat(R_b,[1;1]),[1,1,1]));
                        theta_b = eul_b(1);

                        % compute crack lip displacements
                        cracklip_a_kinematic = R_a*CrackLocation+t_a-CrackLocation;
                        cracklip_b_kinematic = R_b*CrackLocation+t_b-CrackLocation;

                        % crack kinematic vector
                        delta_AB_cr=cracklip_a_kinematic-cracklip_b_kinematic;
                        delta_AB_cr=[delta_AB_cr(1),delta_AB_cr(2)];
                        delta_AB_cr = delta_AB_cr*AB_dir;

                        % mean rotation of crack lip A and B
                        dphi=(theta_a+theta_b)/2;

                        % adjusted crack opening and sliding direction
                        crack_op=[-sin(Angle+dphi),cos(Angle+dphi)];
                        crack_dir=[cos(Angle+dphi),sin(Angle+dphi)];

                        % crack  opening and sliding
                        opening=dot(delta_AB_cr,crack_op);
                        sliding=dot(delta_AB_cr,crack_dir);

                        % assign values of error accepted
                        error_tot = sqrt((error_a^2+error_b^2)/2);
                        if error_tot <= app.AppData.KMProperties.reliabilityThreshold
                            BRANCH(i).theta_a(j,k)=theta_a*180/pi;
                            BRANCH(i).theta_b(j,k)=theta_b*180/pi;

                            BRANCH(i).width(j,k) = opening;
                            BRANCH(i).slip(j,k) = sliding;

                        end

                        BRANCH(i).flipped_a(j,k) = flipped_a;
                        BRANCH(i).flipped_b(j,k) = flipped_b;
                        BRANCH(i).residual_a(j,k) = error_a;
                        BRANCH(i).residual_b(j,k) = error_b;
                        BRANCH(i).reliability_index(j,k) = error_tot;



                    end

                    dlg_value = min(dlg_value + 1 / count,1);

                    if abs(seconds-toc)>0.1

                        dlg.Value = dlg_value;
                        seconds = toc;

                        minutes_text = floor(seconds/dlg_value*(1-dlg_value)/60);
                        seconds_text = floor(seconds/dlg_value*(1-dlg_value)) - minutes_text*60;
                        text = [num2str(minutes_text,'%.0f'),' minutes ',num2str(seconds_text,'%.0f'),' seconds'];
                        if minutes_text < 1
                            text = [num2str(seconds_text,'%.0f'),' seconds'];
                        end
                        dlg.Message = {'Calculating kinematics...',['Estimated remaining time: ',text]};
                    end
                end

            end


            app.AppData.BRANCH = BRANCH;

            assignin("base","LocalAppData",app.LocalAppData)
            assignin("base","AppData",app.AppData)
            assignin("base",'BRANCH',BRANCH)
        end



        function [kx,ky,hx,hy,br_no,index,ls,ori,width,slip,error] = Tab3_updatekinematicplot(app)

            BRANCH = app.AppData.BRANCH;

            % [x1,y1] coordinates if only crack width is shown
            % [x2,y2] coordinates if only crack slip is shown
            % [x3,y3] coordinates if crack width and slip is shown combined

            FAMILY=app.AppData.FAMILY;

            FAMILY_visibilities = zeros(1,length(FAMILY));
            if ~isempty(app.CrackfamiliesListBox_2.Value)
                FAMILY_visibilities(app.CrackfamiliesListBox_2.Value) = 1;
            end

            ydir = Ydirection(app);

            kinematicline_LS = zeros(1,length(app.LocalAppData.DICFiles));
            if ~isempty(app.DICmeasuringstagesListBox_2.Value)
                kinematicline_LS(app.DICmeasuringstagesListBox_2.Value) = 1;
            end

            hl_interval = app.AppData.VisualizationParameters.KinVecHelpLineInterval;
            plotfactor = app.AppData.VisualizationParameters.KinVecfac;

            minValue = app.AppData.VisualizationParameters.MinCrackWidth;
            minSteps = app.AppData.VisualizationParameters.MinSteps;


            kx=[]; %kinematicline
            ky=[];
            hx=[]; %helpline
            hy=[];

            br_no = [];
            index = [];
            ori = [];
            ls = [];
            width=[];
            slip=[];
            error=[];


            if app.CrackopeningonlyButton.Value
                kinematic_case=[1 0 0;1 0 0];
            end
            if app.CracksliponlyButton.Value
                kinematic_case=[0 0 1;0 0 -1];
            end
            if app.FullcrackdisplacementvectoropeningandslidingButton.Value
                kinematic_case=[1 1 0;1 1 0];
            end

            tic
            for i=1:length(BRANCH)
                if sum([FAMILY_visibilities(BRANCH(i).family)])>0

                    if app.SmoothedButton.Value && isfield(BRANCH,'width_filt')
                        BRANCH(i).width =  BRANCH(i).width_filt;
                        BRANCH(i).slip =  BRANCH(i).slip_filt;
                    end

                    F_width = BRANCH(i).width;
                    F_slip = BRANCH(i).slip;

                    if isempty(F_width)
                        continue
                    end

                    if app.SmoothedButton.Value && isfield(BRANCH,'x_filt')
                        BRANCH(i).x =  BRANCH(i).x_filt;
                        BRANCH(i).y =  BRANCH(i).y_filt;
                        BRANCH(i).X =  BRANCH(i).X_filt;
                        BRANCH(i).Y =  BRANCH(i).Y_filt;
                    end


                    [F_width,F_slip]=Tab3_removesmallcrackkinematics(F_width,F_slip,minValue,minSteps);

                    % HelpLine

                    for j=1:hl_interval:length(BRANCH(i).X)
                        if app.PhysicalcoordinatesmmButton.Value
                            hx=[hx;BRANCH(i).X(j)];
                            hy=[hy;BRANCH(i).Y(j)*ydir];
                        else
                            hx=[hx;BRANCH(i).x(j)];
                            hy=[hy;BRANCH(i).y(j)];
                        end
                        for k=1:length(app.LocalAppData.DICFiles)
                            if kinematicline_LS(k)==1 && ~isnan(F_width(j,k))

                                if app.PhysicalcoordinatesmmButton.Value
                                    angle_cr=BRANCH(i).Orientation_plot(j)/180*pi;
                                else
                                    angle_cr=BRANCH(i).orientation_plot(j)/180*pi;
                                end

                                op_dir(1)=-sin(angle_cr);
                                op_dir(2)=-cos(angle_cr);
                                sl_dir(1)=cos(angle_cr);
                                sl_dir(2)=-sin(angle_cr);

                                if app.PhysicalcoordinatesmmButton.Value
                                    dist_x=BRANCH(i).X(j)+plotfactor*(op_dir(1)*F_width(j,k)*kinematic_case(1,1)+sl_dir(1)*F_slip(j,k)*kinematic_case(1,2)+sl_dir(2)*F_slip(j,k)*kinematic_case(1,3));
                                    dist_y=BRANCH(i).Y(j)*ydir+plotfactor*(op_dir(2)*F_width(j,k)*kinematic_case(2,1)+sl_dir(2)*F_slip(j,k)*kinematic_case(2,2)+sl_dir(1)*F_slip(j,k)*kinematic_case(2,3));
                                else
                                    dist_x=BRANCH(i).x(j)+plotfactor*(op_dir(1)*F_width(j,k)*kinematic_case(1,1)+sl_dir(1)*F_slip(j,k)*kinematic_case(1,2)+sl_dir(2)*F_slip(j,k)*kinematic_case(1,3));
                                    dist_y=BRANCH(i).y(j)+plotfactor*(op_dir(2)*F_width(j,k)*kinematic_case(2,1)+sl_dir(2)*F_slip(j,k)*kinematic_case(2,2)+sl_dir(1)*F_slip(j,k)*kinematic_case(2,3));
                                end

                                hx=[hx;dist_x];
                                hy=[hy;dist_y];
                            end
                        end
                        hx=[hx;nan];
                        hy=[hy;nan];
                    end
                    hx=[hx;nan];
                    hy=[hy;nan];



                    % only draw kinematic lines for branches which are assigned to at least
                    % one family
                    for k=1:length(BRANCH(i).width(1,:))
                        if kinematicline_LS(k)==1

                            for j=1:length(BRANCH(i).X)
                                if ~isnan(BRANCH(i).width(j,k))

                                    if app.PhysicalcoordinatesmmButton.Value
                                        angle_cr=BRANCH(i).Orientation_plot(j)/180*pi;
                                    else
                                        angle_cr=BRANCH(i).orientation_plot(j)/180*pi;
                                    end


                                    op_dir(1)=-sin(angle_cr);
                                    op_dir(2)=-cos(angle_cr);
                                    sl_dir(1)=cos(angle_cr);
                                    sl_dir(2)=-sin(angle_cr);

                                    if app.PhysicalcoordinatesmmButton.Value
                                        dist_x=BRANCH(i).X(j)+plotfactor*(op_dir(1)*F_width(j,k)*kinematic_case(1,1)+sl_dir(1)*F_slip(j,k)*kinematic_case(1,2)+sl_dir(2)*F_slip(j,k)*kinematic_case(1,3));
                                        dist_y=BRANCH(i).Y(j)*ydir+plotfactor*(op_dir(2)*F_width(j,k)*kinematic_case(2,1)+sl_dir(2)*F_slip(j,k)*kinematic_case(2,2)+sl_dir(1)*F_slip(j,k)*kinematic_case(2,3));
                                    else
                                        dist_x=BRANCH(i).x(j)+plotfactor*(op_dir(1)*F_width(j,k)*kinematic_case(1,1)+sl_dir(1)*F_slip(j,k)*kinematic_case(1,2)+sl_dir(2)*F_slip(j,k)*kinematic_case(1,3));
                                        dist_y=BRANCH(i).y(j)+plotfactor*(op_dir(2)*F_width(j,k)*kinematic_case(2,1)+sl_dir(2)*F_slip(j,k)*kinematic_case(2,2)+sl_dir(1)*F_slip(j,k)*kinematic_case(2,3));
                                    end

                                    kx=[kx;dist_x];
                                    ky=[ky;dist_y];
                                    br_no=[br_no;i];
                                    index=[index;j];
                                    ls=[ls;app.AppData.DICDataFileNames(k)];
                                    ori = [ori;BRANCH(i).Orientation(j)];
                                    width=[width;BRANCH(i).width(j,k)];
                                    slip=[slip;BRANCH(i).slip(j,k)];
                                    error=[error;BRANCH(i).reliability_index(j,k)];
                                else
                                    kx=[kx;nan];
                                    ky=[ky;nan];
                                    br_no=[br_no;nan];
                                    index=[index;nan];
                                    ls=[ls;""];
                                    ori = [ori;nan];
                                    width=[width;nan];
                                    slip=[slip;nan];
                                    error=[error;nan];
                                end

                            end
                            kx=[kx;nan];
                            ky=[ky;nan];
                            br_no=[br_no;nan];
                            index=[index;nan];
                            ls=[ls;""];
                            ori = [ori;nan];
                            width=[width;nan];
                            slip=[slip;nan];
                            error=[error;nan];
                        end
                    end
                end

                kx=[kx;nan];
                ky=[ky;nan];
                br_no=[br_no;nan];
                index=[index;nan];
                ls=[ls;""];
                ori = [ori;nan];
                width=[width;nan];
                slip=[slip;nan];
                error=[error;nan];
            end

        end

        function [cx,cy,cData] = Tab3_updatecontourplot(app)

            BRANCH = app.AppData.BRANCH;

            FAMILY=app.AppData.FAMILY;

            FAMILY_visibilities = zeros(1,length(FAMILY));
            if ~isempty(app.CrackfamiliesListBox_2.Value)
                FAMILY_visibilities(app.CrackfamiliesListBox_2.Value) = 1;
            end

            ydir = Ydirection(app);

            crackcontour_LS = app.DICmeasuringstagesListBox_2.Value;
            plotfactor = app.AppData.VisualizationParameters.ContourFfac/2;

            minValue = app.AppData.VisualizationParameters.MinCrackWidth;
            minSteps = app.AppData.VisualizationParameters.MinSteps;


            cx=[]; %kinematicline
            cy=[];
            cData = [];

            cmap=colormap(app.UIAxes_3,jet(100));

            count=1;
            for i=1:length(BRANCH)
                if sum([FAMILY_visibilities(BRANCH(i).family)])>0

                    if app.SmoothedButton.Value && isfield(BRANCH,'width_filt')
                        BRANCH(i).width =  BRANCH(i).width_filt;
                        BRANCH(i).slip =  BRANCH(i).slip_filt;
                    end

                    F_width=BRANCH(i).width;
                    F_slip=BRANCH(i).slip;


                    if isempty(F_width)
                        continue
                    end

                    if app.SmoothedButton.Value && isfield(BRANCH,'x_filt')
                        BRANCH(i).x =  BRANCH(i).x_filt;
                        BRANCH(i).y =  BRANCH(i).y_filt;
                        BRANCH(i).X =  BRANCH(i).X_filt;
                        BRANCH(i).Y =  BRANCH(i).Y_filt;
                    end

                    [F_width,F_slip]=Tab3_removesmallcrackkinematics(F_width,F_slip,minValue,minSteps);

                    if app.ReliabilityindexButton.Value
                        F_width=BRANCH(i).reliability_index;

                    end
                    % interpolate missing value
                    %                     [F_width,F_slip]=T3_removesmallcrackkinematics(F_width,F_slip,minValue,minSteps);


                    k=crackcontour_LS;
                    % only draw kinematic lines for branches which are assigned to at least
                    % one family

                    for j=1:length(BRANCH(i).x)-1


                        if app.PhysicalcoordinatesmmButton.Value
                            angle_cr=BRANCH(i).Orientation_plot(j)/180*pi;
                        else
                            angle_cr=BRANCH(i).orientation_plot(j)/180*pi;
                        end

                        op_dir(1)=-sin(angle_cr);
                        op_dir(2)=-cos(angle_cr);
                        sl_dir(1)=cos(angle_cr);
                        sl_dir(2)=-sin(angle_cr);

                        if app.PhysicalcoordinatesmmButton.Value
                            angle_cr1=BRANCH(i).Orientation_plot(j+1)/180*pi;
                        else
                            angle_cr1=BRANCH(i).orientation_plot(j+1)/180*pi;
                        end

                        op_dir1(1)=-sin(angle_cr1);
                        op_dir1(2)=-cos(angle_cr1);
                        sl_dir1(1)=cos(angle_cr1);
                        sl_dir1(2)=-sin(angle_cr1);

                        if app.PhysicalcoordinatesmmButton.Value
                            dist_x_pos=BRANCH(i).X(j)+plotfactor*op_dir(1)*F_width(j,k);
                            dist_y_pos=BRANCH(i).Y(j)*ydir+plotfactor*op_dir(2)*F_width(j,k);

                            dist_x_neg=BRANCH(i).X(j)-plotfactor*op_dir(1)*F_width(j,k);
                            dist_y_neg=BRANCH(i).Y(j)*ydir-plotfactor*op_dir(2)*F_width(j,k);

                            dist_x_pos1=BRANCH(i).X(j+1)+plotfactor*op_dir1(1)*F_width(j+1,k);
                            dist_y_pos1=BRANCH(i).Y(j+1)*ydir+plotfactor*op_dir1(2)*F_width(j+1,k);

                            dist_x_neg1=BRANCH(i).X(j+1)-plotfactor*op_dir1(1)*F_width(j+1,k);
                            dist_y_neg1=BRANCH(i).Y(j+1)*ydir-plotfactor*op_dir1(2)*F_width(j+1,k);
                        else
                            dist_x_pos=BRANCH(i).x(j)+plotfactor*op_dir(1)*F_width(j,k);
                            dist_y_pos=BRANCH(i).y(j)+plotfactor*op_dir(2)*F_width(j,k);

                            dist_x_neg=BRANCH(i).x(j)-plotfactor*op_dir(1)*F_width(j,k);
                            dist_y_neg=BRANCH(i).y(j)-plotfactor*op_dir(2)*F_width(j,k);

                            dist_x_pos1=BRANCH(i).x(j+1)+plotfactor*op_dir1(1)*F_width(j+1,k);
                            dist_y_pos1=BRANCH(i).y(j+1)+plotfactor*op_dir1(2)*F_width(j+1,k);

                            dist_x_neg1=BRANCH(i).x(j+1)-plotfactor*op_dir1(1)*F_width(j+1,k);
                            dist_y_neg1=BRANCH(i).y(j+1)-plotfactor*op_dir1(2)*F_width(j+1,k);
                        end

                        cx([1:4]+4*(count-1))=[dist_x_pos dist_x_pos1 dist_x_neg1 dist_x_neg];
                        cy([1:4]+4*(count-1))=[dist_y_pos dist_y_pos1 dist_y_neg1 dist_y_neg];



                        if app.CrackopeningonlyButton.Value && app.colorButton.Value
                            ratio = F_width(j,k)/app.AppData.VisualizationParameters.MaxCrackWidth;
                            ratio1 = F_width(j+1,k)/app.AppData.VisualizationParameters.MaxCrackWidth;
                            ratio = max(0.0001,min(1,ratio));
                            ratio1 = max(0.0001,min(1,ratio1));

                            cData([1:4]+4*(count-1))=[ceil(ratio*length(cmap)) ceil(ratio1*length(cmap)) ceil(ratio1*length(cmap)) ceil(ratio1*length(cmap))];


                        elseif app.FullcrackdisplacementvectoropeningandslidingButton.Value
                            ratio=F_slip(j,k)/F_width(j,k);
                            ratio1=F_slip(j+1,k)/F_width(j+1,k);

                            %                             %%
                            %                             ratio=F_slip(j,k);
                            %                             ratio1=F_slip(j+1,k);
                            %                             %%

                            ratio=max(-0.9999,min(1,ratio));
                            ratio1=max(-0.9999,min(1,ratio1));

                            cData([1:4]+4*(count-1))=[ceil(ratio*length(cmap)/2+length(cmap)/2) ceil(ratio1*length(cmap)/2+length(cmap)/2) ceil(ratio1*length(cmap)/2+length(cmap)/2) ceil(ratio1*length(cmap)/2+length(cmap)/2)];
                        else
                            ratio = F_width(j,k)/app.AppData.VisualizationParameters.MaxError;
                            ratio1 = F_width(j+1,k)/app.AppData.VisualizationParameters.MaxError;
                            ratio = max(0.0001,min(1,ratio));
                            ratio1 = max(0.0001,min(1,ratio1));

                            cData([1:4]+4*(count-1))=[ceil(ratio*length(cmap)) ceil(ratio1*length(cmap)) ceil(ratio1*length(cmap)) ceil(ratio1*length(cmap))];
                        end
                        count=count+1;

                    end

                end
            end
        end

        function [kx,ky,markersize,colour,br_no,index,ls,ori,width,slip] = Tab3_updatescatterplot(app)


            BRANCH = app.AppData.BRANCH;

            % [x1,y1] coordinates if only crack width is shown
            % [x2,y2] coordinates if only crack slip is shown
            % [x3,y3] coordinates if crack width and slip is shown combined

            FAMILY=app.AppData.FAMILY;

            FAMILY_visibilities = zeros(1,length(FAMILY));
            if ~isempty(app.CrackfamiliesListBox_2.Value)
                FAMILY_visibilities(app.CrackfamiliesListBox_2.Value) = 1;
            end

            ydir = Ydirection(app);

            crackcontour_LS = app.DICmeasuringstagesListBox_2.Value;
            plotfactor = app.AppData.VisualizationParameters.Scatterfac;

            minValue = app.AppData.VisualizationParameters.MinCrackWidth;
            minSteps = app.AppData.VisualizationParameters.MinSteps;


            kx=[]; %kinematicline
            ky=[];
            markersize = [];
            colour = [];
            br_no = [];
            index = [];
            ori = [];
            ls = [];
            width=[];
            slip=[];

            tempmat=[];


            cmap=colormap(app.UIAxes_3,jet(100));
            count = 0;
            for i=1:length(BRANCH)
                if sum([FAMILY_visibilities(BRANCH(i).family)])>0


                    if app.SmoothedButton.Value && isfield(BRANCH,'width_filt')
                        BRANCH(i).width =  BRANCH(i).width_filt;
                        BRANCH(i).slip =  BRANCH(i).slip_filt;
                    end

                    F_width = BRANCH(i).width(:,crackcontour_LS);
                    F_slip = BRANCH(i).slip(:,crackcontour_LS);
                    F_error = BRANCH(i).reliability_index(:,crackcontour_LS);

                    if isempty(F_width)
                        continue
                    end

                    if app.SmoothedButton.Value && isfield(BRANCH,'x_filt')
                        BRANCH(i).x =  BRANCH(i).x_filt;
                        BRANCH(i).y =  BRANCH(i).y_filt;
                        BRANCH(i).X =  BRANCH(i).X_filt;
                        BRANCH(i).Y =  BRANCH(i).Y_filt;
                    end

                    [F_width,F_slip]=Tab3_removesmallcrackkinematics(F_width,F_slip,minValue,minSteps);

                    k=crackcontour_LS;

                    if app.PhysicalcoordinatesmmButton.Value
                        kx = [kx,BRANCH(i).X'];
                        ky = [ky,BRANCH(i).Y'.*ydir];
                    else
                        kx = [kx,BRANCH(i).x'];
                        ky = [ky,BRANCH(i).y'];
                    end

                    if app.CrackopeningonlyButton.Value || app.FullcrackdisplacementvectoropeningandslidingButton.Value
                        markersize = [markersize, F_width'.*plotfactor];
                    else
                        markersize = [markersize, F_error'.*plotfactor];
                    end

                    if app.CrackopeningonlyButton.Value && app.bwButton.Value
                        colour = 'k';
                    else
                        if app.CrackopeningonlyButton.Value && app.colorButton.Value
                            ratio = F_width/app.AppData.VisualizationParameters.MaxCrackWidth;
                            ratio = max(0.0001,min(1,ratio));
                            for j=1:length(F_width)
                                count = count + 1;
                                colour(count,:) = cmap(ceil(ratio(j)*length(cmap)),:);
                            end
                        elseif app.FullcrackdisplacementvectoropeningandslidingButton.Value
                            ratio=F_slip./F_width;
                            ratio=max(-0.9999,min(1,ratio));

                            for j=1:length(F_width)
                                count = count + 1;
                                colour(count,:) = cmap(ceil(ratio(j)*length(cmap)/2+length(cmap)/2),:);
                            end
                        else
                            ratio = F_error/app.AppData.VisualizationParameters.MaxError;
                            ratio = max(0.0001,min(1,ratio));
                            for j=1:length(F_error)
                                count = count + 1;
                                colour(count,:) = cmap(ceil(ratio(j)*length(cmap)),:);
                            end
                        end
                    end

                    br_no = [br_no,BRANCH(i).X'.*0+i];
                    index = [index,1:length(BRANCH(i).X)];
                    ori = [ori,BRANCH(i).Orientation'];
                    ls = [ls,repmat(app.AppData.DICDataFileNames(k),1,length(BRANCH(i).X'))];
                    width = [width,BRANCH(i).width(:,crackcontour_LS)'];
                    slip = [slip,BRANCH(i).slip(:,crackcontour_LS)'];
                end
            end

            markersize = max(markersize,0.0001);

        end

        function BRANCH = Tab3_filterCrackLine(app,BRANCH)
            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Please Wait',...
                'Message','Smoothing crack line...',"Cancelable",'on');

            span = app.AppData.SmoothingParameters.CLSpan;
            method = app.AppData.SmoothingParameters.CLMethod;
            for i=1:length(BRANCH)
                if dlg.CancelRequested
                    BRANCH = [];
                    return
                end
                BRANCH(i).x_filt=smooth(BRANCH(i).x,span,method);
                BRANCH(i).y_filt=smooth(BRANCH(i).y,span,method);
                BRANCH(i).X_filt=smooth(BRANCH(i).X,span,method);
                BRANCH(i).Y_filt=smooth(BRANCH(i).Y,span,method);
                BRANCH(i).Z_filt=smooth(BRANCH(i).Z,span,method);
                dlg.Value = i / length(app.AppData.BRANCH);
            end
            delete(dlg)
        end


        function BRANCH = Tab3_filterCrackKinematics(app,BRANCH)
            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Please Wait',...
                'Message','Smoothing crack kinematics...',"Cancelable",'on');


            interpolationmethod = app.AppData.SmoothingParameters.KInterpolateMethod;
            span = app.AppData.SmoothingParameters.KSpan;
            smoothingmethod = app.AppData.SmoothingParameters.KMethod;

            for i=1:length(BRANCH)
                if dlg.CancelRequested
                    BRANCH = [];
                    return
                end
                if ~isempty(BRANCH(i).family)

                    x=nan(size(BRANCH(i).width));
                    y=nan(size(BRANCH(i).width));

                    %% transform in x,y
                    for j=1:length(BRANCH(i).x)
                        angle_cr = BRANCH(i).Orientation_plot(j)/180*pi;

                        rotM=[  -sin(angle_cr) -cos(angle_cr);...
                            cos(angle_cr) -sin(angle_cr)];

                        for k=1:length(BRANCH(i).width(1,:))
                            w=BRANCH(i).width(j,k);
                            s=BRANCH(i).slip(j,k);
                            if w<=0
                                w=nan;
                                s=nan;
                            end
                            r=[w,s]*rotM;
                            x(j,k)=r(1);
                            y(j,k)=r(2);

                        end
                    end

                    % fill missing crack kinematic measurements
                    x_filt=fillmissing(x,interpolationmethod,1,'EndValues','extrap');
                    y_filt=fillmissing(y,interpolationmethod,1,'EndValues','extrap');


                    if span > 1
                        for k=1:length(x_filt(1,:))
                            if sum(isnan(x_filt(:,k))) ~= length(x_filt(:,k))
                                x_filt(:,k)=smooth(x_filt(:,k),span,smoothingmethod);
                                y_filt(:,k)=smooth(y_filt(:,k),span,smoothingmethod);
                            end
                        end
                    end

                    % retransform in n,t
                    for j=1:length(BRANCH(i).x)
                        angle_cr = BRANCH(i).Orientation_plot(j)/180*pi;

                        rotM=[  -sin(angle_cr) -cos(angle_cr);...
                            cos(angle_cr) -sin(angle_cr)];


                        for k=1:length(BRANCH(i).width(1,:))
                            r=[x_filt(j,k),y_filt(j,k)]*rotM'; % for rotation matrices: inv(rotM)=rot'
                            BRANCH(i).width_filt(j,k)=r(1);
                            BRANCH(i).slip_filt(j,k)=r(2);
                        end

                    end


                end
                dlg.Value = i / length(app.AppData.BRANCH);
            end

            delete(dlg)
        end

    
    end


    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function UIFigureStartupFcn(app)
            % add files and folders to path

            folder = fileparts(mfilename('fullpath'));
            if (~isdeployed)
                addpath(genpath(folder));
            end


            % set icon
            app.ACDMUIFigure.Visible = 'off';
            drawnow;
            % set position to center of 1st monitor
            MP = get(0, 'MonitorPositions');
            MP1 = MP(1,:); %

            w = 1380;
            h = 720;

            app.ACDMUIFigure.Position = [MP1(1)+MP1(3)/2-w/2,MP1(2)+MP1(4)/2-h/2,w,h];

            if ~isdeployed
                webf = app.ACDMUIFigure;
                ww = getWebWindowOfUiFigure(webf);
                filepath = fileparts(mfilename('fullpath'));
                % ww.Icon = fullfile(filepath, '\images\acdm_icon.ico');
            end

            app.ACDMUIFigure.Visible = 'on';
            drawnow;
            figure(app.ACDMUIFigure)

            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Opening ACDM 2.0',...
                'Indeterminate','on');
            dlg.Icon = 'acdm_icon.png';

            drawnow;

            figure(app.ACDMUIFigure)

            app.TabGroup.Visible = 'off';


            check = checkDependencies(app);

            if check == 0
                delete(app)
                return
            end

            app.EdgedetectionButton.Value = 1;

            initiateProperties(app);
            setInteractivities(app);

            drawnow;
            figure(app.ACDMUIFigure)
            app.TabGroup.Visible = 'on';
            drawnow;
            figure(app.ACDMUIFigure)
            drawnow;


            delete(dlg)


            function webWindow = getWebWindowOfUiFigure(fig)

                figNameOrig = fig.Name;                   % original figure name
                figNameTemp = [fig.Name, tempname('$')];  % creaet a unique temporary figure name (in case of multiple figures with the same name exists
                fig.Name = figNameTemp;     % rename the figure in case of multiple figures with the same name exists
                drawnow
                ww = matlab.internal.webwindowmanager.instance.findAllWebwindows();
                webWindow = matlab.internal.webwindow.empty();
                for ii = 1:numel(ww)
                    if ~strcmp(ww(ii).Title, figNameTemp)
                        webWindow = ww(ii);
                        break;
                    end
                end
                fig.Name = figNameOrig;     % restore orignal figure name
            end

            %             app.ACDMUIFigure.WindowState = 'maximized';
        end

        % Callback function: ACDMUIFigure, QuitMenu
        function UIFigureCloseRequest(app, event)
            try
                isSaved = 0;
                if ~isempty(app.LocalAppData.ACDMfilepath)
                    oldACDMfile = load(app.LocalAppData.ACDMfilepath);
                    [~,data] = getUiControls(app);

                    if isequaln(data,oldACDMfile.savedUiControlData) && isequaln(app.AppData,oldACDMfile.savedAppData)
                        isSaved = 1;
                    end
                end

                if isempty(app.AppData.DICDataFileNames) % check wether data is contained, if not -> do not request saving.
                    isSaved = 1;
                end



                if ~isSaved
                    if ~isempty(app.LocalAppData.ACDMfilepath)
                        selection = uiconfirm(app.ACDMUIFigure,'Close ACDM without saving?','Confirm Close','Options',{'Close without Saving','Cancel','Save'},...
                            'DefaultOption',3,'CancelOption',2);
                        if strcmp(selection,'Cancel')
                            return
                        end
                        if strcmp(selection,'Save')
                            Menu1_SaveMenuSelected(app, event);
                            return
                        end

                    else
                        selection = uiconfirm(app.ACDMUIFigure,'Close ACDM without saving?','Confirm Close','Options',{'Close without Saving','Cancel','Save as..'},...
                            'DefaultOption',3,'CancelOption',2);
                        if strcmp(selection,'Cancel')
                            return
                        end
                        if strcmp(selection,'Save as..')
                            Menu1_SaveasMenuSelected(app, event);
                            return
                        end
                    end

                end
                delete(app)
            catch
                delete(app)
            end

        end

        % Menu selected function: NewMenu
        function Menu1_NewMenuSelected(app, event)
            ACDM;
        end

        % Menu selected function: OpenMenu
        function Menu1_OpenMenuSelected(app, event)

            [fileName,path] = uigetfile({'*.mat'},...
                'Open Project');

            drawnow;
            figure(app.ACDMUIFigure)
            drawnow;

            if path == 0 % if task is cancelled
                return
            end

            dlg = uiprogressdlg(app.ACDMUIFigure,'Title',['Open ',fileName,' ..'],...
                'Indeterminate','on');

            projectData = load([path,fileName]);

             try

                assignin("base",'projectData',projectData)

                % check if files exists
                check = 1;
                missingfiles = {};
                count = 0;
                for i = 1:length( projectData.savedAppData.DICDataFileNames)
                    if ~isfile([ projectData.savedAppData.DICDataFolderPath, projectData.savedAppData.DICDataFileNames{i}])
                        check = 0;
                        count = count+1;

                        missingfiles{count+3} = projectData.savedAppData.DICDataFileNames{i};

                    end
                end
                if check == 0
                    missingfiles{1} = 'The following files are missing in the data path:';
                    missingfiles{2} = projectData.savedAppData.DICDataFolderPath;
                    missingfiles{3} = '';

                    selection = uiconfirm(app.ACDMUIFigure,missingfiles,'Error',...
                        'Options',{'Ok'},...
                        "Icon",'error',...
                        'DefaultOption',1,'CancelOption',1);
                    return
                end

                loadedUiControlNames = projectData.savedUiControlNames;
                loadedUiControlData = projectData.savedUiControlData;
                
                app.AppData = projectData.savedAppData;
                app.LocalAppData.ACDMfilepath = [path,fileName];
               
                switch projectData.savedAppData.DataType
                    case 'VIC3D'
                        
                        [valid,fileNamesSum] = Tab1_checkDICfiles(app,projectData.savedAppData.DICDataFileNames,projectData.savedAppData.DICDataFolderPath,'VIC3D'); %check validity of selected DIC files
                        if ~valid
                            return
                        end
                        
                        
                        % load files
                        completed = Tab1_loadDICfiles(app,fileNamesSum,projectData.savedAppData.DICDataFolderPath,'VIC3D');
                        
                        if ~completed
                            return
                        end
                        
                    case 'VIC2D' 
                        
                        [valid,fileNamesSum] = Tab1_checkDICfiles(app,projectData.savedAppData.DICDataFileNames,projectData.savedAppData.DICDataFolderPath,'VIC2D'); %check validity of selected DIC files
                        if ~valid
                            return
                        end
                        
                        
                        % load files
                        completed = Tab1_loadDICfiles(app,fileNamesSum,projectData.savedAppData.DICDataFolderPath,'VIC2D');
                        
                        if ~completed
                            return
                        end
                        
                end
                
                for i = 1:numel(loadedUiControlData)

                    if strcmp(loadedUiControlData(i).Class,'matlab.ui.control.ListBox')
                        app.(loadedUiControlNames{i}).Multiselect = loadedUiControlData(i).Multiselect;
                    end

                    if strcmp(loadedUiControlData(i).Class,'matlab.ui.control.ListBox') || ...
                            strcmp(loadedUiControlData(i).Class,'matlab.ui.control.DropDown')
                        app.(loadedUiControlNames{i}).Items = loadedUiControlData(i).Items;
                        app.(loadedUiControlNames{i}).ItemsData = loadedUiControlData(i).ItemsData;
                        app.(loadedUiControlNames{i}).Value = loadedUiControlData(i).Value;

                        app.(loadedUiControlNames{i}).Visible = loadedUiControlData(i).Visible;
                        app.(loadedUiControlNames{i}).Enable = loadedUiControlData(i).Enable;
                    end

                    if strcmp(loadedUiControlData(i).Class,'matlab.ui.control.EditField') || ...
                            strcmp(loadedUiControlData(i).Class,'matlab.ui.control.NumericEditField') || ...
                            strcmp(loadedUiControlData(i).Class,'matlab.ui.control.RadioButton') || ...
                            strcmp(loadedUiControlData(i).Class,'matlab.ui.control.CheckBox')

                        app.(loadedUiControlNames{i}).Value = loadedUiControlData(i).Value;
                        app.(loadedUiControlNames{i}).Visible = loadedUiControlData(i).Visible;
                        app.(loadedUiControlNames{i}).Enable = loadedUiControlData(i).Enable;
                    end

                    if strcmp(loadedUiControlData(i).Class,'matlab.ui.control.Button')
                        app.(loadedUiControlNames{i}).Visible = loadedUiControlData(i).Visible;
                        app.(loadedUiControlNames{i}).Enable = loadedUiControlData(i).Enable;
                    end

                end
                

                setInteractivities(app);

                app.LocalAppData.TabPlot(1).reset = 1;
                app.LocalAppData.TabPlot(2).reset = 1;
                app.LocalAppData.TabPlot(3).reset = 1;
                uiplot(app,1)
                uiplot(app,2)
                uiplot(app,3)
                
            catch 
                uialert(app.ACDMUIFigure,{'Corrupted project file','','Problem occured during loading project'},'Error');
                initiateProperties(app);
                setInteractivities(app);
            end
            delete(dlg)
        end

        % Menu selected function: SaveMenu
        function Menu1_SaveMenuSelected(app, event)
            if ~isempty(app.LocalAppData.ACDMfilepath)
                dlg = uiprogressdlg(app.ACDMUIFigure,'Title',['Saving ','',' ..'],...
                    'Indeterminate','on');

                [savedUiControlNames,savedUiControlData] = getUiControls(app);

                savedAppData = app.AppData;

                save(app.LocalAppData.ACDMfilepath,"savedUiControlData","savedUiControlNames","savedAppData");

                setInteractivities(app);

                delete(dlg);

            else
                Menu1_SaveasMenuSelected(app, event)
            end
        end

        % Menu selected function: SaveasMenu
        function Menu1_SaveasMenuSelected(app, event)

            [fileName,path] = uiputfile({'*.mat'},...
                'Save Project');
            drawnow;
            figure(app.ACDMUIFigure)
            drawnow;
            if path == 0
                return
            end

            dlg = uiprogressdlg(app.ACDMUIFigure,'Title',['Saving ',fileName,' ..'],...
                'Indeterminate','on');

            app.LocalAppData.ACDMfilepath = [path,fileName];

            [savedUiControlNames,savedUiControlData] = getUiControls(app);

            savedAppData = app.AppData;

            save([path,fileName],"savedUiControlData","savedUiControlNames","savedAppData");

            setInteractivities(app);

            delete(dlg);


        end

        % Menu selected function: ExportMenu
        function Menu1_ExportMenuSelected(app, event)

            CRACKS = app.AppData.BRANCH;
            NODES = app.AppData.NODE;
            FAMILIES = app.AppData.FAMILY;
            DICDataFolderPath = app.AppData.DICDataFolderPath;
            DICDataFileNames = app.AppData.DICDataFileNames;
            DICProperties = app.AppData.DICProperties;
            CrackMeasurementProperties = app.AppData.KMProperties;
            SmoothingParameters = app.AppData.SmoothingParameters;
            DICCoordinates = app.LocalAppData.DICCoordinates;

            [FileName,PathName] = uiputfile('*.mat','Export Data..');

            dlg = uiprogressdlg(app.ACDMUIFigure,'Title',['Writing ',FileName,' ..'],...
                'Indeterminate','on');
            if ~isequal(FileName,0) && ~isequal(PathName,0)
                if isfield(CRACKS,'width_filt') || isfield(CRACKS,'x_filt')
                    save(fullfile(PathName,FileName),'CRACKS','NODES','FAMILIES','DICDataFolderPath','DICDataFileNames','DICProperties','DICCoordinates','CrackMeasurementProperties','SmoothingParameters');
                else
                    save(fullfile(PathName,FileName),'CRACKS','NODES','FAMILIES','DICDataFolderPath','DICDataFileNames','DICProperties','DICCoordinates','CrackMeasurementProperties');
                end
            end
            delete(dlg);
        end

        % Menu selected function: VIC2DCorrelatedsolutiondatafilesMenu
        function Menu2_VIC2DCorrelatedsolutiondatafilesMenuSelected(app, event)

             if ~isempty(app.AppData.DICDataFileNames)
                initialload = false;
                selection = uiconfirm(app.ACDMUIFigure,{'- Only DIC files stored in the current folder can be added.','','- Existing kinematic measurements will be removed.'},'Info: Additional DIC files',...
                    'Icon','info');
                if strcmp(selection,'Cancel')
                    return
                end
            else
                initialload = true;
            end
            

            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Loading Files',...
                'Indeterminate','on');

            [fileNames,path] = uigetfile('*.mat','Select Files to Open',app.AppData.DICDataFolderPath,'MultiSelect','on');

            figure(app.ACDMUIFigure)
            drawnow;
            pause(0.05);

            if path == 0 % if task is cancelled
                return
            end

            [valid,fileNamesSum] = Tab1_checkDICfiles(app,fileNames,path,'VIC2D'); %check validity of selected DIC files
            
            if ~valid
                return
            end
            
            
            % load files
            completed = Tab1_loadDICfiles(app,fileNamesSum,path,'VIC2D');
            
            if ~completed
                return
            end
            
            % remove kinematics
            removeKinematics(app)
            removeSmoothedValues(app);
            
            % set Interactivities
            app.PrincipalstrainsCheckBox.Value = 1;
            app.PrincipalstrainsCheckBox_2.Value = 1;
            
            app.SigmaCheckBox.Value = 0;
            app.SigmaCheckBox_2.Value = 0;
            
            app.DICfilesListBox.Items = app.AppData.DICDataFileNames;
            
            if initialload
                app.DICfilesListBox.Value = app.DICfilesListBox.Items{end};
            end
            
            app.DICdatapathEditField.Value = app.AppData.DICDataFolderPath;
            
            app.DICmeasuringstagesListBox_2.Items = app.AppData.DICDataFileNames;
            app.DICmeasuringstagesListBox_2.ItemsData = 1:numel(app.AppData.DICDataFileNames);

            app.ReferencedataDropDown.Items = app.AppData.DICDataFileNames;
            app.ReferencedataDropDown_2.Items = app.AppData.DICDataFileNames;

            app.LocalAppData.TabPlot(1).reset = 1;
            app.LocalAppData.TabPlot(2).reset = 1;
            app.LocalAppData.TabPlot(3).reset = 1;
            
         
            setInteractivities(app);
            uiplot(app,1);

            delete(dlg);
        end

        % Menu selected function: VIC3DCorrelatedsolutiondatafilesMenu
        function Menu2_VIC3DCorrelatedsolutiondatafilesMenuSelected(app, event)

            if ~isempty(app.AppData.DICDataFileNames)
                initialload = false;
                selection = uiconfirm(app.ACDMUIFigure,{'- Only DIC files stored in the current folder can be added.','','- Existing kinematic measurements will be removed.'},'Info: Additional DIC files',...
                    'Icon','info');
                if strcmp(selection,'Cancel')
                    return
                end
            else
                initialload = true;
            end
            
           

            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Loading Files',...
                'Indeterminate','on');

            [fileNames,path] = uigetfile('*.mat','Select Files to Open',app.AppData.DICDataFolderPath,'MultiSelect','on');

            figure(app.ACDMUIFigure)
            drawnow;
            pause(0.05);


            if path == 0 % if task is cancelled
                return
            end
            
            [valid,fileNamesSum] = Tab1_checkDICfiles(app,fileNames,path,'VIC3D'); %check validity of selected DIC files
            
            if ~valid
                return
            end
            
            
            % load files
            completed = Tab1_loadDICfiles(app,fileNamesSum,path,'VIC3D');
            
            if ~completed
                return
            end
            
            % remove kinematics
            removeKinematics(app)
            removeSmoothedValues(app);
            
            % set Interactivities
            app.PrincipalstrainsCheckBox.Value = 1;
            app.PrincipalstrainsCheckBox_2.Value = 1;
            
            app.SigmaCheckBox.Value = 0;
            app.SigmaCheckBox_2.Value = 0;
            
            app.DICfilesListBox.Items = app.AppData.DICDataFileNames;
            
            if initialload
                app.DICfilesListBox.Value = app.DICfilesListBox.Items{end};
            end
            
            app.DICdatapathEditField.Value = app.AppData.DICDataFolderPath;
            
            app.DICmeasuringstagesListBox_2.Items = app.AppData.DICDataFileNames;
            app.DICmeasuringstagesListBox_2.ItemsData = 1:numel(app.AppData.DICDataFileNames);

            app.ReferencedataDropDown.Items = app.AppData.DICDataFileNames;
            app.ReferencedataDropDown_2.Items = app.AppData.DICDataFileNames;

            app.LocalAppData.TabPlot(1).reset = 1;
            app.LocalAppData.TabPlot(2).reset = 1;
            app.LocalAppData.TabPlot(3).reset = 1;
            
         
            setInteractivities(app);
            uiplot(app,1);

            delete(dlg);

        end

        % Menu selected function: CrackpatternmodificationMenu
        function Menu3_CrackpatternmodificationMenuSelected(app, event)

            if ~isempty(app.AppData.FAMILY(1).Color)
                selection = uiconfirm(app.ACDMUIFigure,{'Modifying the crack pattern will clear all crack familys and kinematic measurements','','Do you want to process?'},'Warning: Delete data',...
                    'Icon','warning');
                if strcmp(selection,'Cancel')
                    return
                end
            end

            app.dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Modifying Crack Pattern',...
                'Indeterminate','on');

            oldBRANCH = app.AppData.BRANCH;
            app.CrackPatternModificationDialog = Tool_CrackModification(app);


            %             return
            %             uiwait(app.CrackPatternModificationDialog.UIFigure)
            %
            %
            %             if ~isequaln(oldBRANCH,app.AppData.BRANCH)
            %                 Tab2_resetFamilies(app)
            %                 app.AppData.FAMILY=struct('Name',[],'Color',[]);
            %                 app.CrackfamiliesListBox.Items = {};
            %                 app.CrackfamiliesListBox_2.Items = {};
            %
            %                 removeKinematics(app)
            %                 removeSmoothedValues(app)
            %
            %
            %                 app.LocalAppData.TabPlot(1).reset = 1;
            %                 app.LocalAppData.TabPlot(2).reset = 1;
            %                 app.LocalAppData.TabPlot(3).reset = 1;
            %
            %
            %                 if ~isempty(app.AppData.cracklineplotdata)
            %                     app.CracklinesCheckBox.Value = 1;
            %                     app.CracklinesCheckBox_2.Value = 1;
            %                     app.CracklinesCheckBox_3.Value = 1;
            %
            %                 end
            %                 setInteractivities(app);
            %                 uiplot(app,1);
            %                 uiplot(app,2);
            %
            %             end
            %             close(dlg)

        end

        % Menu selected function: CracklinelinkageMenu
        function Menu3_CracklinelinkageMenuSelected(app, event)

            if ~isempty(app.AppData.FAMILY(1).Color)
                selection = uiconfirm(app.ACDMUIFigure,{'Linking crack branches will clear all crack familys and kinematic measurements','','Do you want to process?'},'Warning: Delete data',...
                    'Icon','warning');
                if strcmp(selection,'Cancel')
                    return
                end
            end

            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Linking crack lines',...
                'Indeterminate','on');

            oldBRANCH = app.AppData.BRANCH;
            oldNODE = app.AppData.NODE;
            Menu3_linkCrackBranches(app)
            if ~isequaln(oldBRANCH,app.AppData.BRANCH)
                BRANCH_out = Tab1_setInclination(app,app.AppData.BRANCH);
                if isempty(BRANCH_out)
                    app.AppData.BRANCH = oldBRANCH;
                    app.AppData.NODE = oldNODE;
                    return
                end
                BRANCH_out = Tab1_setBRANCHLenth(app,BRANCH_out);
                if isempty(BRANCH_out)
                    app.AppData.BRANCH = oldBRANCH;
                    app.AppData.NODE = oldNODE;
                    return
                end
                app.AppData.BRANCH = BRANCH_out;

                setInteractivities(app)

                app.LocalAppData.TabPlot(1).reset = 1;
                app.LocalAppData.TabPlot(2).reset = 1;
                app.LocalAppData.TabPlot(3).reset = 1;
                uiplot(app,1);
                uiplot(app,2);
                uiplot(app,3);
            end

            delete(dlg)
        end

        % Menu selected function: SmoothingMenu
        function Menu3_SmoothingMenuSelected(app, event)
            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Smoothing data',...
                'Indeterminate','on');
            app.SmoothingDialog = Tool_Smoothing(app);
            uiwait(app.SmoothingDialog.UIFigure)

            if ~app.AppData.SmoothingParameters.DeleteSmoothedData && ~app.AppData.SmoothingParameters.Applied % cancelled
                return
            end

            if app.AppData.SmoothingParameters.DeleteSmoothedData
                if isfield(app.AppData.BRANCH,'x_filt')
                    app.AppData.BRANCH=rmfield(app.AppData.BRANCH,{'x_filt','y_filt','X_filt','Y_filt','Z_filt'});
                end
                if isfield(app.AppData.BRANCH,'width_filt')
                    app.AppData.BRANCH=rmfield(app.AppData.BRANCH,{'width_filt','slip_filt'});
                end

                app.OriginalButton.Value = 1;
                setInteractivities(app);
            end

            if app.AppData.SmoothingParameters.Applied

                % Crack line smoothing
                if app.AppData.SmoothingParameters.CLSpan > 1
                    BRANCH = Tab3_filterCrackLine(app,app.AppData.BRANCH);
                    if isempty(BRANCH)
                        return
                    end
                    app.AppData.BRANCH = BRANCH;
                else
                    if isfield(app.AppData.BRANCH,'x_filt')
                        app.AppData.BRANCH=rmfield(app.AppData.BRANCH,{'x_filt','y_filt','X_filt','Y_filt','Z_filt'});
                    end
                end

                % Crack kinematic smoothing
                if app.AppData.SmoothingParameters.KInterpolate
                    BRANCH = Tab3_filterCrackKinematics(app,app.AppData.BRANCH);
                    if isempty(BRANCH)
                        return
                    end
                    app.AppData.BRANCH = BRANCH;
                else
                    if isfield(app.AppData.BRANCH,'width_filt')
                        app.AppData.BRANCH=rmfield(app.AppData.BRANCH,{'width_filt','slip_filt'});
                    end
                end

                setInteractivities(app);
                app.SmoothedButton.Value = 1;
            end

            drawnow;
            figure(app.ACDMUIFigure)
            drawnow;
            close(dlg)
        end

        % Callback function: DICMenu_2, EditButton
        function Menu4_DICMenuSelected(app, event)

            % set DIC parameters
            oldDICProperties = app.AppData.DICProperties;
            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Updating DIC parameters',...
                'Indeterminate','on');
            app.DICDialog = DICParameters(app,app.LocalAppData.DICFile1,app.AppData.DICDataFileNames{1});
            uiwait(app.DICDialog.DICParametersUIFigure)
            close(dlg)

            % check if parameters have been changed
            if isequaln(app.AppData.DICProperties.SelectedFilter,oldDICProperties.SelectedFilter) && ...
                    isequaln(app.AppData.DICProperties.SelectedAOIs,oldDICProperties.SelectedAOIs)
                return
            else
                selection = uiconfirm(app.ACDMUIFigure,{'DIC filter or selection of area of interest has been changed and requires reloading of DIC files. Proceeding will delete existing data.','','Delete data?'},'Warning: Delete data',...
                    'Icon','warning');
                if strcmp(selection,'Cancel')
                    app.AppData.DICProperties = oldDICProperties;
                    app.SubsetEditField.Value = app.AppData.DICProperties.Subset;
                    app.FilterEditField.Value = app.AppData.DICProperties.SelectedFilter;

                    return
                end

            end

            DICProperties = app.AppData.DICProperties;
            path = app.AppData.DICDataFolderPath;
            fileNames = app.AppData.DICDataFileNames;
            tempVisParam = app.AppData.VisualizationParameters;
            datatype = app.AppData.DataType;

            initiateProperties(app);

            app.AppData.DICDataFolderPath = path;
            app.AppData.DICDataFileNames = fileNames;
            app.AppData.DICProperties = DICProperties;
            app.AppData.VisualizationParameters = tempVisParam;
            app.AppData.DataType = datatype;

            Menu4_restoreKMParameters(app);

            app.SubsetEditField.Value = app.AppData.DICProperties.Subset;
            app.FilterEditField.Value = app.AppData.DICProperties.SelectedFilter;
            
            switch app.AppData.DataType
                case 'VIC3D'
                    
                    [valid,fileNamesSum] = Tab1_checkDICfiles(app,app.AppData.DICDataFileNames,app.AppData.DICDataFolderPath,'VIC3D'); %check validity of selected DIC files
                    if ~valid
                        return
                    end
                    
                    
                    % load files
                    completed = Tab1_loadDICfiles(app,fileNamesSum,app.AppData.DICDataFolderPath,'VIC3D');
                    
                    if ~completed
                        return
                    end
                    
                case 'VIC2D' 
                    
                    [valid,fileNamesSum] = Tab1_checkDICfiles(app,app.AppData.DICDataFileNames,app.AppData.DICDataFolderPath,'VIC2D'); %check validity of selected DIC files
                    if ~valid
                        return
                    end
                    
                    
                    % load files
                    completed = Tab1_loadDICfiles(app,fileNamesSum,app.AppData.DICDataFolderPath,'VIC2D');
                    
                    if ~completed
                        return
                    end
                        
            end

            % remove kinematics
            removeKinematics(app)
            removeSmoothedValues(app);
            
            % set Interactivities
            app.PrincipalstrainsCheckBox.Value = 1;
            app.PrincipalstrainsCheckBox_2.Value = 1;
            
            app.SigmaCheckBox.Value = 0;
            app.SigmaCheckBox_2.Value = 0;
            
            app.DICfilesListBox.Items = app.AppData.DICDataFileNames;
            
            app.DICfilesListBox.Value = app.DICfilesListBox.Items{end};
            
            app.DICdatapathEditField.Value = app.AppData.DICDataFolderPath;
            
            app.DICmeasuringstagesListBox_2.Items = app.AppData.DICDataFileNames;
            app.DICmeasuringstagesListBox_2.ItemsData = 1:numel(app.AppData.DICDataFileNames);

            app.ReferencedataDropDown.Items = app.AppData.DICDataFileNames;
            app.ReferencedataDropDown_2.Items = app.AppData.DICDataFileNames;

            app.LocalAppData.TabPlot(1).reset = 1;
            app.LocalAppData.TabPlot(2).reset = 1;
            app.LocalAppData.TabPlot(3).reset = 1;
            
         
            setInteractivities(app);
            uiplot(app,1);

        end

        % Menu selected function: CrackinclinationMenu
        function Menu4_CrackinclinationMenuSelected(app, event)
            oldProperties = app.AppData.KMProperties;
            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Updating crack inclination parameter',...
                'Indeterminate','on');
            app.IWDialog = CrackInclination(app);
            uiwait(app.IWDialog.UIFigure)
            close(dlg)
            if ~isequal(oldProperties,app.AppData.KMProperties)
                BRANCH_out = Tab1_setInclination(app,app.AppData.BRANCH);
                if isempty(BRANCH_out)
                    return
                end

                if isfield(app.AppData.BRANCH,'width')
                    uialert(app.ACDMUIFigure,'Crack kinematic measurement is required to be updated.','Warning',"Icon","warning");
                end
                app.AppData.BRANCH=BRANCH_out;
            end
        end

        % Menu selected function: CrackkinematicmeasurementMenu
        function Menu4_CrackkinematicmeasurementMenuSelected(app, event)
            oldProperties = app.AppData.KMProperties;
            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Updating crack kinematic measurement parameter',...
                'Indeterminate','on');
            app.KMDialog = CrackKMProperties(app);
            uiwait(app.KMDialog.UIFigure)
            close(dlg)
            if ~isequal(oldProperties,app.AppData.KMProperties) && isfield(app.AppData.BRANCH,'width')
                uialert(app.ACDMUIFigure,'Crack kinematic measurement is required to be updated.','Warning',"Icon","warning");
            end
        end

        % Menu selected function: VisualisationMenu
        function Menu4_VisualisationMenuSelected(app, event)
            oldProperties = app.AppData.VisualizationParameters;
            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Updating visualization parameter',...
                'Indeterminate','on');
            app.VisParamDialog = Visualization(app);
            uiwait(app.VisParamDialog.UIFigure)

            if isequaln(app.AppData.VisualizationParameters,oldProperties)
                return
            end

            uiplot(app,1);
            uiplot(app,2);
            if app.UpdateplotButton.Enable
                Tab3_UpdateplotButtonPushed(app, event)
            end



            drawnow;
            figure(app.ACDMUIFigure)
            drawnow;
            close(dlg)
        end

        % Menu selected function: UsermanualMenu
        function Menu5_UsermanualMenuSelected(app, event)
            web('https://gitlab.ethz.ch/ibk-kfm-public/acdm/-/wikis/home', '-browser')

        end

        % Menu selected function: AboutMenu
        function Menu5_AboutMenuSelected(app, event)
            web('https://gitlab.ethz.ch/ibk-kfm-public/acdm/-/releases#v2.0', '-browser')
        end

        % Selection change function: TabGroup
        function TabGroupSelectionChanged(app, event)
            selectedTab = app.TabGroup.SelectedTab;
            switch selectedTab.Title
                case 'Detection'
                    uiplot(app,1);
                case 'Classification'
                    uiplot(app,2);
                case 'Kinematic Measurement'
                    %                     uiplot(app,3);
            end
        end

        % Value changed function: DICfilesListBox
        function Tab1_DICfilesListBoxValueChanged(app, event)

            app.DICfilesforcrackdetectionListBox.Value = {};
            setInteractivities(app);
            uiplot(app,1);
        end

        % Button pushed function: AddButton
        function Tab1_AddButtonPushed(app, event)

            templist=cell(0);
            count=0;
            for i=1:length(app.DICfilesListBox.Items)
                if any(strcmp(app.DICfilesforcrackdetectionListBox.Items,app.DICfilesListBox.Items{i})) || ...
                        any(strcmp(app.DICfilesListBox.Value,app.DICfilesListBox.Items{i}))
                    count=count+1;
                    templist{count} = app.DICfilesListBox.Items{i};
                end
            end
            app.DICfilesforcrackdetectionListBox.Items=templist;

            setInteractivities(app);

        end

        % Button pushed function: RemoveButton
        function Tab1_RemoveButtonPushed(app, event)

            templist=cell(0);
            count=0;
            for i=1:length(app.DICfilesforcrackdetectionListBox.Items)
                if ~any(strcmp(app.DICfilesforcrackdetectionListBox.Value,app.DICfilesforcrackdetectionListBox.Items{i}))
                    count=count+1;
                    templist{count} = app.DICfilesforcrackdetectionListBox.Items{i};
                end
            end

            app.DICfilesforcrackdetectionListBox.Items=templist;
            app.DICfilesforcrackdetectionListBox.Value = cell(0);

            setInteractivities(app);
            uiplot(app,1);

        end

        % Button pushed function: DeleteButton_2
        function Tab1_DeleteButton_2Pushed(app, event)
            selection = uiconfirm(app.ACDMUIFigure,{'Do you want to delete the selected DIC files?'},'Warning: Delete DIC files',...
                    'Icon','warning');
            if strcmp(selection,'Cancel')
                return
            end
            
            assignin('base','LocalAppData',app.LocalAppData);
            assignin('base','AppData',app.AppData);
            
            
            removeindeces = [];
            templist = cell(0);
            templistfordetection = cell(0);
 
            for i=1:length(app.DICfilesListBox.Items)
                if ~any(strcmp(app.DICfilesListBox.Value,app.DICfilesListBox.Items{i}))
                   
                    templist{end+1} = app.DICfilesListBox.Items{i};
                    
                    if any(strcmp(app.DICfilesListBox.Items{i},app.DICfilesforcrackdetectionListBox.Items))
                        templistfordetection{end+1} = app.DICfilesListBox.Items{i};
                    end
                else
                    removeindeces = [removeindeces,i];
                end
            end
            
            if length(templist)<2
                uiconfirm(app.ACDMUIFigure,['At least 2 DIC files must remain'],'Error',...
                        'Options',{'Ok'},...
                        "Icon",'error',...
                        'DefaultOption',1,'CancelOption',1);
                return
            end
            
    
          
            if isfield(app.AppData.BRANCH,'width')
                for i=1:length(app.AppData.BRANCH)
                    app.AppData.BRANCH(i).flipped_a(:,removeindeces) = [];
                    app.AppData.BRANCH(i).flipped_b(:,removeindeces) = [];
                    app.AppData.BRANCH(i).theta_a(:,removeindeces) = [];
                    app.AppData.BRANCH(i).theta_b(:,removeindeces) = [];
                    app.AppData.BRANCH(i).width(:,removeindeces) = [];
                    app.AppData.BRANCH(i).slip(:,removeindeces) = [];
                    app.AppData.BRANCH(i).residual_a(:,removeindeces) = [];
                    app.AppData.BRANCH(i).residual_b(:,removeindeces) = [];
                    app.AppData.BRANCH(i).reliability_index(:,removeindeces) = [];
                end
            end
            
            if isfield(app.AppData.BRANCH,'width_filt')
                for i=1:length(app.AppData.BRANCH)
                    app.AppData.BRANCH(i).width_filt(:,removeindeces) = [];
                    app.AppData.BRANCH(i).slip_filt(:,removeindeces) = [];

                end
            end
            
            
           
            app.LocalAppData.DICFiles(removeindeces) = [];
            app.AppData.DICDataFileNames(removeindeces) = [];
            
            app.DICfilesListBox.Items = templist;
            app.DICfilesforcrackdetectionListBox.Items = templistfordetection;
            
            app.DICmeasuringstagesListBox_2.Items = templist;
            app.DICmeasuringstagesListBox_2.ItemsData = 1:numel(templist);
            
            app.ReferencedataDropDown.Items = templist;
            app.ReferencedataDropDown_2.Items = templist;
            
            setInteractivities(app);
            uiplot(app,1);
            
            assignin('base','LocalAppData',app.LocalAppData);
            assignin('base','AppData',app.AppData);
            
        end

        % Button pushed function: RundetectionButton
        function Tab1_RundetectionButtonPushed(app, event)
            dlg = uiprogressdlg(app.ACDMUIFigure,'Title',['Please wait..'],...
                'Indeterminate','on');
            if app.ThresholdingButton.Value
                % perform thresholding if required
                setHSAs = 0;
                if isempty(app.AppData.HSAs)
                    setHSAs = 1;
                else
                    for i=1:length(app.DICfilesListBox.Items)
                        if (any(strcmp(app.DICfilesListBox.Items{i},app.DICfilesforcrackdetectionListBox.Items)) && isempty(app.AppData.HSAs{i})) || ...
                                (~any(strcmp(app.DICfilesListBox.Items{i},app.DICfilesforcrackdetectionListBox.Items)) && ~isempty(app.AppData.HSAs{i}))
                            setHSAs = 1;
                            break
                        end
                    end
                end

                if app.ErrorsashighstrainsCheckBox.Value == 1
                    if ~strcmp(app.AppData.ErrorAsHSAFileName,app.ReferencedataDropDown.Value)
                        setHSAs = 1;
                    end
                    if strcmp(app.AppData.ErrorAsHSAFileName,'')
                        setHSAs = 1;
                    end
                end
                if app.ErrorsashighstrainsCheckBox.Value == 0
                    if ~strcmp(app.AppData.ErrorAsHSAFileName,'')
                        setHSAs = 1;
                    end
                end


                if setHSAs
                    Tab1_setHSAs(app)
                end
            else
                if mod(app.ErrorareadilationEditField_2.Value,2) ~= 1 && app.ErrorsashighstrainsCheckBox_2.Value == 1
                    uialert(app.ACDMUIFigure,'The error dilation must be an odd number.','Error');
                    return
                end
            end

            BW = Tab1_detectCracks(app);


            [BRANCH, NODE] =  Tab1_getBranchesAndNodes(app,BW,app.ACDMUIFigure);

            BRANCH = Tab1_setInclination(app,BRANCH);
            BRANCH = Tab1_setBRANCHLenth(app,BRANCH);
            Tab1_setCrackData(app,[...
                {BW},...
                {BRANCH},...
                {NODE}]);

            Tab2_resetFamilies(app)

            setInteractivities(app);
            app.LocalAppData.TabPlot(1).reset = 1;
            app.LocalAppData.TabPlot(2).reset = 1;
            app.LocalAppData.TabPlot(3).reset = 1;

            if ~isempty(app.AppData.cracklineplotdata)
                app.CracklinesCheckBox.Value = 1;
                app.CracklinesCheckBox_2.Value = 1;
                app.CracklinesCheckBox_3.Value = 1;
            end

            uiplot(app,1);

            drawnow;
            figure(app.ACDMUIFigure)
            drawnow;

            delete(dlg)

        end

        % Button pushed function: RunthresholdingButton
        function Tab1_RunthresholdingButtonPushed(app, event)
            if isempty(app.DICfilesforcrackdetectionListBox.Items)
                errordlg('Crack Detection List must contain at least 1 element','File Error');
                return
            end
            Tab1_setHSAs(app);
            setInteractivities(app);
            uiplot(app,1);
        end

        % Value changed function: DICfilesforcrackdetectionListBox
        function Tab1_DICfilesforcrackdetectionListBoxValueChanged(app, event)
            app.DICfilesListBox.Value = {};
            setInteractivities(app);
            uiplot(app,1);
        end

        % Selection changed function: CrackdetectionmethodButtonGroup
        function Tab1_CrackdetectionmethodButtonGroupSelectionChanged(app, event)
            setInteractivities(app)
            uiplot(app,1);
        end

        % Value changed function: ErrorareadilationEditField_2
        function Tab1_ErrorareadilationEditField_2_2ValueChanged(app, event)
            value = app.ErrorareadilationEditField_2.Value;
            if mod(value,2) ~= 1
                uialert(app.ACDMUIFigure,'The error dilation must be an odd number.','Error');
            end
        end

        % Value changed function: PrincipalstrainsCheckBox
        function Tab1_PrincipalstrainsCheckBoxValueChanged(app, event)
            value = app.PrincipalstrainsCheckBox.Value;
            app.PrincipalstrainsCheckBox_2.Value = value;

            if value
                app.SigmaCheckBox.Value = false;
                app.SigmaCheckBox_2.Value = false;
            end
            uiplot(app,1);
        end

        % Value changed function: SigmaCheckBox
        function Tab1_SigmaCheckBoxValueChanged(app, event)
            value = app.SigmaCheckBox.Value;
            app.SigmaCheckBox_2.Value = value;
            if value
                app.PrincipalstrainsCheckBox.Value = false;
                app.PrincipalstrainsCheckBox_2.Value = false;
            end
            uiplot(app,1);
        end

        % Value changed function: IndividualhighstrainareasCheckBox
        function Tab1_IndividualhighstrainareasCheckBoxValueChanged(app, event)
            uiplot(app,1);
        end

        % Value changed function: CombinedhighstrainareasCheckBox
        function Tab1_CombinedhighstrainareasCheckBoxValueChanged(app, event)
            uiplot(app,1);
        end

        % Value changed function: CracklinesCheckBox
        function Tab1_CracklinesCheckBoxValueChanged(app, event)
            value = app.CracklinesCheckBox.Value;
            app.CracklinesCheckBox_2.Value = value;
            app.CracklinesCheckBox_3.Value = value;
            uiplot(app,1);
        end

        % Button pushed function: AddnewfamilyButton
        function Tab2_AddnewfamilyButtonPushed(app, event)
            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Adding new family',...
                'Indeterminate','on');
            name = '';

            while strcmp(name,'')
                name = inputdlg('Enter family name',...
                    'New Crack Family',[1,50]);
            end

            if isempty(name)
                return
            end
            color = uisetcolor([0 1 0],'Select a color');

            % define index of new family
            count = length(app.AppData.FAMILY);
            if isempty(app.AppData.FAMILY(count).Name)
                count = 0;
            end

            % assign family properties
            app.AppData.FAMILY(count+1).Name = name{1};
            app.AppData.FAMILY(count+1).Color = color;

            % update family list in app
            list = cell(0);
            for i = 1:length(app.AppData.FAMILY)
                list{i} = app.AppData.FAMILY(i).Name;
            end
            app.CrackfamiliesListBox.Items = list;
            app.CrackfamiliesListBox.ItemsData = 1:numel(list);
            app.CrackfamiliesListBox.Value = [];

            app.CrackfamiliesListBox_2.Items = list;
            app.CrackfamiliesListBox_2.ItemsData = 1:numel(list);

            app.RenamechangecolorButton.BackgroundColor = app.AddnewfamilyButton.BackgroundColor;

            Tab2_selectBranchesinFamily(app,count+1)

            uiplot(app,2)
            app.LocalAppData.TabPlot(3).reset = 0;

            setInteractivities(app);
            delete(dlg)
        end

        % Button pushed function: ModifyselectionButton
        function Tab2_ModifyButtonPushed(app, event)
            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Modifying family',...
                'Indeterminate','on');
            familynr = app.CrackfamiliesListBox.Value;
            Tab2_selectBranchesinFamily(app,familynr)
            setInteractivities(app)
            app.LocalAppData.TabPlot(3).reset = 0;
            delete(dlg)
        end

        % Button pushed function: RenamechangecolorButton
        function Tab2_RenameButtonPushed(app, event)
            value = app.CrackfamiliesListBox.Value;

            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Adding new family',...
                'Indeterminate','on');
            name = '';
            while strcmp(name,'')
                name = inputdlg('Enter family name',...
                    'New Crack Family',[1,50],{app.AppData.FAMILY(value).Name});
            end

            if isempty(name)
                return
            end

            color = uisetcolor(app.AppData.FAMILY(value).Color,'Select a color');

            % assign family properties
            app.AppData.FAMILY(value).Name = name{1};
            app.AppData.FAMILY(value).Color = color;

            % update app
            app.CrackfamiliesListBox.Items(value)=name;
            app.CrackfamiliesListBox_2.Items(value)=name;
            Tab2_CrackfamiliesListBoxValueChanged(app);
            uiplot(app,2)
            delete(dlg);
        end

        % Button pushed function: DeleteButton
        function Tab2_DeleteButtonPushed(app, event)
            values = app.CrackfamiliesListBox.Value; % scalar or vector
            values_3_old = app.CrackfamiliesListBox_2.Value;
            items = cell(0);
            values_3_new = [];

            % remove family from family list and app.AppData.FAMILY
            count=0;
            for i=1:length(app.CrackfamiliesListBox.Items)
                if ~ismember(i,values)
                    count = count + 1;
                    items{count}=app.CrackfamiliesListBox.Items{i};
                    family(count)=app.AppData.FAMILY(i);
                    newfamilyindex(i)=count;

                    if ~isempty(values_3_old)
                        if ismember(i,values_3_old)
                            values_3_new = [values_3_new,count];
                        end
                    end
                else
                    newfamilyindex(i)=NaN;
                end
            end
            if count>0
                app.CrackfamiliesListBox.Items = items;
                app.CrackfamiliesListBox.ItemsData = 1:numel(items);
                app.CrackfamiliesListBox_2.Items = items;
                app.CrackfamiliesListBox_2.ItemsData = 1:numel(items);
                app.CrackfamiliesListBox_2.Value = values_3_new;
                app.AppData.FAMILY = family;
            else
                app.CrackfamiliesListBox.Items = {};
                app.CrackfamiliesListBox_2.Items = {};
                app.AppData.FAMILY = struct('Name',[],'Color',[]);
            end

            % remove family form app.AppData.BRANCHES
            for i = 1:length(app.AppData.BRANCH)
                if count>0
                    f = app.AppData.BRANCH(i).family;
                    fnew = [];
                    countnewf = 0;
                    for j=1:length(f)
                        if ~isnan(newfamilyindex(f(j)))
                            countnewf = countnewf + 1;
                            fnew(countnewf) =  newfamilyindex(f(j));
                        end
                    end

                    app.AppData.BRANCH(i).family= fnew;
                else
                    app.AppData.BRANCH(i).family=[];
                end
            end

            % update app
            app.CrackfamiliesListBox.Value = {};
            app.RenamechangecolorButton.BackgroundColor = app.AddnewfamilyButton.BackgroundColor;
            uiplot(app,2)
            app.LocalAppData.TabPlot(3).reset = 0;
            setInteractivities(app);


        end

        % Value changed function: CrackfamiliesListBox
        function Tab2_CrackfamiliesListBoxValueChanged(app, event)
            value = app.CrackfamiliesListBox.Value;
            if length(value)==1
                app.RenamechangecolorButton.BackgroundColor =  app.AppData.FAMILY(value).Color;
            else
                app.RenamechangecolorButton.BackgroundColor = app.AddnewfamilyButton.BackgroundColor;
            end
            setInteractivities(app)
        end

        % Value changed function: PrincipalstrainsCheckBox_2
        function Tab2_PrincipalstrainsCheckBox_2ValueChanged(app, event)
            value = app.PrincipalstrainsCheckBox_2.Value;
            app.PrincipalstrainsCheckBox.Value = value;

            if value
                app.SigmaCheckBox.Value = false;
                app.SigmaCheckBox_2.Value = false;
            end

            uiplot(app,2);
        end

        % Value changed function: SigmaCheckBox_2
        function Tab2_SigmaCheckBox_2ValueChanged(app, event)
            value = app.SigmaCheckBox_2.Value;
            app.SigmaCheckBox.Value = value;
            if value
                app.PrincipalstrainsCheckBox.Value = false;
                app.PrincipalstrainsCheckBox_2.Value = false;
            end
            uiplot(app,2);
        end

        % Value changed function: CracklinesCheckBox_2
        function Tab2_CracklinesCheckBox_2ValueChanged(app, event)
            value = app.CracklinesCheckBox_2.Value;
            app.CracklinesCheckBox.Value = value;
            app.CracklinesCheckBox_3.Value = value;
            uiplot(app,2);
        end

        % Button pushed function: RuncrackkinematicmeasurementButton
        function Tab3_RuncrackkinematicmeasurementButtonPushed(app, event)
            Tab3_calculateKinematics(app)

            app.Tab3_DICMeasuringstagesListBox_3ValueChanged;

            setInteractivities(app)


        end

        % Value changed function: DICmeasuringstagesListBox_2
        function Tab3_DICMeasuringstagesListBox_3ValueChanged(app, event)
            if isempty(app.CrackfamiliesListBox_2.Value) && ~isempty((app.CrackfamiliesListBox_2.Items))
                app.CrackfamiliesListBox_2.Value = 1:numel(app.CrackfamiliesListBox_2.Items);
            end

            if isempty(app.AppData.Tab3_MeasuringStagesSelection.single)
                app.AppData.Tab3_MeasuringStagesSelection.single = numel(app.DICmeasuringstagesListBox_2.Items);
            end

            if isempty(app.AppData.Tab3_MeasuringStagesSelection.multiple)
                app.AppData.Tab3_MeasuringStagesSelection.multiple = 1:numel(app.DICmeasuringstagesListBox_2.Items);
            end


            if app.ContourfillingssinglemeasuringstageButton.Value || app.ScattersinglemeasuringstageButton.Value
                if isempty(app.DICmeasuringstagesListBox_2.Value)
                    app.DICmeasuringstagesListBox_2.Value = app.AppData.Tab3_MeasuringStagesSelection.single;
                end
                app.AppData.Tab3_MeasuringStagesSelection.single = app.DICmeasuringstagesListBox_2.Value;
            else
                if isempty(app.DICmeasuringstagesListBox_2.Value)
                    app.DICmeasuringstagesListBox_2.Value = app.AppData.Tab3_MeasuringStagesSelection.multiple;
                end
                app.AppData.Tab3_MeasuringStagesSelection.multiple = app.DICmeasuringstagesListBox_2.Value;
            end
            setInteractivities(app)

        end

        % Value changed function: CrackfamiliesListBox_2
        function Tab3_CrackfamiliesListBox_2ValueChanged(app, event)
            setInteractivities(app)

        end

        % Button pushed function: ResetplotButton
        function Tab3_ResetplotButtonPushed(app, event)
            app.LocalAppData.TabPlot(3).reset = 1;
            Tab3_UpdateplotButtonPushed(app, event)
        end

        % Button pushed function: UpdateplotButton
        function Tab3_UpdateplotButtonPushed(app, event)
            dlg = uiprogressdlg(app.ACDMUIFigure,'Title','Updating plot',...
                'Indeterminate','on');
            if ~isempty(app.LocalAppData.TabPlot(3).kinematicplot)
                for i = 1:length(app.LocalAppData.TabPlot(3).kinematicplot)
                    delete(app.LocalAppData.TabPlot(3).kinematicplot{i})
                end
                app.LocalAppData.TabPlot(3).kinematicplot = [];
            end
            %             app.LocalAppData.TabPlot(3).reset = 1;
            app.CrackkinematicsCheckBox.Value = 1;
            if app.ScattersinglemeasuringstageButton.Value || app.ContourfillingssinglemeasuringstageButton.Value
                app.CracklinesCheckBox_3.Value = 0;
            else
                app.CracklinesCheckBox_3.Value = 1;
            end
            uiplot(app,3);
            setInteractivities(app)

            delete(dlg);

        end

        % Value changed function: CracklinesCheckBox_3
        function Tab3_CracklinesCheckBox_3ValueChanged(app, event)
            value = app.CracklinesCheckBox_3.Value;
            app.CracklinesCheckBox.Value = value;
            app.CracklinesCheckBox_2.Value = value;
            uiplot(app,3);
        end

        % Value changed function: FamilycolorCheckBox
        function Tab3_FamilycolorCheckBoxValueChanged(app, event)
            uiplot(app,3);
        end

        % Value changed function: CrackkinematicsCheckBox
        function Tab3_CrackkinematicsCheckBoxValueChanged(app, event)
            uiplot(app,3);
        end

        % Selection changed function: CrackkinematicplottypeButtonGroup
        function Tab3_CrackkinematicplottypeButtonGroupSelectionChanged(app, event)
            setInteractivities(app);
            if app.ContourfillingssinglemeasuringstageButton.Value || app.ScattersinglemeasuringstageButton.Value
                if ~isempty(app.AppData.Tab3_MeasuringStagesSelection.single)
                    app.DICmeasuringstagesListBox_2.Value = app.AppData.Tab3_MeasuringStagesSelection.single;
                end
            else
                if ~isempty(app.AppData.Tab3_MeasuringStagesSelection.multiple)

                    app.DICmeasuringstagesListBox_2.Value = app.AppData.Tab3_MeasuringStagesSelection.multiple;
                end
            end

        end

        % Callback function
        function Tab3_ButtonGroupSelectionChanged(app, event)
            setInteractivities(app);
            uiplot(app,3);
        end

        % Selection changed function: ButtonGroup_2
        function Tab3_ButtonGroup_2SelectionChanged(app, event)

            app.LocalAppData.TabPlot(3).reset = 1;

        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create ACDMUIFigure and hide until all components are created
            app.ACDMUIFigure = uifigure('Visible', 'off');
            app.ACDMUIFigure.Position = [0 0 1380 720];
            app.ACDMUIFigure.Name = 'ACDM';
            app.ACDMUIFigure.CloseRequestFcn = createCallbackFcn(app, @UIFigureCloseRequest, true);

            % Create FileMenu
            app.FileMenu = uimenu(app.ACDMUIFigure);
            app.FileMenu.Text = 'File';

            % Create NewMenu
            app.NewMenu = uimenu(app.FileMenu);
            app.NewMenu.MenuSelectedFcn = createCallbackFcn(app, @Menu1_NewMenuSelected, true);
            app.NewMenu.Text = 'New';

            % Create OpenMenu
            app.OpenMenu = uimenu(app.FileMenu);
            app.OpenMenu.MenuSelectedFcn = createCallbackFcn(app, @Menu1_OpenMenuSelected, true);
            app.OpenMenu.Text = 'Open..';

            % Create SaveMenu
            app.SaveMenu = uimenu(app.FileMenu);
            app.SaveMenu.MenuSelectedFcn = createCallbackFcn(app, @Menu1_SaveMenuSelected, true);
            app.SaveMenu.Text = 'Save';

            % Create SaveasMenu
            app.SaveasMenu = uimenu(app.FileMenu);
            app.SaveasMenu.MenuSelectedFcn = createCallbackFcn(app, @Menu1_SaveasMenuSelected, true);
            app.SaveasMenu.Text = 'Save as..';

            % Create Menu
            app.Menu = uimenu(app.FileMenu);
            app.Menu.Enable = 'off';

            % Create ExportMenu
            app.ExportMenu = uimenu(app.FileMenu);
            app.ExportMenu.MenuSelectedFcn = createCallbackFcn(app, @Menu1_ExportMenuSelected, true);
            app.ExportMenu.Text = 'Export..';

            % Create Menu_2
            app.Menu_2 = uimenu(app.FileMenu);
            app.Menu_2.Enable = 'off';

            % Create QuitMenu
            app.QuitMenu = uimenu(app.FileMenu);
            app.QuitMenu.MenuSelectedFcn = createCallbackFcn(app, @UIFigureCloseRequest, true);
            app.QuitMenu.Text = 'Quit';

            % Create DataMenu
            app.DataMenu = uimenu(app.ACDMUIFigure);
            app.DataMenu.Text = 'Data';

            % Create VIC2DCorrelatedsolutiondatafilesMenu
            app.VIC2DCorrelatedsolutiondatafilesMenu = uimenu(app.DataMenu);
            app.VIC2DCorrelatedsolutiondatafilesMenu.MenuSelectedFcn = createCallbackFcn(app, @Menu2_VIC2DCorrelatedsolutiondatafilesMenuSelected, true);
            app.VIC2DCorrelatedsolutiondatafilesMenu.Text = 'VIC-2D (Correlated solution) data files..';

            % Create VIC3DCorrelatedsolutiondatafilesMenu
            app.VIC3DCorrelatedsolutiondatafilesMenu = uimenu(app.DataMenu);
            app.VIC3DCorrelatedsolutiondatafilesMenu.MenuSelectedFcn = createCallbackFcn(app, @Menu2_VIC3DCorrelatedsolutiondatafilesMenuSelected, true);
            app.VIC3DCorrelatedsolutiondatafilesMenu.Text = 'VIC-3D (Correlated solution) data files..';

            % Create ToolsMenu
            app.ToolsMenu = uimenu(app.ACDMUIFigure);
            app.ToolsMenu.Text = 'Tools';

            % Create CrackpatternmodificationMenu
            app.CrackpatternmodificationMenu = uimenu(app.ToolsMenu);
            app.CrackpatternmodificationMenu.MenuSelectedFcn = createCallbackFcn(app, @Menu3_CrackpatternmodificationMenuSelected, true);
            app.CrackpatternmodificationMenu.Text = 'Crack pattern modification..';

            % Create CracklinelinkageMenu
            app.CracklinelinkageMenu = uimenu(app.ToolsMenu);
            app.CracklinelinkageMenu.MenuSelectedFcn = createCallbackFcn(app, @Menu3_CracklinelinkageMenuSelected, true);
            app.CracklinelinkageMenu.Text = 'Crack line linkage..';

            % Create SmoothingMenu
            app.SmoothingMenu = uimenu(app.ToolsMenu);
            app.SmoothingMenu.MenuSelectedFcn = createCallbackFcn(app, @Menu3_SmoothingMenuSelected, true);
            app.SmoothingMenu.Text = 'Smoothing..';

            % Create ParametersMenu
            app.ParametersMenu = uimenu(app.ACDMUIFigure);
            app.ParametersMenu.Text = 'Parameters';

            % Create DICMenu_2
            app.DICMenu_2 = uimenu(app.ParametersMenu);
            app.DICMenu_2.MenuSelectedFcn = createCallbackFcn(app, @Menu4_DICMenuSelected, true);
            app.DICMenu_2.Enable = 'off';
            app.DICMenu_2.Text = 'DIC..';

            % Create CrackinclinationMenu
            app.CrackinclinationMenu = uimenu(app.ParametersMenu);
            app.CrackinclinationMenu.MenuSelectedFcn = createCallbackFcn(app, @Menu4_CrackinclinationMenuSelected, true);
            app.CrackinclinationMenu.Text = 'Crack inclination..';

            % Create CrackkinematicmeasurementMenu
            app.CrackkinematicmeasurementMenu = uimenu(app.ParametersMenu);
            app.CrackkinematicmeasurementMenu.MenuSelectedFcn = createCallbackFcn(app, @Menu4_CrackkinematicmeasurementMenuSelected, true);
            app.CrackkinematicmeasurementMenu.Text = 'Crack kinematic measurement..';

            % Create VisualisationMenu
            app.VisualisationMenu = uimenu(app.ParametersMenu);
            app.VisualisationMenu.MenuSelectedFcn = createCallbackFcn(app, @Menu4_VisualisationMenuSelected, true);
            app.VisualisationMenu.Text = 'Visualisation..';

            % Create HelpMenu
            app.HelpMenu = uimenu(app.ACDMUIFigure);
            app.HelpMenu.Text = 'Help';

            % Create UsermanualMenu
            app.UsermanualMenu = uimenu(app.HelpMenu);
            app.UsermanualMenu.MenuSelectedFcn = createCallbackFcn(app, @Menu5_UsermanualMenuSelected, true);
            app.UsermanualMenu.Text = 'User manual ';

            % Create AboutMenu
            app.AboutMenu = uimenu(app.HelpMenu);
            app.AboutMenu.MenuSelectedFcn = createCallbackFcn(app, @Menu5_AboutMenuSelected, true);
            app.AboutMenu.Text = 'About';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.ACDMUIFigure);
            app.TabGroup.SelectionChangedFcn = createCallbackFcn(app, @TabGroupSelectionChanged, true);
            app.TabGroup.Position = [1 1 1379 719];

            % Create DetectionTab
            app.DetectionTab = uitab(app.TabGroup);
            app.DetectionTab.Title = 'Detection';

            % Create GridLayout
            app.GridLayout = uigridlayout(app.DetectionTab);
            app.GridLayout.RowHeight = {'1x'};

            % Create Panel_8
            app.Panel_8 = uipanel(app.GridLayout);
            app.Panel_8.BorderType = 'none';
            app.Panel_8.Layout.Row = 1;
            app.Panel_8.Layout.Column = 2;

            % Create GridLayout2
            app.GridLayout2 = uigridlayout(app.Panel_8);
            app.GridLayout2.ColumnWidth = {'1x', 300};
            app.GridLayout2.RowHeight = {50, '1x', 30};
            app.GridLayout2.Padding = [0 0 0 0];

            % Create UIAxes
            app.UIAxes = uiaxes(app.GridLayout2);
            app.UIAxes.PlotBoxAspectRatio = [1.25154130702836 1 1];
            app.UIAxes.XColor = 'none';
            app.UIAxes.XTick = [];
            app.UIAxes.YColor = 'none';
            app.UIAxes.YTick = [];
            app.UIAxes.ZColor = 'none';
            app.UIAxes.ZTick = [];
            app.UIAxes.ClippingStyle = 'rectangle';
            app.UIAxes.Layout.Row = [2 3];
            app.UIAxes.Layout.Column = [1 2];

            % Create Panel_9
            app.Panel_9 = uipanel(app.GridLayout2);
            app.Panel_9.BorderType = 'none';
            app.Panel_9.Layout.Row = 1;
            app.Panel_9.Layout.Column = [1 2];

            % Create GridLayout3
            app.GridLayout3 = uigridlayout(app.Panel_9);
            app.GridLayout3.ColumnWidth = {150, 200, 150, 200};
            app.GridLayout3.Padding = [0 0 0 0];

            % Create PrincipalstrainsCheckBox
            app.PrincipalstrainsCheckBox = uicheckbox(app.GridLayout3);
            app.PrincipalstrainsCheckBox.ValueChangedFcn = createCallbackFcn(app, @Tab1_PrincipalstrainsCheckBoxValueChanged, true);
            app.PrincipalstrainsCheckBox.Text = 'Principal strains';
            app.PrincipalstrainsCheckBox.Layout.Row = 1;
            app.PrincipalstrainsCheckBox.Layout.Column = 1;
            app.PrincipalstrainsCheckBox.Value = true;

            % Create IndividualhighstrainareasCheckBox
            app.IndividualhighstrainareasCheckBox = uicheckbox(app.GridLayout3);
            app.IndividualhighstrainareasCheckBox.ValueChangedFcn = createCallbackFcn(app, @Tab1_IndividualhighstrainareasCheckBoxValueChanged, true);
            app.IndividualhighstrainareasCheckBox.Text = 'Individual high strain areas';
            app.IndividualhighstrainareasCheckBox.Layout.Row = 1;
            app.IndividualhighstrainareasCheckBox.Layout.Column = 2;

            % Create CombinedhighstrainareasCheckBox
            app.CombinedhighstrainareasCheckBox = uicheckbox(app.GridLayout3);
            app.CombinedhighstrainareasCheckBox.ValueChangedFcn = createCallbackFcn(app, @Tab1_CombinedhighstrainareasCheckBoxValueChanged, true);
            app.CombinedhighstrainareasCheckBox.Text = 'Combined high strain areas';
            app.CombinedhighstrainareasCheckBox.Layout.Row = 2;
            app.CombinedhighstrainareasCheckBox.Layout.Column = 2;

            % Create CracklinesCheckBox
            app.CracklinesCheckBox = uicheckbox(app.GridLayout3);
            app.CracklinesCheckBox.ValueChangedFcn = createCallbackFcn(app, @Tab1_CracklinesCheckBoxValueChanged, true);
            app.CracklinesCheckBox.Text = 'Crack lines';
            app.CracklinesCheckBox.Layout.Row = 1;
            app.CracklinesCheckBox.Layout.Column = 3;

            % Create SigmaCheckBox
            app.SigmaCheckBox = uicheckbox(app.GridLayout3);
            app.SigmaCheckBox.ValueChangedFcn = createCallbackFcn(app, @Tab1_SigmaCheckBoxValueChanged, true);
            app.SigmaCheckBox.Text = 'Sigma';
            app.SigmaCheckBox.Layout.Row = 2;
            app.SigmaCheckBox.Layout.Column = 1;

            % Create UndeformedimagecoordinatespxxyLabel
            app.UndeformedimagecoordinatespxxyLabel = uilabel(app.GridLayout2);
            app.UndeformedimagecoordinatespxxyLabel.HorizontalAlignment = 'right';
            app.UndeformedimagecoordinatespxxyLabel.FontWeight = 'bold';
            app.UndeformedimagecoordinatespxxyLabel.Layout.Row = 3;
            app.UndeformedimagecoordinatespxxyLabel.Layout.Column = 2;
            app.UndeformedimagecoordinatespxxyLabel.Text = {'Undeformed image coordinates [px]'; '( x ↦ ; y ↧ )'};

            % Create Panel_14
            app.Panel_14 = uipanel(app.GridLayout);
            app.Panel_14.BorderType = 'none';
            app.Panel_14.Layout.Row = 1;
            app.Panel_14.Layout.Column = 1;

            % Create GridLayout4
            app.GridLayout4 = uigridlayout(app.Panel_14);
            app.GridLayout4.ColumnWidth = {'1x'};
            app.GridLayout4.RowHeight = {30, 70, '1x', 100, 190, 50};
            app.GridLayout4.Padding = [0 0 0 0];

            % Create Panel_16
            app.Panel_16 = uipanel(app.GridLayout4);
            app.Panel_16.BorderType = 'none';
            app.Panel_16.Layout.Row = 1;
            app.Panel_16.Layout.Column = 1;

            % Create GridLayout5
            app.GridLayout5 = uigridlayout(app.Panel_16);
            app.GridLayout5.ColumnWidth = {100, '1x'};
            app.GridLayout5.RowHeight = {'1x'};
            app.GridLayout5.Padding = [0 0 0 0];

            % Create DICdatapathLabel
            app.DICdatapathLabel = uilabel(app.GridLayout5);
            app.DICdatapathLabel.HorizontalAlignment = 'right';
            app.DICdatapathLabel.Layout.Row = 1;
            app.DICdatapathLabel.Layout.Column = 1;
            app.DICdatapathLabel.Text = 'DIC data path:';

            % Create DICdatapathEditField
            app.DICdatapathEditField = uieditfield(app.GridLayout5, 'text');
            app.DICdatapathEditField.Editable = 'off';
            app.DICdatapathEditField.Enable = 'off';
            app.DICdatapathEditField.Layout.Row = 1;
            app.DICdatapathEditField.Layout.Column = 2;

            % Create DICParametersPanel
            app.DICParametersPanel = uipanel(app.GridLayout4);
            app.DICParametersPanel.BorderColor = [0.8 0.8 0.8];
            app.DICParametersPanel.HighlightColor = [0.8 0.8 0.8];
            app.DICParametersPanel.Title = ' DIC Parameters';
            app.DICParametersPanel.Layout.Row = 2;
            app.DICParametersPanel.Layout.Column = 1;

            % Create GridLayout6
            app.GridLayout6 = uigridlayout(app.DICParametersPanel);
            app.GridLayout6.ColumnWidth = {50, '1x', 50, '1x', 50, '1x', '1x', '2x'};
            app.GridLayout6.RowHeight = {'1x'};

            % Create SubsetLabel
            app.SubsetLabel = uilabel(app.GridLayout6);
            app.SubsetLabel.HorizontalAlignment = 'right';
            app.SubsetLabel.Layout.Row = 1;
            app.SubsetLabel.Layout.Column = 1;
            app.SubsetLabel.Text = 'Subset:';

            % Create SubsetEditField
            app.SubsetEditField = uieditfield(app.GridLayout6, 'numeric');
            app.SubsetEditField.Enable = 'off';
            app.SubsetEditField.Layout.Row = 1;
            app.SubsetEditField.Layout.Column = 2;

            % Create StepLabel
            app.StepLabel = uilabel(app.GridLayout6);
            app.StepLabel.HorizontalAlignment = 'right';
            app.StepLabel.Layout.Row = 1;
            app.StepLabel.Layout.Column = 3;
            app.StepLabel.Text = 'Step:';

            % Create StepEditField
            app.StepEditField = uieditfield(app.GridLayout6, 'numeric');
            app.StepEditField.HorizontalAlignment = 'left';
            app.StepEditField.Enable = 'off';
            app.StepEditField.Layout.Row = 1;
            app.StepEditField.Layout.Column = 4;

            % Create FilterLabel
            app.FilterLabel = uilabel(app.GridLayout6);
            app.FilterLabel.HorizontalAlignment = 'right';
            app.FilterLabel.Layout.Row = 1;
            app.FilterLabel.Layout.Column = 5;
            app.FilterLabel.Text = 'Filter:';

            % Create FilterEditField
            app.FilterEditField = uieditfield(app.GridLayout6, 'text');
            app.FilterEditField.Enable = 'off';
            app.FilterEditField.Layout.Row = 1;
            app.FilterEditField.Layout.Column = 6;

            % Create EditButton
            app.EditButton = uibutton(app.GridLayout6, 'push');
            app.EditButton.ButtonPushedFcn = createCallbackFcn(app, @Menu4_DICMenuSelected, true);
            app.EditButton.Layout.Row = 1;
            app.EditButton.Layout.Column = 8;
            app.EditButton.Text = 'Edit';

            % Create Panel_18
            app.Panel_18 = uipanel(app.GridLayout4);
            app.Panel_18.BorderType = 'none';
            app.Panel_18.Layout.Row = 3;
            app.Panel_18.Layout.Column = 1;

            % Create GridLayout7
            app.GridLayout7 = uigridlayout(app.Panel_18);
            app.GridLayout7.ColumnWidth = {'1x', 100, '1x'};
            app.GridLayout7.RowHeight = {20, '1x', 70, '1x'};
            app.GridLayout7.Padding = [0 0 0 10];

            % Create DICfilesListBoxLabel
            app.DICfilesListBoxLabel = uilabel(app.GridLayout7);
            app.DICfilesListBoxLabel.VerticalAlignment = 'bottom';
            app.DICfilesListBoxLabel.FontWeight = 'bold';
            app.DICfilesListBoxLabel.Layout.Row = 1;
            app.DICfilesListBoxLabel.Layout.Column = 1;
            app.DICfilesListBoxLabel.Text = 'DIC files';

            % Create DICfilesListBox
            app.DICfilesListBox = uilistbox(app.GridLayout7);
            app.DICfilesListBox.Items = {};
            app.DICfilesListBox.Multiselect = 'on';
            app.DICfilesListBox.ValueChangedFcn = createCallbackFcn(app, @Tab1_DICfilesListBoxValueChanged, true);
            app.DICfilesListBox.BusyAction = 'cancel';
            app.DICfilesListBox.Layout.Row = [2 4];
            app.DICfilesListBox.Layout.Column = 1;
            app.DICfilesListBox.Value = {};

            % Create DICfilesforcrackdetectionListBoxLabel
            app.DICfilesforcrackdetectionListBoxLabel = uilabel(app.GridLayout7);
            app.DICfilesforcrackdetectionListBoxLabel.VerticalAlignment = 'bottom';
            app.DICfilesforcrackdetectionListBoxLabel.FontWeight = 'bold';
            app.DICfilesforcrackdetectionListBoxLabel.Layout.Row = 1;
            app.DICfilesforcrackdetectionListBoxLabel.Layout.Column = 3;
            app.DICfilesforcrackdetectionListBoxLabel.Text = 'DIC files for crack detection';

            % Create DICfilesforcrackdetectionListBox
            app.DICfilesforcrackdetectionListBox = uilistbox(app.GridLayout7);
            app.DICfilesforcrackdetectionListBox.Items = {};
            app.DICfilesforcrackdetectionListBox.Multiselect = 'on';
            app.DICfilesforcrackdetectionListBox.ValueChangedFcn = createCallbackFcn(app, @Tab1_DICfilesforcrackdetectionListBoxValueChanged, true);
            app.DICfilesforcrackdetectionListBox.Layout.Row = [2 4];
            app.DICfilesforcrackdetectionListBox.Layout.Column = 3;
            app.DICfilesforcrackdetectionListBox.Value = {};

            % Create Panel_19
            app.Panel_19 = uipanel(app.GridLayout7);
            app.Panel_19.BorderType = 'none';
            app.Panel_19.Layout.Row = 3;
            app.Panel_19.Layout.Column = 2;

            % Create GridLayout8
            app.GridLayout8 = uigridlayout(app.Panel_19);
            app.GridLayout8.ColumnWidth = {'1x'};
            app.GridLayout8.Padding = [0 0 0 0];

            % Create RemoveButton
            app.RemoveButton = uibutton(app.GridLayout8, 'push');
            app.RemoveButton.ButtonPushedFcn = createCallbackFcn(app, @Tab1_RemoveButtonPushed, true);
            app.RemoveButton.Layout.Row = 2;
            app.RemoveButton.Layout.Column = 1;
            app.RemoveButton.Text = '⯇ Remove';

            % Create AddButton
            app.AddButton = uibutton(app.GridLayout8, 'push');
            app.AddButton.ButtonPushedFcn = createCallbackFcn(app, @Tab1_AddButtonPushed, true);
            app.AddButton.Layout.Row = 1;
            app.AddButton.Layout.Column = 1;
            app.AddButton.Text = 'Add ⯈';

            % Create Panel_20
            app.Panel_20 = uipanel(app.GridLayout4);
            app.Panel_20.BorderType = 'none';
            app.Panel_20.Layout.Row = 4;
            app.Panel_20.Layout.Column = 1;

            % Create GridLayout9
            app.GridLayout9 = uigridlayout(app.Panel_20);
            app.GridLayout9.ColumnWidth = {'1x', 150, '1x'};
            app.GridLayout9.RowHeight = {10, 80};
            app.GridLayout9.RowSpacing = 0;
            app.GridLayout9.Padding = [0 10 0 0];

            % Create CrackdetectionmethodButtonGroup
            app.CrackdetectionmethodButtonGroup = uibuttongroup(app.GridLayout9);
            app.CrackdetectionmethodButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @Tab1_CrackdetectionmethodButtonGroupSelectionChanged, true);
            app.CrackdetectionmethodButtonGroup.BorderColor = [0.8 0.8 0.8];
            app.CrackdetectionmethodButtonGroup.HighlightColor = [0.8 0.8 0.8];
            app.CrackdetectionmethodButtonGroup.Title = 'Crack detection method';
            app.CrackdetectionmethodButtonGroup.BackgroundColor = [0.9412 0.9412 0.9412];
            app.CrackdetectionmethodButtonGroup.Layout.Row = 2;
            app.CrackdetectionmethodButtonGroup.Layout.Column = 2;
            app.CrackdetectionmethodButtonGroup.FontWeight = 'bold';

            % Create ThresholdingButton
            app.ThresholdingButton = uiradiobutton(app.CrackdetectionmethodButtonGroup);
            app.ThresholdingButton.Text = 'Thresholding';
            app.ThresholdingButton.Position = [9 35 140 20];
            app.ThresholdingButton.Value = true;

            % Create EdgedetectionButton
            app.EdgedetectionButton = uiradiobutton(app.CrackdetectionmethodButtonGroup);
            app.EdgedetectionButton.Text = 'Edge detection';
            app.EdgedetectionButton.Position = [9 10 140 20];

            % Create GridLayout20
            app.GridLayout20 = uigridlayout(app.GridLayout9);
            app.GridLayout20.ColumnWidth = {100};
            app.GridLayout20.RowHeight = {30};
            app.GridLayout20.ColumnSpacing = 0;
            app.GridLayout20.RowSpacing = 0;
            app.GridLayout20.Padding = [0 0 0 0];
            app.GridLayout20.Layout.Row = [1 2];
            app.GridLayout20.Layout.Column = 1;

            % Create DeleteButton_2
            app.DeleteButton_2 = uibutton(app.GridLayout20, 'push');
            app.DeleteButton_2.ButtonPushedFcn = createCallbackFcn(app, @Tab1_DeleteButton_2Pushed, true);
            app.DeleteButton_2.Layout.Row = 1;
            app.DeleteButton_2.Layout.Column = 1;
            app.DeleteButton_2.Text = 'Delete';

            % Create Panel_21
            app.Panel_21 = uipanel(app.GridLayout4);
            app.Panel_21.BorderType = 'none';
            app.Panel_21.Layout.Row = 5;
            app.Panel_21.Layout.Column = 1;

            % Create GridLayoutCrackDetectionMethod
            app.GridLayoutCrackDetectionMethod = uigridlayout(app.Panel_21);
            app.GridLayoutCrackDetectionMethod.ColumnWidth = {'1x'};
            app.GridLayoutCrackDetectionMethod.RowHeight = {0, '1x'};
            app.GridLayoutCrackDetectionMethod.ColumnSpacing = 0;
            app.GridLayoutCrackDetectionMethod.RowSpacing = 0;
            app.GridLayoutCrackDetectionMethod.Padding = [0 0 0 0];

            % Create ThresholdingparametersPanel
            app.ThresholdingparametersPanel = uipanel(app.GridLayoutCrackDetectionMethod);
            app.ThresholdingparametersPanel.Title = 'Thresholding parameters';
            app.ThresholdingparametersPanel.Layout.Row = 1;
            app.ThresholdingparametersPanel.Layout.Column = 1;

            % Create GridLayout10
            app.GridLayout10 = uigridlayout(app.ThresholdingparametersPanel);
            app.GridLayout10.ColumnWidth = {'1x', '1x', '1x', '1x'};
            app.GridLayout10.RowHeight = {'1x', '1x', '1x', '1x'};

            % Create HighstrainthresholdmmmEditFieldLabel
            app.HighstrainthresholdmmmEditFieldLabel = uilabel(app.GridLayout10);
            app.HighstrainthresholdmmmEditFieldLabel.FontName = 'Arial';
            app.HighstrainthresholdmmmEditFieldLabel.Layout.Row = 1;
            app.HighstrainthresholdmmmEditFieldLabel.Layout.Column = 1;
            app.HighstrainthresholdmmmEditFieldLabel.Text = 'High strain threshold [mm/m]';

            % Create HighstrainthresholdmmmEditField
            app.HighstrainthresholdmmmEditField = uieditfield(app.GridLayout10, 'numeric');
            app.HighstrainthresholdmmmEditField.LowerLimitInclusive = 'off';
            app.HighstrainthresholdmmmEditField.Limits = [0 Inf];
            app.HighstrainthresholdmmmEditField.Layout.Row = 1;
            app.HighstrainthresholdmmmEditField.Layout.Column = 2;
            app.HighstrainthresholdmmmEditField.Value = 4;

            % Create RunthresholdingButton
            app.RunthresholdingButton = uibutton(app.GridLayout10, 'push');
            app.RunthresholdingButton.ButtonPushedFcn = createCallbackFcn(app, @Tab1_RunthresholdingButtonPushed, true);
            app.RunthresholdingButton.Layout.Row = 2;
            app.RunthresholdingButton.Layout.Column = 2;
            app.RunthresholdingButton.Text = 'Run thresholding';

            % Create ErrorsashighstrainsCheckBox
            app.ErrorsashighstrainsCheckBox = uicheckbox(app.GridLayout10);
            app.ErrorsashighstrainsCheckBox.Text = 'Errors as high strains';
            app.ErrorsashighstrainsCheckBox.Layout.Row = 1;
            app.ErrorsashighstrainsCheckBox.Layout.Column = 3;
            app.ErrorsashighstrainsCheckBox.Value = true;

            % Create ReferencedataDropDownLabel
            app.ReferencedataDropDownLabel = uilabel(app.GridLayout10);
            app.ReferencedataDropDownLabel.Layout.Row = 2;
            app.ReferencedataDropDownLabel.Layout.Column = 3;
            app.ReferencedataDropDownLabel.Text = 'Reference data';

            % Create ReferencedataDropDown
            app.ReferencedataDropDown = uidropdown(app.GridLayout10);
            app.ReferencedataDropDown.Items = {'Option 1', 'Option 2', 'Option 3', 'Option 4', 'Option 5', 'Option 6', 'Option 7', 'Option 8', 'Option 9', 'Option 10', 'Option 11', 'Option 12', 'Option 13', 'Option 14', 'Option 15', 'Option 16', 'Option 17', 'Option 18', 'Option 19', 'Option 20', 'Option 21', 'Option 22', 'Option 23', 'Option 24', 'Option 25', 'Option 26', 'Option 27', 'Option 28', 'Option 29', 'Option 30', 'Option 31', 'Option 32', 'Option 33', 'Option 34', 'Option 35', 'Option 36', 'Option 37', 'Option 38', 'Option 39', 'Option 40', 'Option 41', 'Option 42', 'Option 43', 'Option 44', 'Option 45', 'Option 46', 'Option 47', 'Option 48', 'Option 49', 'Option 50', 'Option 51', 'Option 52', 'Option 53', 'Option 54', 'Option 55', 'Option 56', 'Option 57', 'Option 58', 'Option 59', 'Option 60', 'Option 61', 'Option 62', 'Option 63', 'Option 64', 'Option 65', 'Option 66', 'Option 67', 'Option 68', 'Option 69', 'Option 70', 'Option 71', 'Option 72', 'Option 73', 'Option 74', 'Option 75', 'Option 76'};
            app.ReferencedataDropDown.Layout.Row = 2;
            app.ReferencedataDropDown.Layout.Column = 4;

            % Create EdgedetectionparametersPanel
            app.EdgedetectionparametersPanel = uipanel(app.GridLayoutCrackDetectionMethod);
            app.EdgedetectionparametersPanel.BorderColor = [0.8 0.8 0.8];
            app.EdgedetectionparametersPanel.ForegroundColor = [0 0 0];
            app.EdgedetectionparametersPanel.HighlightColor = [0.8 0.8 0.8];
            app.EdgedetectionparametersPanel.Title = 'Edge detection parameters';
            app.EdgedetectionparametersPanel.Layout.Row = 2;
            app.EdgedetectionparametersPanel.Layout.Column = 1;

            % Create GridLayout11
            app.GridLayout11 = uigridlayout(app.EdgedetectionparametersPanel);
            app.GridLayout11.ColumnWidth = {'1x', '1x', '1x', '1x'};
            app.GridLayout11.RowHeight = {'1x', '1x', '1x', '1x'};

            % Create HighthresholdmmmEditFieldLabel
            app.HighthresholdmmmEditFieldLabel = uilabel(app.GridLayout11);
            app.HighthresholdmmmEditFieldLabel.FontName = 'Arial';
            app.HighthresholdmmmEditFieldLabel.Layout.Row = 1;
            app.HighthresholdmmmEditFieldLabel.Layout.Column = 1;
            app.HighthresholdmmmEditFieldLabel.Text = 'High threshold [mm/m]';

            % Create HighthresholdmmmEditField
            app.HighthresholdmmmEditField = uieditfield(app.GridLayout11, 'numeric');
            app.HighthresholdmmmEditField.Limits = [0 Inf];
            app.HighthresholdmmmEditField.Layout.Row = 1;
            app.HighthresholdmmmEditField.Layout.Column = 2;
            app.HighthresholdmmmEditField.Value = 4;

            % Create LowthresholdmmmEditFieldLabel
            app.LowthresholdmmmEditFieldLabel = uilabel(app.GridLayout11);
            app.LowthresholdmmmEditFieldLabel.FontName = 'Arial';
            app.LowthresholdmmmEditFieldLabel.Layout.Row = 2;
            app.LowthresholdmmmEditFieldLabel.Layout.Column = 1;
            app.LowthresholdmmmEditFieldLabel.Text = 'Low threshold [mm/m]';

            % Create LowthresholdmmmEditField
            app.LowthresholdmmmEditField = uieditfield(app.GridLayout11, 'numeric');
            app.LowthresholdmmmEditField.Limits = [0 Inf];
            app.LowthresholdmmmEditField.Layout.Row = 2;
            app.LowthresholdmmmEditField.Layout.Column = 2;
            app.LowthresholdmmmEditField.Value = 1;

            % Create Label
            app.Label = uilabel(app.GridLayout11);
            app.Label.VerticalAlignment = 'top';
            app.Label.FontAngle = 'italic';
            app.Label.FontColor = [1 0 0];
            app.Label.Layout.Row = 3;
            app.Label.Layout.Column = [1 2];
            app.Label.Text = {'This crack detection method uses only the last'; 'crack detection file and ignores all previous.'};

            % Create ErrorsashighstrainsCheckBox_2
            app.ErrorsashighstrainsCheckBox_2 = uicheckbox(app.GridLayout11);
            app.ErrorsashighstrainsCheckBox_2.Text = 'Errors as high strains';
            app.ErrorsashighstrainsCheckBox_2.Layout.Row = 1;
            app.ErrorsashighstrainsCheckBox_2.Layout.Column = [3 4];
            app.ErrorsashighstrainsCheckBox_2.Value = true;

            % Create ReferencedataDropDown_2Label
            app.ReferencedataDropDown_2Label = uilabel(app.GridLayout11);
            app.ReferencedataDropDown_2Label.Layout.Row = 2;
            app.ReferencedataDropDown_2Label.Layout.Column = 3;
            app.ReferencedataDropDown_2Label.Text = 'Reference data';

            % Create ReferencedataDropDown_2
            app.ReferencedataDropDown_2 = uidropdown(app.GridLayout11);
            app.ReferencedataDropDown_2.Items = {'Option 1', 'Option 2', 'Option 3', 'Option 4', 'Option 5', 'Option 6', 'Option 7', 'Option 8', 'Option 9', 'Option 10', 'Option 11', 'Option 12', 'Option 13', 'Option 14', 'Option 15', 'Option 16', 'Option 17', 'Option 18', 'Option 19', 'Option 20', 'Option 21', 'Option 22', 'Option 23', 'Option 24', 'Option 25', 'Option 26', 'Option 27', 'Option 28', 'Option 29', 'Option 30', 'Option 31', 'Option 32', 'Option 33', 'Option 34', 'Option 35', 'Option 36', 'Option 37', 'Option 38', 'Option 39', 'Option 40', 'Option 41', 'Option 42', 'Option 43', 'Option 44', 'Option 45', 'Option 46', 'Option 47', 'Option 48', 'Option 49', 'Option 50', 'Option 51', 'Option 52', 'Option 53', 'Option 54', 'Option 55', 'Option 56', 'Option 57', 'Option 58', 'Option 59', 'Option 60', 'Option 61', 'Option 62', 'Option 63', 'Option 64', 'Option 65', 'Option 66', 'Option 67', 'Option 68', 'Option 69', 'Option 70', 'Option 71', 'Option 72', 'Option 73', 'Option 74', 'Option 75', 'Option 76'};
            app.ReferencedataDropDown_2.Layout.Row = 2;
            app.ReferencedataDropDown_2.Layout.Column = 4;

            % Create ErrorstrainlevelmmmEditFieldLabel
            app.ErrorstrainlevelmmmEditFieldLabel = uilabel(app.GridLayout11);
            app.ErrorstrainlevelmmmEditFieldLabel.Layout.Row = 3;
            app.ErrorstrainlevelmmmEditFieldLabel.Layout.Column = 3;
            app.ErrorstrainlevelmmmEditFieldLabel.Text = 'Error strain level [mm/m] ';

            % Create ErrorstrainlevelmmmEditField
            app.ErrorstrainlevelmmmEditField = uieditfield(app.GridLayout11, 'numeric');
            app.ErrorstrainlevelmmmEditField.Limits = [0 Inf];
            app.ErrorstrainlevelmmmEditField.Layout.Row = 3;
            app.ErrorstrainlevelmmmEditField.Layout.Column = 4;
            app.ErrorstrainlevelmmmEditField.Value = 50;

            % Create ErrorareadilationEditField_2Label
            app.ErrorareadilationEditField_2Label = uilabel(app.GridLayout11);
            app.ErrorareadilationEditField_2Label.Layout.Row = 4;
            app.ErrorareadilationEditField_2Label.Layout.Column = 3;
            app.ErrorareadilationEditField_2Label.Text = 'Error area dilation';

            % Create ErrorareadilationEditField_2
            app.ErrorareadilationEditField_2 = uieditfield(app.GridLayout11, 'numeric');
            app.ErrorareadilationEditField_2.Limits = [1 Inf];
            app.ErrorareadilationEditField_2.RoundFractionalValues = 'on';
            app.ErrorareadilationEditField_2.ValueChangedFcn = createCallbackFcn(app, @Tab1_ErrorareadilationEditField_2_2ValueChanged, true);
            app.ErrorareadilationEditField_2.Layout.Row = 4;
            app.ErrorareadilationEditField_2.Layout.Column = 4;
            app.ErrorareadilationEditField_2.Value = 3;

            % Create Panel_22
            app.Panel_22 = uipanel(app.GridLayout4);
            app.Panel_22.BorderType = 'none';
            app.Panel_22.Layout.Row = 6;
            app.Panel_22.Layout.Column = 1;

            % Create GridLayout12
            app.GridLayout12 = uigridlayout(app.Panel_22);
            app.GridLayout12.ColumnWidth = {'1x', 100, '1x'};
            app.GridLayout12.RowHeight = {30};
            app.GridLayout12.Padding = [0 10 0 10];

            % Create RundetectionButton
            app.RundetectionButton = uibutton(app.GridLayout12, 'push');
            app.RundetectionButton.ButtonPushedFcn = createCallbackFcn(app, @Tab1_RundetectionButtonPushed, true);
            app.RundetectionButton.Layout.Row = 1;
            app.RundetectionButton.Layout.Column = 2;
            app.RundetectionButton.Text = 'Run detection';

            % Create ClassificationTab
            app.ClassificationTab = uitab(app.TabGroup);
            app.ClassificationTab.Title = 'Classification';

            % Create GridLayout_2
            app.GridLayout_2 = uigridlayout(app.ClassificationTab);
            app.GridLayout_2.RowHeight = {'1x'};

            % Create Panel_10
            app.Panel_10 = uipanel(app.GridLayout_2);
            app.Panel_10.BorderType = 'none';
            app.Panel_10.Layout.Row = 1;
            app.Panel_10.Layout.Column = 2;

            % Create GridLayout2_2
            app.GridLayout2_2 = uigridlayout(app.Panel_10);
            app.GridLayout2_2.ColumnWidth = {'1x', 250};
            app.GridLayout2_2.RowHeight = {50, '1x', 30};
            app.GridLayout2_2.Padding = [0 0 0 0];

            % Create UIAxes_2
            app.UIAxes_2 = uiaxes(app.GridLayout2_2);
            app.UIAxes_2.PlotBoxAspectRatio = [1.25154130702836 1 1];
            app.UIAxes_2.XColor = 'none';
            app.UIAxes_2.XTick = [];
            app.UIAxes_2.YColor = 'none';
            app.UIAxes_2.YTick = [];
            app.UIAxes_2.ZColor = 'none';
            app.UIAxes_2.ZTick = [];
            app.UIAxes_2.ClippingStyle = 'rectangle';
            app.UIAxes_2.Layout.Row = [2 3];
            app.UIAxes_2.Layout.Column = [1 2];

            % Create Panel_11
            app.Panel_11 = uipanel(app.GridLayout2_2);
            app.Panel_11.BorderType = 'none';
            app.Panel_11.Layout.Row = 1;
            app.Panel_11.Layout.Column = [1 2];

            % Create GridLayout3_2
            app.GridLayout3_2 = uigridlayout(app.Panel_11);
            app.GridLayout3_2.ColumnWidth = {150, 200, 150, 200};
            app.GridLayout3_2.Padding = [0 0 0 0];

            % Create PrincipalstrainsCheckBox_2
            app.PrincipalstrainsCheckBox_2 = uicheckbox(app.GridLayout3_2);
            app.PrincipalstrainsCheckBox_2.ValueChangedFcn = createCallbackFcn(app, @Tab2_PrincipalstrainsCheckBox_2ValueChanged, true);
            app.PrincipalstrainsCheckBox_2.Text = 'Principal strains';
            app.PrincipalstrainsCheckBox_2.Layout.Row = 1;
            app.PrincipalstrainsCheckBox_2.Layout.Column = 1;

            % Create CracklinesCheckBox_2
            app.CracklinesCheckBox_2 = uicheckbox(app.GridLayout3_2);
            app.CracklinesCheckBox_2.ValueChangedFcn = createCallbackFcn(app, @Tab2_CracklinesCheckBox_2ValueChanged, true);
            app.CracklinesCheckBox_2.Text = 'Crack lines';
            app.CracklinesCheckBox_2.Layout.Row = 1;
            app.CracklinesCheckBox_2.Layout.Column = 3;

            % Create SigmaCheckBox_2
            app.SigmaCheckBox_2 = uicheckbox(app.GridLayout3_2);
            app.SigmaCheckBox_2.ValueChangedFcn = createCallbackFcn(app, @Tab2_SigmaCheckBox_2ValueChanged, true);
            app.SigmaCheckBox_2.Text = 'Sigma';
            app.SigmaCheckBox_2.Layout.Row = 2;
            app.SigmaCheckBox_2.Layout.Column = 1;

            % Create UndeformedimagecoordinatespxxyLabel_2
            app.UndeformedimagecoordinatespxxyLabel_2 = uilabel(app.GridLayout2_2);
            app.UndeformedimagecoordinatespxxyLabel_2.HorizontalAlignment = 'right';
            app.UndeformedimagecoordinatespxxyLabel_2.FontWeight = 'bold';
            app.UndeformedimagecoordinatespxxyLabel_2.Layout.Row = 3;
            app.UndeformedimagecoordinatespxxyLabel_2.Layout.Column = 2;
            app.UndeformedimagecoordinatespxxyLabel_2.Text = {'Undeformed image coordinates [px]'; '( x ↦ ; y ↧ )'};

            % Create Panel_15
            app.Panel_15 = uipanel(app.GridLayout_2);
            app.Panel_15.BorderType = 'none';
            app.Panel_15.Layout.Row = 1;
            app.Panel_15.Layout.Column = 1;

            % Create GridLayout13
            app.GridLayout13 = uigridlayout(app.Panel_15);
            app.GridLayout13.ColumnWidth = {'1x'};
            app.GridLayout13.RowHeight = {120, 20, '1x', 50};
            app.GridLayout13.Padding = [0 0 0 0];

            % Create CrackfamiliesListBoxLabel
            app.CrackfamiliesListBoxLabel = uilabel(app.GridLayout13);
            app.CrackfamiliesListBoxLabel.VerticalAlignment = 'bottom';
            app.CrackfamiliesListBoxLabel.FontWeight = 'bold';
            app.CrackfamiliesListBoxLabel.Layout.Row = 2;
            app.CrackfamiliesListBoxLabel.Layout.Column = 1;
            app.CrackfamiliesListBoxLabel.Text = 'Crack families';

            % Create CrackfamiliesListBox
            app.CrackfamiliesListBox = uilistbox(app.GridLayout13);
            app.CrackfamiliesListBox.Items = {};
            app.CrackfamiliesListBox.Multiselect = 'on';
            app.CrackfamiliesListBox.ValueChangedFcn = createCallbackFcn(app, @Tab2_CrackfamiliesListBoxValueChanged, true);
            app.CrackfamiliesListBox.BusyAction = 'cancel';
            app.CrackfamiliesListBox.Layout.Row = 3;
            app.CrackfamiliesListBox.Layout.Column = 1;
            app.CrackfamiliesListBox.Value = {};

            % Create Panel_23
            app.Panel_23 = uipanel(app.GridLayout13);
            app.Panel_23.BorderType = 'none';
            app.Panel_23.Layout.Row = 4;
            app.Panel_23.Layout.Column = 1;

            % Create GridLayout14
            app.GridLayout14 = uigridlayout(app.Panel_23);
            app.GridLayout14.ColumnWidth = {'2x', '1x', '2x', '2x', '2x'};
            app.GridLayout14.RowHeight = {'1x'};
            app.GridLayout14.Padding = [0 10 0 10];

            % Create AddnewfamilyButton
            app.AddnewfamilyButton = uibutton(app.GridLayout14, 'push');
            app.AddnewfamilyButton.ButtonPushedFcn = createCallbackFcn(app, @Tab2_AddnewfamilyButtonPushed, true);
            app.AddnewfamilyButton.Layout.Row = 1;
            app.AddnewfamilyButton.Layout.Column = 1;
            app.AddnewfamilyButton.Text = 'Add new family..';

            % Create ModifyselectionButton
            app.ModifyselectionButton = uibutton(app.GridLayout14, 'push');
            app.ModifyselectionButton.ButtonPushedFcn = createCallbackFcn(app, @Tab2_ModifyButtonPushed, true);
            app.ModifyselectionButton.Layout.Row = 1;
            app.ModifyselectionButton.Layout.Column = 3;
            app.ModifyselectionButton.Text = 'Modify selection..';

            % Create RenamechangecolorButton
            app.RenamechangecolorButton = uibutton(app.GridLayout14, 'push');
            app.RenamechangecolorButton.ButtonPushedFcn = createCallbackFcn(app, @Tab2_RenameButtonPushed, true);
            app.RenamechangecolorButton.Layout.Row = 1;
            app.RenamechangecolorButton.Layout.Column = 4;
            app.RenamechangecolorButton.Text = 'Rename / change color..';

            % Create DeleteButton
            app.DeleteButton = uibutton(app.GridLayout14, 'push');
            app.DeleteButton.ButtonPushedFcn = createCallbackFcn(app, @Tab2_DeleteButtonPushed, true);
            app.DeleteButton.Layout.Row = 1;
            app.DeleteButton.Layout.Column = 5;
            app.DeleteButton.Text = 'Delete';

            % Create Panel_24
            app.Panel_24 = uipanel(app.GridLayout13);
            app.Panel_24.BorderType = 'none';
            app.Panel_24.Layout.Row = 1;
            app.Panel_24.Layout.Column = 1;

            % Create GridLayout15
            app.GridLayout15 = uigridlayout(app.Panel_24);
            app.GridLayout15.ColumnWidth = {'1x', 180, '1x'};
            app.GridLayout15.RowHeight = {'1x', 30, '1x'};
            app.GridLayout15.Padding = [0 0 0 0];

            % Create KinematicMeasurementTab
            app.KinematicMeasurementTab = uitab(app.TabGroup);
            app.KinematicMeasurementTab.Title = 'Kinematic Measurement';

            % Create GridLayout_3
            app.GridLayout_3 = uigridlayout(app.KinematicMeasurementTab);
            app.GridLayout_3.RowHeight = {'1x'};

            % Create Panel_12
            app.Panel_12 = uipanel(app.GridLayout_3);
            app.Panel_12.BorderType = 'none';
            app.Panel_12.Layout.Row = 1;
            app.Panel_12.Layout.Column = 2;

            % Create GridLayout2_3
            app.GridLayout2_3 = uigridlayout(app.Panel_12);
            app.GridLayout2_3.ColumnWidth = {'1x'};
            app.GridLayout2_3.RowHeight = {50, '1x', 30};
            app.GridLayout2_3.Padding = [0 0 0 0];

            % Create UIAxes_3
            app.UIAxes_3 = uiaxes(app.GridLayout2_3);
            app.UIAxes_3.PlotBoxAspectRatio = [1.25154130702836 1 1];
            app.UIAxes_3.XColor = 'none';
            app.UIAxes_3.XTick = [];
            app.UIAxes_3.YColor = 'none';
            app.UIAxes_3.YTick = [];
            app.UIAxes_3.ZColor = 'none';
            app.UIAxes_3.ZTick = [];
            app.UIAxes_3.ClippingStyle = 'rectangle';
            app.UIAxes_3.Layout.Row = 2;
            app.UIAxes_3.Layout.Column = 1;

            % Create Panel_13
            app.Panel_13 = uipanel(app.GridLayout2_3);
            app.Panel_13.BorderType = 'none';
            app.Panel_13.Layout.Row = 1;
            app.Panel_13.Layout.Column = 1;

            % Create GridLayout3_3
            app.GridLayout3_3 = uigridlayout(app.Panel_13);
            app.GridLayout3_3.ColumnWidth = {150, 200, 150, 200};
            app.GridLayout3_3.Padding = [0 0 0 0];

            % Create CracklinesCheckBox_3
            app.CracklinesCheckBox_3 = uicheckbox(app.GridLayout3_3);
            app.CracklinesCheckBox_3.ValueChangedFcn = createCallbackFcn(app, @Tab3_CracklinesCheckBox_3ValueChanged, true);
            app.CracklinesCheckBox_3.Text = 'Crack lines';
            app.CracklinesCheckBox_3.Layout.Row = 1;
            app.CracklinesCheckBox_3.Layout.Column = 3;

            % Create FamilycolorCheckBox
            app.FamilycolorCheckBox = uicheckbox(app.GridLayout3_3);
            app.FamilycolorCheckBox.ValueChangedFcn = createCallbackFcn(app, @Tab3_FamilycolorCheckBoxValueChanged, true);
            app.FamilycolorCheckBox.Text = 'Family color';
            app.FamilycolorCheckBox.Layout.Row = 2;
            app.FamilycolorCheckBox.Layout.Column = 3;

            % Create CrackkinematicsCheckBox
            app.CrackkinematicsCheckBox = uicheckbox(app.GridLayout3_3);
            app.CrackkinematicsCheckBox.ValueChangedFcn = createCallbackFcn(app, @Tab3_CrackkinematicsCheckBoxValueChanged, true);
            app.CrackkinematicsCheckBox.Text = 'Crack kinematics';
            app.CrackkinematicsCheckBox.Layout.Row = 1;
            app.CrackkinematicsCheckBox.Layout.Column = 4;

            % Create ButtonGroup
            app.ButtonGroup = uibuttongroup(app.GridLayout3_3);
            app.ButtonGroup.BorderType = 'none';
            app.ButtonGroup.Layout.Row = [1 2];
            app.ButtonGroup.Layout.Column = 1;

            % Create OriginalButton
            app.OriginalButton = uitogglebutton(app.ButtonGroup);
            app.OriginalButton.Text = 'Original';
            app.OriginalButton.Position = [1 25 149 24];
            app.OriginalButton.Value = true;

            % Create SmoothedButton
            app.SmoothedButton = uitogglebutton(app.ButtonGroup);
            app.SmoothedButton.Text = 'Smoothed';
            app.SmoothedButton.Position = [1 1 149 24];

            % Create GridLayout19
            app.GridLayout19 = uigridlayout(app.GridLayout2_3);
            app.GridLayout19.ColumnWidth = {400, '1x'};
            app.GridLayout19.RowHeight = {30};
            app.GridLayout19.Padding = [0 0 0 0];
            app.GridLayout19.Layout.Row = 3;
            app.GridLayout19.Layout.Column = 1;

            % Create ButtonGroup_2
            app.ButtonGroup_2 = uibuttongroup(app.GridLayout19);
            app.ButtonGroup_2.SelectionChangedFcn = createCallbackFcn(app, @Tab3_ButtonGroup_2SelectionChanged, true);
            app.ButtonGroup_2.BorderType = 'none';
            app.ButtonGroup_2.Layout.Row = 1;
            app.ButtonGroup_2.Layout.Column = 1;

            % Create ImagecoordinatespxButton
            app.ImagecoordinatespxButton = uitogglebutton(app.ButtonGroup_2);
            app.ImagecoordinatespxButton.Text = 'Image coordinates [px]';
            app.ImagecoordinatespxButton.Position = [1 11 199 20];

            % Create PhysicalcoordinatesmmButton
            app.PhysicalcoordinatesmmButton = uitogglebutton(app.ButtonGroup_2);
            app.PhysicalcoordinatesmmButton.Text = 'Physical coordinates [mm]';
            app.PhysicalcoordinatesmmButton.Position = [200 11 200 20];
            app.PhysicalcoordinatesmmButton.Value = true;

            % Create UndeformedphysicalcoordinatesmmXYLabel
            app.UndeformedphysicalcoordinatesmmXYLabel = uilabel(app.GridLayout19);
            app.UndeformedphysicalcoordinatesmmXYLabel.HorizontalAlignment = 'right';
            app.UndeformedphysicalcoordinatesmmXYLabel.FontWeight = 'bold';
            app.UndeformedphysicalcoordinatesmmXYLabel.Layout.Row = 1;
            app.UndeformedphysicalcoordinatesmmXYLabel.Layout.Column = 2;
            app.UndeformedphysicalcoordinatesmmXYLabel.Text = {'Undeformed physical coordinates [mm]'; '( X ↦ ; Y ↥ )'};

            % Create Panel_17
            app.Panel_17 = uipanel(app.GridLayout_3);
            app.Panel_17.BorderType = 'none';
            app.Panel_17.Layout.Row = 1;
            app.Panel_17.Layout.Column = 1;

            % Create GridLayout16
            app.GridLayout16 = uigridlayout(app.Panel_17);
            app.GridLayout16.ColumnWidth = {'1x'};
            app.GridLayout16.RowHeight = {120, '1x', 50};
            app.GridLayout16.Padding = [0 0 0 0];

            % Create GridLayout15_2
            app.GridLayout15_2 = uigridlayout(app.GridLayout16);
            app.GridLayout15_2.ColumnWidth = {'1x', 200, '1x'};
            app.GridLayout15_2.RowHeight = {'1x', 30, '1x'};
            app.GridLayout15_2.Padding = [0 0 0 0];
            app.GridLayout15_2.Layout.Row = 1;
            app.GridLayout15_2.Layout.Column = 1;

            % Create RuncrackkinematicmeasurementButton
            app.RuncrackkinematicmeasurementButton = uibutton(app.GridLayout15_2, 'push');
            app.RuncrackkinematicmeasurementButton.ButtonPushedFcn = createCallbackFcn(app, @Tab3_RuncrackkinematicmeasurementButtonPushed, true);
            app.RuncrackkinematicmeasurementButton.Layout.Row = 2;
            app.RuncrackkinematicmeasurementButton.Layout.Column = 2;
            app.RuncrackkinematicmeasurementButton.Text = 'Run crack kinematic measurement';

            % Create Panel_25
            app.Panel_25 = uipanel(app.GridLayout16);
            app.Panel_25.BorderType = 'none';
            app.Panel_25.Layout.Row = 2;
            app.Panel_25.Layout.Column = 1;

            % Create GridLayout17
            app.GridLayout17 = uigridlayout(app.Panel_25);
            app.GridLayout17.RowHeight = {20, '1x', 125};
            app.GridLayout17.Padding = [0 0 0 0];

            % Create DICmeasuringstagesListBox_2Label
            app.DICmeasuringstagesListBox_2Label = uilabel(app.GridLayout17);
            app.DICmeasuringstagesListBox_2Label.VerticalAlignment = 'bottom';
            app.DICmeasuringstagesListBox_2Label.FontWeight = 'bold';
            app.DICmeasuringstagesListBox_2Label.Layout.Row = 1;
            app.DICmeasuringstagesListBox_2Label.Layout.Column = 1;
            app.DICmeasuringstagesListBox_2Label.Text = 'DIC measuring stages';

            % Create DICmeasuringstagesListBox_2
            app.DICmeasuringstagesListBox_2 = uilistbox(app.GridLayout17);
            app.DICmeasuringstagesListBox_2.Items = {};
            app.DICmeasuringstagesListBox_2.Multiselect = 'on';
            app.DICmeasuringstagesListBox_2.ValueChangedFcn = createCallbackFcn(app, @Tab3_DICMeasuringstagesListBox_3ValueChanged, true);
            app.DICmeasuringstagesListBox_2.BusyAction = 'cancel';
            app.DICmeasuringstagesListBox_2.Layout.Row = 2;
            app.DICmeasuringstagesListBox_2.Layout.Column = 1;
            app.DICmeasuringstagesListBox_2.Value = {};

            % Create CrackfamiliesListBox_2Label
            app.CrackfamiliesListBox_2Label = uilabel(app.GridLayout17);
            app.CrackfamiliesListBox_2Label.VerticalAlignment = 'bottom';
            app.CrackfamiliesListBox_2Label.FontWeight = 'bold';
            app.CrackfamiliesListBox_2Label.Layout.Row = 1;
            app.CrackfamiliesListBox_2Label.Layout.Column = 2;
            app.CrackfamiliesListBox_2Label.Text = 'Crack families';

            % Create CrackfamiliesListBox_2
            app.CrackfamiliesListBox_2 = uilistbox(app.GridLayout17);
            app.CrackfamiliesListBox_2.Items = {};
            app.CrackfamiliesListBox_2.Multiselect = 'on';
            app.CrackfamiliesListBox_2.ValueChangedFcn = createCallbackFcn(app, @Tab3_CrackfamiliesListBox_2ValueChanged, true);
            app.CrackfamiliesListBox_2.BusyAction = 'cancel';
            app.CrackfamiliesListBox_2.Layout.Row = 2;
            app.CrackfamiliesListBox_2.Layout.Column = 2;
            app.CrackfamiliesListBox_2.Value = {};

            % Create CrackkinematicplottypeButtonGroup
            app.CrackkinematicplottypeButtonGroup = uibuttongroup(app.GridLayout17);
            app.CrackkinematicplottypeButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @Tab3_CrackkinematicplottypeButtonGroupSelectionChanged, true);
            app.CrackkinematicplottypeButtonGroup.BorderColor = [0.8 0.8 0.8];
            app.CrackkinematicplottypeButtonGroup.HighlightColor = [0.8 0.8 0.8];
            app.CrackkinematicplottypeButtonGroup.Title = 'Crack kinematic plot type';
            app.CrackkinematicplottypeButtonGroup.Layout.Row = 3;
            app.CrackkinematicplottypeButtonGroup.Layout.Column = 1;

            % Create ContourfillingssinglemeasuringstageButton
            app.ContourfillingssinglemeasuringstageButton = uiradiobutton(app.CrackkinematicplottypeButtonGroup);
            app.ContourfillingssinglemeasuringstageButton.Text = 'Contour fillings (single measuring stage)';
            app.ContourfillingssinglemeasuringstageButton.Position = [10 83 238 20];
            app.ContourfillingssinglemeasuringstageButton.Value = true;

            % Create ScattersinglemeasuringstageButton
            app.ScattersinglemeasuringstageButton = uiradiobutton(app.CrackkinematicplottypeButtonGroup);
            app.ScattersinglemeasuringstageButton.Text = 'Scatter (single measuring stage)';
            app.ScattersinglemeasuringstageButton.Position = [10 58 203 20];

            % Create KinematicvectorsmultiplemeasuringstagesButton
            app.KinematicvectorsmultiplemeasuringstagesButton = uiradiobutton(app.CrackkinematicplottypeButtonGroup);
            app.KinematicvectorsmultiplemeasuringstagesButton.Text = 'Kinematic vectors (multiple measuring stages)';
            app.KinematicvectorsmultiplemeasuringstagesButton.Position = [10 33 269 20];

            % Create CrackKinematicComponentsButtonGroup
            app.CrackKinematicComponentsButtonGroup = uibuttongroup(app.GridLayout17);
            app.CrackKinematicComponentsButtonGroup.BorderColor = [0.8 0.8 0.8];
            app.CrackKinematicComponentsButtonGroup.HighlightColor = [0.8 0.8 0.8];
            app.CrackKinematicComponentsButtonGroup.Title = 'Crack Kinematic Components';
            app.CrackKinematicComponentsButtonGroup.Layout.Row = 3;
            app.CrackKinematicComponentsButtonGroup.Layout.Column = 2;

            % Create CrackopeningonlyButton
            app.CrackopeningonlyButton = uiradiobutton(app.CrackKinematicComponentsButtonGroup);
            app.CrackopeningonlyButton.Text = 'Crack opening only';
            app.CrackopeningonlyButton.Position = [10 83 125 20];

            % Create CracksliponlyButton
            app.CracksliponlyButton = uiradiobutton(app.CrackKinematicComponentsButtonGroup);
            app.CracksliponlyButton.Text = 'Crack slip only';
            app.CracksliponlyButton.Position = [10 58 100 20];

            % Create FullcrackdisplacementvectoropeningandslidingButton
            app.FullcrackdisplacementvectoropeningandslidingButton = uiradiobutton(app.CrackKinematicComponentsButtonGroup);
            app.FullcrackdisplacementvectoropeningandslidingButton.Text = 'Full crack displacement vector (opening and sliding)';
            app.FullcrackdisplacementvectoropeningandslidingButton.Position = [10 33 302 20];
            app.FullcrackdisplacementvectoropeningandslidingButton.Value = true;

            % Create ButtonGroup_3
            app.ButtonGroup_3 = uibuttongroup(app.CrackKinematicComponentsButtonGroup);
            app.ButtonGroup_3.BorderType = 'none';
            app.ButtonGroup_3.Position = [200 83 100 20];

            % Create bwButton
            app.bwButton = uitogglebutton(app.ButtonGroup_3);
            app.bwButton.Text = 'b/w';
            app.bwButton.Position = [1 1 50 20];
            app.bwButton.Value = true;

            % Create colorButton
            app.colorButton = uitogglebutton(app.ButtonGroup_3);
            app.colorButton.Text = 'color';
            app.colorButton.Position = [51 1 50 20];

            % Create ReliabilityindexButton
            app.ReliabilityindexButton = uiradiobutton(app.CrackKinematicComponentsButtonGroup);
            app.ReliabilityindexButton.Text = 'Reliability index';
            app.ReliabilityindexButton.Position = [10 8 287 22];

            % Create Panel_26
            app.Panel_26 = uipanel(app.GridLayout16);
            app.Panel_26.BorderType = 'none';
            app.Panel_26.Layout.Row = 3;
            app.Panel_26.Layout.Column = 1;

            % Create GridLayout18
            app.GridLayout18 = uigridlayout(app.Panel_26);
            app.GridLayout18.ColumnWidth = {'1x', 120, 120, '1x'};
            app.GridLayout18.RowHeight = {'1x'};
            app.GridLayout18.Padding = [0 10 0 10];

            % Create UpdateplotButton
            app.UpdateplotButton = uibutton(app.GridLayout18, 'push');
            app.UpdateplotButton.ButtonPushedFcn = createCallbackFcn(app, @Tab3_UpdateplotButtonPushed, true);
            app.UpdateplotButton.Layout.Row = 1;
            app.UpdateplotButton.Layout.Column = 3;
            app.UpdateplotButton.Text = 'Update plot';

            % Create ResetplotButton
            app.ResetplotButton = uibutton(app.GridLayout18, 'push');
            app.ResetplotButton.ButtonPushedFcn = createCallbackFcn(app, @Tab3_ResetplotButtonPushed, true);
            app.ResetplotButton.Layout.Row = 1;
            app.ResetplotButton.Layout.Column = 2;
            app.ResetplotButton.Text = 'Reset plot';

            % Show the figure after all components are created
            app.ACDMUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = ACDM_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.ACDMUIFigure)

            % Execute the startup function
            runStartupFcn(app, @UIFigureStartupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.ACDMUIFigure)
        end
    end
end