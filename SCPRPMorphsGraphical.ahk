#Include lib\json.ahk

#SingleInstance Force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetBatchLines -1

parsedBaseData := JSON.Load(FileOpen("data\baseData.json", "r").Read())
basicMorphs := parsedBaseData["basicMorphList"]

F11::
Pause ; F11 to pause app execution
Return
F12::
ExitApp ; F12 to exit the app
Return

Home:: ; Show GUI

    ; Generated by Auto-GUI 3.0.1
    Gui Font, s9, Segoe UI

    Gui Add, Text, x6 y8 w487 h23 +0x200 +Border +Center, Put the morph target's username in the box to the right, select a morph, and click morph! ; Instruction text
    Gui Add, Edit, vguiUsername x500 y8 w149 h20 0x50010080, Morph Target (Username) ; Username box
    Gui Add, Button, gMorph x500 y39 w148 h23 0x50012000, Morph! ; Morph button
    Gui Add, Picture, x500 y76 w148 h185 +Border, data\images\blueo1square.png ; Picture for morphs
    Gui Add, Button, x500 y272 w148 h23, Add/Edit Custom Morphs ; Button to add and edit custom morphs

    Gui Add, GroupBox, x6 y33 w239 h123 0x50000107, Basic Morphs by Department ; Basic morphs by department
    Gui Add, DropDownList, vguiBasicDepartment gBasicDepartmentSwitch x14 y55 w220 0x50010203, DEPARTMENT||Scientific Department|Security Department|Medical Department ; Basic morphs by department department selector
    Gui Add, DropDownList, vguiBasicMorph x14 y88 w220 0x50010203, MORPH|| ; Basic morphs by department morph selector

    Gui Add, GroupBox, x254 y33 w239 h123 0x50000007, Morphs by Department and Category ; Morphs by department and category
    Gui Add, DropDownList, vguiAdvDepartment gAdvDepartmentSwitch x264 y55 w220 0x50010203, DEPARTMENT||Scientific Department|Security Department ; Morphs by dep and cat dep selector
    Gui Add, DropDownList, vguiAdvCategory gAdvCategorySwitch x264 y88 w220 0x50010203, CATEGORY|| ; Morphs by dep and cat cat selector
    Gui Add, DropDownList, vguiAdvMorph x264 y122 w220 0x50010203, MORPH|| ; Morphs by dep and cat morph selector

    Gui Add, GroupBox, x6 y158 w239 h123 0x50000107, Custom Morphs by Department ; Custom morphs by department
    Gui Add, DropDownList, vguiBasicCusDepartment gBasicCusDepartmentSwitch x14 y179 w220 0x50010203, DEPARTMENT|| ; Custom morphs by department department
    Gui Add, DropDownList, vguiBasicCusMorph x14 y213 w220 0x50010203, MORPH|| ; Custom morphs by department morph

    Gui Add, GroupBox, x254 y158 w239 h123 0x50000107, Custom Morphs by Category ; Custom morphs by category
    Gui Add, DropDownList, vguiAdvCusDepartment gAdvCusDepartmentSwitch x264 y179 w220 0x50010203, DEPARTMENT|| ; Custom morphs by category department
    Gui Add, DropDownList, vguiAdvCusCategory gAdvCusCategorySwitch x264 y213 w220 0x50010203, CATEGORY|| ; Custom morphs by category category
    Gui Add, DropDownList, vguiAdvCusMorph x264 y247 w220 0x50010203, MORPH|| ; Custom morphs by category morph

    ;Gui Add, GroupBox, x6 y284 w239 h123 0x50000107, Custom Morph Category 3
    ;Gui Add, DropDownList, x16 y306 w220 0x50010203, OPTION 1||
    ;Gui Add, DropDownList, x16 y339 w220 0x50010203, MORPH||

    ;Gui Add, GroupBox, x254 y284 w239 h123 0x50000107, Custom Morph Category 4 
    ;Gui Add, DropDownList, x264 y306 w220 0x50010203, OPTION 1||
    ;Gui Add, DropDownList, x264 y339 w220 0x50010203, OPTION 2||
    ;Gui Add, DropDownList, x264 y373 w220 0x50010203, MORPH||

    Gui Show, w656 h412, Blue's Magic Morphing Machine v1.0.0

Return

typeMorph(morphObject, user){
    for k, bodMorph in morphObject.morphs {
        Send ``
        Sleep, 100
        Send % "morph " . user . " " . bodMorph
        Send {Enter} 
    }

    Send ``
    Sleep, 100
    Send % "shirt " . user . " " . morphObject.shirt
    Send {Enter} 

    Send ``
    Sleep, 100
    Send % "pants " . user . " " . morphObject.pants
    Send {Enter} 

    for k, hat in morphObject.hats{
        Send ``
        Sleep, 100
        Send % "hat " . user . " " . hat
        Send {Enter}
    }
    Return
}

Morph:
    Gui, Submit, NoHide
    if (guiBasicDepartment != "DEPARTMENT") {
        if (guiBasicMorph != "MORPH") {
            Gui, Hide
            departmentMorphs := basicMorphs[guiBasicDepartment]
            morph := departmentMorphs[guiBasicMorph]
            typeMorph(morph, guiUsername)
        }
    } else if (guiAdvDepartment != "DEPARTMENT") {
        
    }
Return

BasicDepartmentSwitch:
    Gui, Submit, NoHide

    stringBuild := "|MORPH||"

    departmentMorphs := basicMorphs[guiBasicDepartment]

    for key in departmentMorphs
        stringBuild := stringBuild . key . "|"

    GuiControl,, guiBasicMorph, %stringBuild%
Return

AdvDepartmentSwitch:

Return

AdvCategorySwitch:

Return

BasicCusDepartmentSwitch:

Return

AdvCusDepartmentSwitch:

Return

AdvCusCategorySwitch:

Return