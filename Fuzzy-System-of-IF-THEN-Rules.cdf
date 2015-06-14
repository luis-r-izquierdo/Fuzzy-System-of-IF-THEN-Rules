(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc.                                               *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       835,         17]
NotebookDataLength[    143818,       3042]
NotebookOptionsPosition[    143860,       3028]
NotebookOutlinePosition[    144281,       3044]
CellTagsIndexPosition[    144238,       3041]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Fuzzy System of IF-THEN Rules", "Title",
 CellChangeTimes->{{3.517752365493416*^9, 3.5177523895997944`*^9}, {
  3.5177525177231226`*^9, 3.5177525185701714`*^9}, {3.6249329281151285`*^9, 
  3.624932932757394*^9}, {3.6311641521024523`*^9, 3.6311641697586875`*^9}, {
  3.631164653272834*^9, 3.631164661255453*^9}}],

Cell[TextData[{
 "\nBy ",
 ButtonBox["Luis R. Izquierdo",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://luis.izquierdo.name"], None},
  ButtonNote->"http://luis.izquierdo.name"],
 " and ",
 ButtonBox["Segismundo S. Izquierdo",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://segis.name"], None},
  ButtonNote->"http://segis.name"]
}], "Subtitle",
 CellChangeTimes->{{3.5177524023105216`*^9, 3.5177524217326326`*^9}, {
  3.517752471921503*^9, 3.5177524892894964`*^9}}],

Cell[BoxData[Cell[TextData[StyleBox["The program below illustrates the \
so-called \[OpenCurlyDoubleQuote]Interpolation Method\[CloseCurlyDoubleQuote] \
for systems of fuzzy IF-THEN rules (Klir & Yuan, 1995, section 11.4, pp. \
317-321), including fuzzification and defuzzification (Klir & Yuan, 1995, \
chapter 12). A particular instance of this method is Mamdani inference (also \
called max-min inference), which is often used in fuzzy control. Another \
particular instance is max-prod inference. You can read a detailed \
explanation of the program below.",
  FontWeight->"Plain"]], "ManipulateCaption",
  CellChangeTimes->{{3.5177293167771044`*^9, 3.517729329448829*^9}, {
   3.5177298041399803`*^9, 3.517729942883916*^9}, {3.5177299794400063`*^9, 
   3.51773001376897*^9}, {3.517730075818519*^9, 3.517730094328578*^9}, {
   3.5177302522836123`*^9, 3.517730313329104*^9}, {3.517730460187504*^9, 
   3.517730529818486*^9}, {3.5177451453814487`*^9, 3.517745167202697*^9}, {
   3.517746642443076*^9, 3.517746713078116*^9}, {3.517746747979112*^9, 
   3.517746860605554*^9}, {3.5177469113844585`*^9, 
   3.517746916155731*^9}}]], "Text",
 CellChangeTimes->{{3.5177653878123274`*^9, 3.517765390591486*^9}, {
   3.517765592084011*^9, 3.5177656106060705`*^9}, {3.5178485190824604`*^9, 
   3.5178485190824604`*^9}, {3.5180038880270824`*^9, 
   3.5180038929253626`*^9}, {3.6249329412798815`*^9, 
   3.6249329436620173`*^9}, {3.6251252894071503`*^9, 3.625125290640221*^9}, {
   3.625126420099822*^9, 3.625126475899014*^9}, {3.6310178453446555`*^9, 
   3.6310178932493954`*^9}, {3.631017932794657*^9, 3.631018037869667*^9}, {
   3.631018070716546*^9, 3.6310181210974274`*^9}, {3.6310181734564223`*^9, 
   3.6310182503548207`*^9}, {3.63102777026717*^9, 3.631027805021158*^9}, {
   3.631072227589839*^9, 3.631072231225047*^9}, {3.6311133370186973`*^9, 
   3.631113337020697*^9}, {3.6311142420254602`*^9, 3.631114247682784*^9}, {
   3.6311632743264494`*^9, 3.631163287071672*^9}, {3.6311635158811827`*^9, 
   3.631164081143712*^9}, {3.6311641215387917`*^9, 3.6311641412466307`*^9}, {
   3.6311643137655754`*^9, 3.631164330227406*^9}, {3.6311643711596837`*^9, 
   3.6311646420626125`*^9}, {3.6311646974021215`*^9, 
   3.6311647164105587`*^9}, {3.6311647654102535`*^9, 3.631164783060687*^9}, {
   3.631164823400564*^9, 3.631164881570075*^9}, {3.6311650389777784`*^9, 
   3.6311651938618855`*^9}, 3.6311652619008255`*^9, {3.6311653451143975`*^9, 
   3.6311654196125507`*^9}, {3.6311655570336313`*^9, 
   3.6311656077959356`*^9}, {3.6311657616022863`*^9, 
   3.6311658252510056`*^9}, {3.6311660212820063`*^9, 3.631166061786885*^9}, {
   3.6311672426780634`*^9, 3.6311672461937466`*^9}, {3.6311888584341516`*^9, 
   3.6311888609651556`*^9}, {3.6311894213023715`*^9, 3.631189455301549*^9}, {
   3.6311902848405967`*^9, 3.6311903560085335`*^9}, {3.631190872104732*^9, 
   3.6311908838569536`*^9}, {3.6311909156232133`*^9, 3.631190930563841*^9}, {
   3.631191018778211*^9, 3.6311910202612143`*^9}, {3.6313728206573496`*^9, 
   3.6313728358702197`*^9}, {3.6316224569859724`*^9, 3.631622468815649*^9}, {
   3.6316225053417377`*^9, 3.6316225144462585`*^9}, {3.6316225949648643`*^9, 
   3.63162261237486*^9}, {3.6316226787996593`*^9, 3.6316226787996593`*^9}, {
   3.631622770272891*^9, 3.63162281990673*^9}, {3.631623031024805*^9, 
   3.631623039780306*^9}, {3.631623083361799*^9, 3.6316230895851545`*^9}, {
   3.6316231240531263`*^9, 3.631623159418149*^9}, {3.6316233925694847`*^9, 
   3.631623392570485*^9}, {3.6322090840169106`*^9, 3.6322090840169106`*^9}, {
   3.6322092462911916`*^9, 3.632209276729933*^9}, {3.63220932248555*^9, 
   3.63220932248555*^9}, {3.632209362146818*^9, 3.6322093665020676`*^9}, {
   3.632209400755027*^9, 3.632209407234397*^9}},
 FontWeight->"Bold",
 Background->GrayLevel[1]],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`Aggregation$$ = Max, $CellContext`AND$$ = 
    Min, $CellContext`Defuzzification$$ = $CellContext`COG, $CellContext`OR$$ \
= Max, $CellContext`R1$$ = True, $CellContext`R2$$ = True, $CellContext`R3$$ =
     True, $CellContext`Reshaping$$ = $CellContext`Truncate, \
$CellContext`v1$$ = 110, $CellContext`v2$$ = 57, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`AND$$], Min, "AND"}, {
      Min, $CellContext`Multiplication}}, {{
       Hold[$CellContext`Reshaping$$], $CellContext`Truncate, 
       ""}, {$CellContext`Truncate, $CellContext`Multiplication}}, {{
       Hold[$CellContext`Aggregation$$], Max, ""}, {
      Max, $CellContext`ProbOr, $CellContext`ClippedSum}}, {{
       Hold[$CellContext`Defuzzification$$], $CellContext`COG, 
       ""}, {$CellContext`COG, $CellContext`FOM, $CellContext`LOM, \
$CellContext`MOM, $CellContext`MeOM}}, {{
       Hold[$CellContext`OR$$], Max, "OR  "}, {Max, $CellContext`ProbOr}}, {
      Hold[
       Grid[{{
          Style["Logical operators", 10, Bold], 
          Style["Reshaping method", 10, Bold], 
          Style["   Aggregation method", 10, Bold], 
          Style["  Defuzzification method", 10, Bold]}, {
          Manipulate`Place[1], 
          Manipulate`Place[2], 
          Manipulate`Place[3], 
          Manipulate`Place[4]}, {
          Manipulate`Place[5], SpanFromAbove, SpanFromAbove, SpanFromAbove}}, 
        Alignment -> {{Left, Center}, Top}, 
        Spacings -> {{{2}}, {2, 1, 0.5, 2}}, Dividers -> {{{True}}, True}]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`v1$$], 110, ""}, 0, 200, 1}, {{
       Hold[$CellContext`v2$$], 57, ""}, 0, 100, 1}, {{
       Hold[$CellContext`R1$$], True, 
       "IF (House is Inexpensive OR Close-to-work), THEN Suit. is Good."}, {
      True, False}}, {{
       Hold[$CellContext`R2$$], True, 
       "IF (House is Expensive OR Far-from-work), THEN Suit. is Low"}, {
      True, False}}, {{
       Hold[$CellContext`R3$$], True, 
       "IF (House is Av-priced AND About-50km), THEN Suit. is Regular"}, {
      True, False}}, {
      Hold[
       Grid[{{
          Manipulate`Place[6], 
          Manipulate`Place[7], 
          Manipulate`Place[8]}, {
          Style["       PRICE", 12, Bold], 
          Style["   DISTANCE", 12, Bold], 
          Manipulate`Place[9]}, {SpanFromAbove, SpanFromAbove, 
          Manipulate`Place[10]}}, Alignment -> Left]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    600., {223., 227.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`AND$8660$$ = 
    False, $CellContext`Reshaping$8661$$ = 
    False, $CellContext`Aggregation$8662$$ = 
    0, $CellContext`Defuzzification$8663$$ = 0, $CellContext`OR$8664$$ = 
    False, $CellContext`v1$8665$$ = 0, $CellContext`v2$8666$$ = 
    0, $CellContext`R1$8667$$ = False, $CellContext`R2$8668$$ = 
    False, $CellContext`R3$8669$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`Aggregation$$ = Max, $CellContext`AND$$ = 
        Min, $CellContext`Defuzzification$$ = $CellContext`COG, \
$CellContext`OR$$ = Max, $CellContext`R1$$ = True, $CellContext`R2$$ = 
        True, $CellContext`R3$$ = 
        True, $CellContext`Reshaping$$ = $CellContext`Truncate, \
$CellContext`v1$$ = 110, $CellContext`v2$$ = 57}, "ControllerVariables" :> {
        Hold[$CellContext`AND$$, $CellContext`AND$8660$$, False], 
        Hold[$CellContext`Reshaping$$, $CellContext`Reshaping$8661$$, False], 
        Hold[$CellContext`Aggregation$$, $CellContext`Aggregation$8662$$, 0], 
        Hold[$CellContext`Defuzzification$$, \
$CellContext`Defuzzification$8663$$, 0], 
        Hold[$CellContext`OR$$, $CellContext`OR$8664$$, False], 
        Hold[$CellContext`v1$$, $CellContext`v1$8665$$, 0], 
        Hold[$CellContext`v2$$, $CellContext`v2$8666$$, 0], 
        Hold[$CellContext`R1$$, $CellContext`R1$8667$$, False], 
        Hold[$CellContext`R2$$, $CellContext`R2$8668$$, False], 
        Hold[$CellContext`R3$$, $CellContext`R3$8669$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`output$}, $CellContext`output$ = If[
           Or[$CellContext`R1$$, $CellContext`R2$$, $CellContext`R3$$], 
           $CellContext`Defuzzification$$[
            Function[$CellContext`x$, 
             $CellContext`Aggregation$$[
              If[$CellContext`R1$$, 
               $CellContext`Reshaping$$[
                $CellContext`good[$CellContext`x$], 
                $CellContext`OR$$[
                 $CellContext`inexpensive[$CellContext`v1$$], 
                 $CellContext`close[$CellContext`v2$$]]], 0], 
              If[$CellContext`R2$$, 
               $CellContext`Reshaping$$[
                $CellContext`low[$CellContext`x$], 
                $CellContext`OR$$[
                 $CellContext`expensive[$CellContext`v1$$], 
                 $CellContext`far[$CellContext`v2$$]]], 0], 
              If[$CellContext`R3$$, 
               $CellContext`Reshaping$$[
                $CellContext`regular[$CellContext`x$], 
                $CellContext`AND$$[
                 $CellContext`average[$CellContext`v1$$], 
                 $CellContext`about50[$CellContext`v2$$]]], 0]]], {0, 10}, 
            0.03125], Indeterminate]; GraphicsGrid[{{
            Plot[
             $CellContext`inexpensive[$CellContext`x], {$CellContext`x, 0, 
              200}, Epilog -> If[$CellContext`R1$$, 
               Dynamic[{
                 Arrowheads[0.07], Thick, Blue, 
                 Arrow[{{$CellContext`v1$$, 0}, {$CellContext`v1$$, 
                    $CellContext`inexpensive[$CellContext`v1$$]}}], 
                 Darker[Blue], 
                 Arrow[{{$CellContext`v1$$, 
                    $CellContext`inexpensive[$CellContext`v1$$]}, {227, 
                    $CellContext`inexpensive[$CellContext`v1$$]}}], 
                 Text[
                  Style[
                   ToString[
                    Round[
                    $CellContext`inexpensive[$CellContext`v1$$], 0.01]], 10, 
                   Bold], {
                  205, $CellContext`inexpensive[$CellContext`v1$$] + 
                   If[$CellContext`inexpensive[$CellContext`v1$$] < 0.7, 
                    0.1, -0.1]}]}], {}], PlotRange -> {{0, 227}, {0, 1}}, 
             PlotStyle -> Blue, PlotLabel -> "Inexpensive", PlotRangePadding -> 
             None, Ticks -> {{0, 50, 100, 150, 200}, Automatic}], 
            Plot[
             $CellContext`close[$CellContext`x], {$CellContext`x, 0, 100}, 
             Epilog -> If[$CellContext`R1$$, 
               Dynamic[{
                 Arrowheads[0.07], Thick, Red, 
                 Arrow[{{$CellContext`v2$$, 0}, {$CellContext`v2$$, 
                    $CellContext`close[$CellContext`v2$$]}}], 
                 Darker[Red], 
                 Arrow[{{$CellContext`v2$$, 
                    $CellContext`close[$CellContext`v2$$]}, {112, 
                    $CellContext`close[$CellContext`v2$$]}}], 
                 Text[
                  Style[
                   ToString[
                    Round[
                    $CellContext`close[$CellContext`v2$$], 0.01]], 10, 
                   Bold], {
                  100, $CellContext`close[$CellContext`v2$$] + 
                   If[$CellContext`close[$CellContext`v2$$] < 0.7, 
                    0.1, -0.1]}]}], {}], PlotRange -> {{0, 112}, {0, 1}}, 
             PlotStyle -> Red, PlotLabel -> "Close-to-work", PlotRangePadding -> 
             None], 
            If[$CellContext`R1$$, 
             Plot[1, {$CellContext`x, 0, 0.1}, Epilog -> Dynamic[{Thick, 
                 Arrowheads[Large], 
                 Darker[Blue], 
                 Arrow[{{-0.1, 
                    $CellContext`inexpensive[$CellContext`v1$$]}, {0, 
                    $CellContext`inexpensive[$CellContext`v1$$]}}], 
                 Darker[Red], 
                 Arrow[{{-0.1, 
                    $CellContext`close[$CellContext`v2$$]}, {0, 
                    $CellContext`close[$CellContext`v2$$]}}], Black, 
                 Rectangle[{0, 0}, {0.1, 1}], 
                 Inset[
                  Style["OR", 12, White], {0.05, 0.5}], Black, 
                 Arrow[{{0.1, 
                    $CellContext`OR$$[
                    $CellContext`inexpensive[$CellContext`v1$$], 
                    $CellContext`close[$CellContext`v2$$]]}, {0.25, 
                    $CellContext`OR$$[
                    $CellContext`inexpensive[$CellContext`v1$$], 
                    $CellContext`close[$CellContext`v2$$]]}}], 
                 Text[
                  Style[
                   ToString[
                    Round[
                    $CellContext`OR$$[
                    $CellContext`inexpensive[$CellContext`v1$$], 
                    $CellContext`close[$CellContext`v2$$]], 0.01]], 11, 
                   Bold], {0.15, $CellContext`OR$$[
                    $CellContext`inexpensive[$CellContext`v1$$], 
                    $CellContext`close[$CellContext`v2$$]] + 
                   If[$CellContext`OR$$[
                    $CellContext`inexpensive[$CellContext`v1$$], 
                    $CellContext`close[$CellContext`v2$$]] < 0.8, 
                    0.1, -0.14]}]}], PlotRange -> {{-0.1, 0.25}, {0, 1.1}}, 
              Axes -> False, ImagePadding -> {{0, 0}, {15, 15}}], Null], 
            If[$CellContext`R1$$, 
             Dynamic[
              Plot[{
                $CellContext`good[$CellContext`x], 
                $CellContext`Reshaping$$[
                 $CellContext`good[$CellContext`x], 
                 $CellContext`OR$$[
                  $CellContext`inexpensive[$CellContext`v1$$], 
                  $CellContext`close[$CellContext`v2$$]]]}, {$CellContext`x, 
                0, 10}, Epilog -> Dynamic[{
                  Arrowheads[0.07], Thick, Black, 
                  Arrow[{{-2, 
                    $CellContext`OR$$[
                    $CellContext`inexpensive[$CellContext`v1$$], 
                    $CellContext`close[$CellContext`v2$$]]}, {10, 
                    $CellContext`OR$$[
                    $CellContext`inexpensive[$CellContext`v1$$], 
                    $CellContext`close[$CellContext`v2$$]]}}]}], Axes -> 
               False, PlotRange -> {{-1.9, 10}, {0, 1}}, 
               Frame -> {{False, True}, {True, False}}, 
               FrameTicks -> {{None, All}, {All, None}}, PlotStyle -> Black, 
               Filling -> {2 -> Axis}, PlotLabel -> "Good Suitability", 
               PlotRangePadding -> None]], Null]}, {
            Plot[
             $CellContext`expensive[$CellContext`x], {$CellContext`x, 0, 200},
              Epilog -> If[$CellContext`R2$$, 
               Dynamic[{
                 Arrowheads[0.07], Thick, Blue, 
                 Arrow[{{$CellContext`v1$$, 0}, {$CellContext`v1$$, 
                    $CellContext`expensive[$CellContext`v1$$]}}], 
                 Darker[Blue], 
                 Arrow[{{$CellContext`v1$$, 
                    $CellContext`expensive[$CellContext`v1$$]}, {227, 
                    $CellContext`expensive[$CellContext`v1$$]}}], 
                 Text[
                  Style[
                   ToString[
                    Round[
                    $CellContext`expensive[$CellContext`v1$$], 0.01]], 10, 
                   Bold], {
                  205, $CellContext`expensive[$CellContext`v1$$] + 
                   If[$CellContext`expensive[$CellContext`v1$$] < 0.7, 
                    0.1, -0.1]}]}], {}], PlotRange -> {{0, 227}, {0, 1}}, 
             PlotStyle -> Blue, PlotLabel -> "Expensive", PlotRangePadding -> 
             None, Ticks -> {{0, 50, 100, 150, 200}, Automatic}], 
            Plot[
             $CellContext`far[$CellContext`x], {$CellContext`x, 0, 100}, 
             Epilog -> If[$CellContext`R2$$, 
               Dynamic[{
                 Arrowheads[0.07], Thick, Red, 
                 Arrow[{{$CellContext`v2$$, 0}, {$CellContext`v2$$, 
                    $CellContext`far[$CellContext`v2$$]}}], 
                 Darker[Red], 
                 Arrow[{{$CellContext`v2$$, 
                    $CellContext`far[$CellContext`v2$$]}, {112, 
                    $CellContext`far[$CellContext`v2$$]}}], 
                 Text[
                  Style[
                   ToString[
                    Round[
                    $CellContext`far[$CellContext`v2$$], 0.01]], 10, Bold], {
                  100, $CellContext`far[$CellContext`v2$$] + 
                   If[$CellContext`far[$CellContext`v2$$] < 0.7, 
                    0.1, -0.1]}]}], {}], PlotRange -> {{0, 112}, {0, 1}}, 
             PlotStyle -> Red, PlotLabel -> "Far-from-work", PlotRangePadding -> 
             None], 
            If[$CellContext`R2$$, 
             Plot[1, {$CellContext`x, 0, 0.1}, Epilog -> Dynamic[{Thick, 
                 Arrowheads[Large], 
                 Darker[Blue], 
                 Arrow[{{-0.1, 
                    $CellContext`expensive[$CellContext`v1$$]}, {0, 
                    $CellContext`expensive[$CellContext`v1$$]}}], 
                 Darker[Red], 
                 Arrow[{{-0.1, 
                    $CellContext`far[$CellContext`v2$$]}, {0, 
                    $CellContext`far[$CellContext`v2$$]}}], Black, 
                 Rectangle[{0, 0}, {0.1, 1}], 
                 Inset[
                  Style["OR", 12, White], {0.05, 0.5}], Black, 
                 Arrow[{{0.1, 
                    $CellContext`OR$$[
                    $CellContext`expensive[$CellContext`v1$$], 
                    $CellContext`far[$CellContext`v2$$]]}, {0.25, 
                    $CellContext`OR$$[
                    $CellContext`expensive[$CellContext`v1$$], 
                    $CellContext`far[$CellContext`v2$$]]}}], 
                 Text[
                  Style[
                   ToString[
                    Round[
                    $CellContext`OR$$[
                    $CellContext`expensive[$CellContext`v1$$], 
                    $CellContext`far[$CellContext`v2$$]], 0.01]], 11, Bold], {
                  0.15, $CellContext`OR$$[
                    $CellContext`expensive[$CellContext`v1$$], 
                    $CellContext`far[$CellContext`v2$$]] + 
                   If[$CellContext`OR$$[
                    $CellContext`expensive[$CellContext`v1$$], 
                    $CellContext`far[$CellContext`v2$$]] < 0.8, 
                    0.1, -0.14]}]}], PlotRange -> {{-0.1, 0.25}, {0, 1.1}}, 
              Axes -> False, ImagePadding -> {{0, 0}, {15, 15}}], Null], 
            If[$CellContext`R2$$, 
             Dynamic[
              Plot[{
                $CellContext`low[$CellContext`x], 
                $CellContext`Reshaping$$[
                 $CellContext`low[$CellContext`x], 
                 $CellContext`OR$$[
                  $CellContext`expensive[$CellContext`v1$$], 
                  $CellContext`far[$CellContext`v2$$]]]}, {$CellContext`x, 0, 
                10}, Epilog -> Dynamic[{
                  Arrowheads[0.07], Thick, Black, 
                  Arrow[{{-2, 
                    $CellContext`OR$$[
                    $CellContext`expensive[$CellContext`v1$$], 
                    $CellContext`far[$CellContext`v2$$]]}, {10, 
                    $CellContext`OR$$[
                    $CellContext`expensive[$CellContext`v1$$], 
                    $CellContext`far[$CellContext`v2$$]]}}]}], Axes -> False, 
               PlotRange -> {{-1.9, 10}, {0, 1}}, 
               Frame -> {{False, True}, {True, False}}, 
               FrameTicks -> {{None, All}, {All, None}}, PlotStyle -> Black, 
               Filling -> {2 -> Axis}, PlotLabel -> "Low Suitability", 
               PlotRangePadding -> None]], Null]}, {
            Plot[
             $CellContext`average[$CellContext`x], {$CellContext`x, 0, 200}, 
             Epilog -> If[$CellContext`R3$$, 
               Dynamic[{
                 Arrowheads[0.07], Thick, Blue, 
                 Arrow[{{$CellContext`v1$$, 0}, {$CellContext`v1$$, 
                    $CellContext`average[$CellContext`v1$$]}}], 
                 Darker[Blue], 
                 Arrow[{{$CellContext`v1$$, 
                    $CellContext`average[$CellContext`v1$$]}, {227, 
                    $CellContext`average[$CellContext`v1$$]}}], 
                 Text[
                  Style[
                   ToString[
                    Round[
                    $CellContext`average[$CellContext`v1$$], 0.01]], 10, 
                   Bold], {
                  205, $CellContext`average[$CellContext`v1$$] + 
                   If[$CellContext`average[$CellContext`v1$$] < 0.7, 
                    0.1, -0.1]}]}], {}], PlotRange -> {{0, 227}, {0, 1}}, 
             PlotStyle -> Blue, PlotLabel -> "Average", PlotRangePadding -> 
             None, Ticks -> {{0, 50, 100, 150, 200}, Automatic}], 
            Plot[
             $CellContext`about50[$CellContext`x], {$CellContext`x, 0, 100}, 
             Epilog -> If[$CellContext`R3$$, 
               Dynamic[{
                 Arrowheads[0.07], Thick, Red, 
                 Arrow[{{$CellContext`v2$$, 0}, {$CellContext`v2$$, 
                    $CellContext`about50[$CellContext`v2$$]}}], 
                 Darker[Red], 
                 Arrow[{{$CellContext`v2$$, 
                    $CellContext`about50[$CellContext`v2$$]}, {112, 
                    $CellContext`about50[$CellContext`v2$$]}}], 
                 Text[
                  Style[
                   ToString[
                    Round[
                    $CellContext`about50[$CellContext`v2$$], 0.01]], 10, 
                   Bold], {
                  100, $CellContext`about50[$CellContext`v2$$] + 
                   If[$CellContext`about50[$CellContext`v2$$] < 0.7, 
                    0.1, -0.1]}]}], {}], PlotRange -> {{0, 112}, {0, 1}}, 
             PlotStyle -> Red, PlotLabel -> "About-50k-from-work", 
             PlotRangePadding -> None], 
            If[$CellContext`R3$$, 
             Plot[1, {$CellContext`x, 0, 0.1}, Epilog -> Dynamic[{Thick, 
                 Arrowheads[Large], 
                 Darker[Blue], 
                 Arrow[{{-0.1, 
                    $CellContext`average[$CellContext`v1$$]}, {0, 
                    $CellContext`average[$CellContext`v1$$]}}], 
                 Darker[Red], 
                 Arrow[{{-0.1, 
                    $CellContext`about50[$CellContext`v2$$]}, {0, 
                    $CellContext`about50[$CellContext`v2$$]}}], Black, 
                 Rectangle[{0, 0}, {0.1, 1}], 
                 Inset[
                  Style["AND", 12, White], {0.05, 0.5}], Black, 
                 Arrow[{{0.1, 
                    $CellContext`AND$$[
                    $CellContext`average[$CellContext`v1$$], 
                    $CellContext`about50[$CellContext`v2$$]]}, {0.25, 
                    $CellContext`AND$$[
                    $CellContext`average[$CellContext`v1$$], 
                    $CellContext`about50[$CellContext`v2$$]]}}], 
                 Text[
                  Style[
                   ToString[
                    Round[
                    $CellContext`AND$$[
                    $CellContext`average[$CellContext`v1$$], 
                    $CellContext`about50[$CellContext`v2$$]], 0.01]], 11, 
                   Bold], {0.15, $CellContext`AND$$[
                    $CellContext`average[$CellContext`v1$$], 
                    $CellContext`about50[$CellContext`v2$$]] + 
                   If[$CellContext`AND$$[
                    $CellContext`average[$CellContext`v1$$], 
                    $CellContext`about50[$CellContext`v2$$]] < 0.8, 
                    0.1, -0.14]}]}], PlotRange -> {{-0.1, 0.25}, {0, 1.1}}, 
              Axes -> False, ImagePadding -> {{0, 0}, {15, 15}}], Null], 
            If[$CellContext`R3$$, 
             Dynamic[
              Plot[{
                $CellContext`regular[$CellContext`x], 
                $CellContext`Reshaping$$[
                 $CellContext`regular[$CellContext`x], 
                 $CellContext`AND$$[
                  $CellContext`average[$CellContext`v1$$], 
                  $CellContext`about50[$CellContext`v2$$]]]}, {$CellContext`x,
                 0, 10}, Axes -> False, Epilog -> Dynamic[{
                  Arrowheads[0.07], Thick, Black, 
                  Arrow[{{-2, 
                    $CellContext`AND$$[
                    $CellContext`average[$CellContext`v1$$], 
                    $CellContext`about50[$CellContext`v2$$]]}, {10, 
                    $CellContext`AND$$[
                    $CellContext`average[$CellContext`v1$$], 
                    $CellContext`about50[$CellContext`v2$$]]}}]}], 
               PlotRange -> {{-1.9, 10}, {0, 1}}, 
               Frame -> {{False, True}, {True, False}}, 
               FrameTicks -> {{None, All}, {All, None}}, PlotStyle -> Black, 
               Filling -> {2 -> Axis}, PlotLabel -> "Regular Suitability", 
               PlotRangePadding -> None]], Null]}, {
            Dynamic[
             Graphics[
              Text[
               Style[
                StringJoin["INPUT 1:\n", "PRICE = ", 
                 ToString[$CellContext`v1$$]], 16, Bold, Blue], {0, -1}]]], 
            Dynamic[
             Graphics[
              Text[
               Style[
                StringJoin["INPUT 2:\n", "DISTANCE = ", 
                 ToString[$CellContext`v2$$]], 16, Bold, Red], {0, -1}]]], 
            Graphics[
             Text[
              Style[
               StringJoin["OUTPUT:\n", 
                ToString[$CellContext`output$]], 16, Bold, Black], {1, 0}]], 
            If[
             NumberQ[$CellContext`output$], 
             Plot[
              $CellContext`Aggregation$$[
               If[$CellContext`R1$$, 
                $CellContext`Reshaping$$[
                 $CellContext`good[$CellContext`x], 
                 $CellContext`OR$$[
                  $CellContext`inexpensive[$CellContext`v1$$], 
                  $CellContext`close[$CellContext`v2$$]]], 0], 
               If[$CellContext`R2$$, 
                $CellContext`Reshaping$$[
                 $CellContext`low[$CellContext`x], 
                 $CellContext`OR$$[
                  $CellContext`expensive[$CellContext`v1$$], 
                  $CellContext`far[$CellContext`v2$$]]], 0], 
               If[$CellContext`R3$$, 
                $CellContext`Reshaping$$[
                 $CellContext`regular[$CellContext`x], 
                 $CellContext`AND$$[
                  $CellContext`average[$CellContext`v1$$], 
                  $CellContext`about50[$CellContext`v2$$]]], 
                0]], {$CellContext`x, 0, 10}, Epilog -> {
                Arrowheads[0.07], Thick, Black, 
                
                Arrow[{{$CellContext`output$, 0.3}, {$CellContext`output$, 
                   0}}]}, Axes -> False, PlotRange -> {{-1.9, 10}, {0, 1}}, 
              Frame -> {{False, True}, {True, False}}, 
              FrameTicks -> {{None, All}, {All, None}}, PlotStyle -> Black, 
              PlotLabel -> Style["SUITABILITY", 15, Black, Bold], 
              PlotRangePadding -> None, Filling -> Axis], Null]}}, 
          ImageSize -> {600, 450}, 
          Spacings -> {{0, 30, 80, 80, 0}, {0, 0, 0, 50, 0}}]], 
      "Specifications" :> {{{$CellContext`AND$$, Min, "AND"}, {
         Min, $CellContext`Multiplication}, ControlPlacement -> 
         1}, {{$CellContext`Reshaping$$, $CellContext`Truncate, 
          ""}, {$CellContext`Truncate, $CellContext`Multiplication}, 
         ControlPlacement -> 2}, {{$CellContext`Aggregation$$, Max, ""}, {
         Max, $CellContext`ProbOr, $CellContext`ClippedSum}, ControlPlacement -> 
         3}, {{$CellContext`Defuzzification$$, $CellContext`COG, 
          ""}, {$CellContext`COG, $CellContext`FOM, $CellContext`LOM, \
$CellContext`MOM, $CellContext`MeOM}, ControlPlacement -> 
         4}, {{$CellContext`OR$$, Max, "OR  "}, {Max, $CellContext`ProbOr}, 
         ControlPlacement -> 5}, 
        Grid[{{
           Style["Logical operators", 10, Bold], 
           Style["Reshaping method", 10, Bold], 
           Style["   Aggregation method", 10, Bold], 
           Style["  Defuzzification method", 10, Bold]}, {
           Manipulate`Place[1], 
           Manipulate`Place[2], 
           Manipulate`Place[3], 
           Manipulate`Place[4]}, {
           Manipulate`Place[5], SpanFromAbove, SpanFromAbove, SpanFromAbove}},
          Alignment -> {{Left, Center}, Top}, 
         Spacings -> {{{2}}, {2, 1, 0.5, 2}}, 
         Dividers -> {{{True}}, True}], {{$CellContext`v1$$, 110, ""}, 0, 200,
          1, Appearance -> "Labeled", ImageSize -> Small, ControlPlacement -> 
         6}, {{$CellContext`v2$$, 57, ""}, 0, 100, 1, Appearance -> "Labeled",
          ImageSize -> Small, ControlPlacement -> 
         7}, {{$CellContext`R1$$, True, 
          "IF (House is Inexpensive OR Close-to-work), THEN Suit. is Good."}, \
{True, False}, ControlPlacement -> 
         8}, {{$CellContext`R2$$, True, 
          "IF (House is Expensive OR Far-from-work), THEN Suit. is Low"}, {
         True, False}, ControlPlacement -> 
         9}, {{$CellContext`R3$$, True, 
          "IF (House is Av-priced AND About-50km), THEN Suit. is Regular"}, {
         True, False}, ControlPlacement -> 10}, 
        Grid[{{
           Manipulate`Place[6], 
           Manipulate`Place[7], 
           Manipulate`Place[8]}, {
           Style["       PRICE", 12, Bold], 
           Style["   DISTANCE", 12, Bold], 
           Manipulate`Place[9]}, {SpanFromAbove, SpanFromAbove, 
           Manipulate`Place[10]}}, Alignment -> Left]}, 
      "Options" :> {
       SynchronousUpdating -> False, 
        ControlPlacement -> {Top, Bottom, Bottom, Bottom, Top}, Alignment -> 
        Left}, "DefaultOptions" :> {}],
     ImageSizeCache->{671., {328., 335.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>(($CellContext`TriangularFuzzySet[{
          Pattern[$CellContext`min, 
           Blank[]], 
          Pattern[$CellContext`max, 
           Blank[]]}, 
         Pattern[$CellContext`c, 
          Blank[]], 
         Pattern[$CellContext`x, 
          Blank[]]] := N[
         If[$CellContext`x == $CellContext`c, 1, 
          
          Piecewise[{{(-$CellContext`min + $CellContext`x)/($CellContext`c - \
$CellContext`min), 
             
             Inequality[$CellContext`min, LessEqual, $CellContext`x, 
              Less, $CellContext`c]}, {($CellContext`max - \
$CellContext`x)/(-$CellContext`c + $CellContext`max), $CellContext`c <= \
$CellContext`x <= $CellContext`max}}, 0]]]; $CellContext`GaussianFuzzySet[{
          Pattern[$CellContext`min, 
           Blank[]], 
          Pattern[$CellContext`max, 
           Blank[]]}, 
         Pattern[$CellContext`m, 
          Blank[]], 
         Pattern[$CellContext`s, 
          Blank[]], 
         Pattern[$CellContext`x, 
          Blank[]]] := N[
         If[$CellContext`s == 0, $CellContext`m, 
          
          Piecewise[{{
            E^(-(($CellContext`x - $CellContext`m)^2/(
               2 $CellContext`s^2))), $CellContext`min <= $CellContext`x <= \
$CellContext`max}, {0, True}}]]]; $CellContext`inexpensive[
         Pattern[$CellContext`x, 
          Blank[]]] := $CellContext`TriangularFuzzySet[{0, 200}, 
         0, $CellContext`x]; $CellContext`average[
         Pattern[$CellContext`x, 
          Blank[]]] := $CellContext`TriangularFuzzySet[{0, 200}, 
         100, $CellContext`x]; $CellContext`expensive[
         Pattern[$CellContext`x, 
          Blank[]]] := $CellContext`TriangularFuzzySet[{0, 200}, 
         200, $CellContext`x]; $CellContext`close[
         Pattern[$CellContext`x, 
          Blank[]]] := $CellContext`GaussianFuzzySet[{0, 100}, 0, 
         30, $CellContext`x]; $CellContext`far[
         Pattern[$CellContext`x, 
          Blank[]]] := $CellContext`GaussianFuzzySet[{0, 100}, 100, 
         30, $CellContext`x]; $CellContext`about50[
         Pattern[$CellContext`x, 
          Blank[]]] := $CellContext`GaussianFuzzySet[{0, 100}, 50, 
         10, $CellContext`x]; $CellContext`low[
         Pattern[$CellContext`x, 
          Blank[]]] := $CellContext`GaussianFuzzySet[{0, 10}, 0, 
         2, $CellContext`x]; $CellContext`regular[
         Pattern[$CellContext`x, 
          Blank[]]] := $CellContext`GaussianFuzzySet[{0, 10}, 5, 
         2, $CellContext`x]; $CellContext`good[
         Pattern[$CellContext`x, 
          Blank[]]] := $CellContext`GaussianFuzzySet[{0, 10}, 10, 
         2, $CellContext`x]; $CellContext`Multiplication[
         Pattern[$CellContext`a, 
          Blank[]], 
         Pattern[$CellContext`b, 
          Blank[]]] := $CellContext`a $CellContext`b; $CellContext`ProbOr[
         Pattern[$CellContext`a, 
          Blank[]], 
         Pattern[$CellContext`b, 
          
          Blank[]]] := $CellContext`a + $CellContext`b - $CellContext`a \
$CellContext`b; $CellContext`ProbOr[
         Pattern[$CellContext`a, 
          Blank[]], 
         Pattern[$CellContext`b, 
          Blank[]], 
         Pattern[$CellContext`c, 
          Blank[]]] := $CellContext`ProbOr[
         $CellContext`ProbOr[$CellContext`a, $CellContext`b], $CellContext`c]; \
$CellContext`Truncate[
         Pattern[$CellContext`a, 
          Blank[]], 
         Pattern[$CellContext`b, 
          Blank[]]] := 
       Min[$CellContext`a, $CellContext`b]; $CellContext`ClippedSum[
         Pattern[$CellContext`a, 
          Blank[]], 
         Pattern[$CellContext`b, 
          Blank[]], 
         Pattern[$CellContext`c, 
          Blank[]]] := 
       Module[{$CellContext`s = $CellContext`a + $CellContext`b + \
$CellContext`c}, 
         If[$CellContext`s < 1, $CellContext`s, 1]]; $CellContext`COG[
         Pattern[$CellContext`FS, 
          Blank[]], 
         Pattern[$CellContext`range, 
          Blank[]], 
         Pattern[$CellContext`res, 
          Blank[]]] := 
       Module[{$CellContext`minX = 
          First[$CellContext`range] + $CellContext`res/2, $CellContext`maxX = 
          Last[$CellContext`range], $CellContext`x, $CellContext`v, \
$CellContext`massTimesResolution = 0, $CellContext`centersTimesV = 0}, 
         For[$CellContext`x = $CellContext`minX, $CellContext`x <= \
$CellContext`maxX, $CellContext`x = $CellContext`x + $CellContext`res, \
$CellContext`v = $CellContext`FS[$CellContext`x]; \
$CellContext`massTimesResolution = $CellContext`massTimesResolution + \
$CellContext`v; $CellContext`centersTimesV = $CellContext`centersTimesV + \
$CellContext`x $CellContext`v; Null]; 
         If[$CellContext`massTimesResolution == 0, 
           Indeterminate, \
$CellContext`centersTimesV/$CellContext`massTimesResolution]]; \
$CellContext`FOM[
         Pattern[$CellContext`FS, 
          Blank[]], 
         Pattern[$CellContext`range, 
          Blank[]], 
         Pattern[$CellContext`res, 
          Blank[]]] := 
       Module[{$CellContext`minX = 
          First[$CellContext`range], $CellContext`maxX = 
          Last[$CellContext`range], $CellContext`maxValue = -1, \
$CellContext`x, $CellContext`v, $CellContext`maximum}, 
         For[$CellContext`x = $CellContext`minX, $CellContext`x <= \
$CellContext`maxX, $CellContext`x = $CellContext`x + $CellContext`res, \
$CellContext`v = $CellContext`FS[$CellContext`x]; 
           If[$CellContext`v > $CellContext`maxValue, $CellContext`maximum = \
$CellContext`x; $CellContext`maxValue = $CellContext`v]; 
           Null]; $CellContext`maximum]; $CellContext`LOM[
         Pattern[$CellContext`FS, 
          Blank[]], 
         Pattern[$CellContext`range, 
          Blank[]], 
         Pattern[$CellContext`res, 
          Blank[]]] := 
       Module[{$CellContext`minX = 
          First[$CellContext`range], $CellContext`maxX = 
          Last[$CellContext`range], $CellContext`maxValue = -1, \
$CellContext`x, $CellContext`v, $CellContext`maximum}, 
         For[$CellContext`x = $CellContext`minX, $CellContext`x <= \
$CellContext`maxX, $CellContext`x = $CellContext`x + $CellContext`res, \
$CellContext`v = $CellContext`FS[$CellContext`x]; 
           If[$CellContext`v >= $CellContext`maxValue, $CellContext`maximum = \
$CellContext`x; $CellContext`maxValue = $CellContext`v]; 
           Null]; $CellContext`maximum]; $CellContext`MOM[
         Pattern[$CellContext`FS, 
          Blank[]], 
         Pattern[$CellContext`range, 
          Blank[]], 
         Pattern[$CellContext`res, 
          Blank[]]] := 
       Module[{$CellContext`minX = 
          First[$CellContext`range], $CellContext`maxX = 
          Last[$CellContext`range], $CellContext`maxValue = -1, \
$CellContext`x, $CellContext`x1, $CellContext`x2, $CellContext`v, \
$CellContext`foundTwo = False}, 
         For[$CellContext`x = $CellContext`minX, $CellContext`x <= \
$CellContext`maxX, $CellContext`x = $CellContext`x + $CellContext`res, \
$CellContext`v = $CellContext`FS[$CellContext`x]; 
           If[$CellContext`v > $CellContext`maxValue, $CellContext`x1 = \
$CellContext`x; $CellContext`maxValue = $CellContext`v; $CellContext`foundTwo = 
              False, 
             
             If[$CellContext`v == $CellContext`maxValue, $CellContext`x2 = \
$CellContext`x; $CellContext`foundTwo = True]]; Null]; 
         If[$CellContext`foundTwo, ($CellContext`x1 + $CellContext`x2)/
           2, $CellContext`x1]]; $CellContext`MeOM[
         Pattern[$CellContext`FS, 
          Blank[]], 
         Pattern[$CellContext`range, 
          Blank[]], 
         Pattern[$CellContext`res, 
          Blank[]]] := 
       Module[{$CellContext`minX = 
          First[$CellContext`range], $CellContext`maxX = 
          Last[$CellContext`range], $CellContext`maxValue = -1, \
$CellContext`x, $CellContext`v, $CellContext`numberOfSamples = 
          0, $CellContext`sumOfMax}, 
         For[$CellContext`x = $CellContext`minX, $CellContext`x <= \
$CellContext`maxX, $CellContext`x = $CellContext`x + $CellContext`res, \
$CellContext`v = $CellContext`FS[$CellContext`x]; 
           If[$CellContext`v > $CellContext`maxValue, $CellContext`sumOfMax = \
$CellContext`x; $CellContext`maxValue = $CellContext`v; \
$CellContext`numberOfSamples = 1, 
             
             If[$CellContext`v == $CellContext`maxValue, \
$CellContext`sumOfMax = $CellContext`sumOfMax + $CellContext`x; \
$CellContext`numberOfSamples = $CellContext`numberOfSamples + 1]]; 
           Null]; $CellContext`sumOfMax/$CellContext`numberOfSamples]; Null); 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.641919614836687*^9, 3.64191972886821*^9},
 TextAlignment->Center],

Cell[BoxData[Cell[TextData[{
  StyleBox[
  "To understand the example above, suppose you are searching for a house of \
certain given characteristics (e.g. 2 bedrooms, garage...) within a radius of \
100km from your work. The aim is to calculate the suitability of any \
particular house given the following 3 rules:\n- IF (House is Inexpensive OR \
Close-to-work), THEN Suitability is Good.\n- IF (House is Expensive OR \
Far-from-work), THEN Suitability is Low.\n- IF (House is Averagely-priced AND \
About-50-km-from-work), THEN Suitability is Regular.\n\nThe suitability is \
calculated using the so-called \[OpenCurlyDoubleQuote]Interpolation Method\
\[CloseCurlyDoubleQuote]  (Klir & Yuan, 1995, section 11.4, pp. 317-321) and \
defuzzifying the resulting fuzzy set (Klir & Yuan, 1995, chapter 12). The \
method consists of the following 4 steps:\n\n",
   FontWeight->"Plain"],
  StyleBox[
  "1.- Calculate the degree of consistency between the inputs and the \
antecedent of each IF-THEN rule",
   FontVariations->{"Underline"->True}],
  StyleBox[
  ". The Demonstration lets you choose different functions for the logical \
operators (AND, OR). As an example, consider the first rule at the top row, \
with antecedent \"Inexpensive OR Close-to-work\". The computation for crisp \
inputs ",
   FontWeight->"Plain"],
  StyleBox["price",
   FontWeight->"Plain",
   FontSlant->"Italic"],
  StyleBox[" = 110 and ",
   FontWeight->"Plain"],
  StyleBox["distance",
   FontWeight->"Plain",
   FontSlant->"Italic"],
  StyleBox[
  " = 57, using the function Maximum (Max) as logical OR, would be: \n\t\
OR(Inexpensive(110), Close-to-work(57)) = OR(0.45,0.16) = Max(0.45,0.16) = \
0.45\nThe result of this step is a number for each rule (i.e. the degree of \
consistency between the inputs and each rule's antecedent).\n\n",
   FontWeight->"Plain"],
  StyleBox[
  "2.- Reshape the consequent of each rule given the degree of consistency \
between the inputs and the rule's antecedent",
   FontVariations->{"Underline"->True}],
  StyleBox[
  ". Possible operators for the reshaping method are Truncate (by default) \
and Multiplication. Consider, for example, the rule at the top. The \
computation would be: Reshape(\"Good suitability\", 0.45) = Truncate(\"Good \
suitability\", 0.45). The result of this step is a fuzzy set for each rule.\n\
\n",
   FontWeight->"Plain"],
  StyleBox["3.- Aggregate all the reshaped consequents",
   FontVariations->{"Underline"->True}],
  StyleBox[
  ". The result of this step is one fuzzy set (Aggreg. Suitability) which is \
the union of all the reshaped consequents. Possible operators for the \
aggregation are the Maximum (Max), the Probabilistic Sum \
(ProbOr[a,b]:=a+b-ab) and the Sum Clipped at 1 (ClippedSum).\n\n",
   FontWeight->"Plain"],
  StyleBox["4.- Defuzzify the aggregated fuzzy set",
   FontVariations->{"Underline"->True}],
  StyleBox[
  ". The defuzzification reduces the aggregated fuzzy set to one single \
number. Possible defuzzification methods are: Center of Gravity (COG), First \
of Maxima (FOM), Last of Maxima (LOM), Middle of Maxima (MOM) and Mean of \
Maxima (MeOM).\n\nIf you want to use Mamdani (or max-min) inference, choose \
Min for logical AND, Max for logical OR, Truncate as Reshaping method, Max as \
Aggregation method, and Center of Gravity (COG) as Defuzzification method.\n\n\
",
   FontWeight->"Plain"],
  "Reference",
  StyleBox[":\n\[CenterDot] Klir, G.J.& Yuan, B.(1995). ",
   FontWeight->"Plain"],
  StyleBox["Fuzzy Sets and Fuzzy Logic: Theory and Applications",
   FontWeight->"Plain",
   FontSlant->"Italic"],
  StyleBox[". Upper Saddle River, New Jersey: Prentice Hall PTR.",
   FontWeight->"Plain"]
 }], "ManipulateCaption",
  CellChangeTimes->{{3.5177293167771044`*^9, 3.517729329448829*^9}, {
   3.5177298041399803`*^9, 3.517729942883916*^9}, {3.5177299794400063`*^9, 
   3.51773001376897*^9}, {3.517730075818519*^9, 3.517730094328578*^9}, {
   3.5177302522836123`*^9, 3.517730313329104*^9}, {3.517730460187504*^9, 
   3.517730529818486*^9}, {3.5177451453814487`*^9, 3.517745167202697*^9}, {
   3.517746642443076*^9, 3.517746713078116*^9}, {3.517746747979112*^9, 
   3.517746860605554*^9}, {3.5177469113844585`*^9, 
   3.517746916155731*^9}}]], "Text",
 CellChangeTimes->{{3.5177653878123274`*^9, 3.517765390591486*^9}, {
   3.517765592084011*^9, 3.5177656106060705`*^9}, {3.5178485190824604`*^9, 
   3.5178485190824604`*^9}, {3.5180038880270824`*^9, 
   3.5180038929253626`*^9}, {3.6249329412798815`*^9, 
   3.6249329436620173`*^9}, {3.6251252894071503`*^9, 3.625125290640221*^9}, {
   3.625126420099822*^9, 3.625126475899014*^9}, {3.6310178453446555`*^9, 
   3.6310178932493954`*^9}, {3.631017932794657*^9, 3.631018037869667*^9}, {
   3.631018070716546*^9, 3.6310181210974274`*^9}, {3.6310181734564223`*^9, 
   3.6310182503548207`*^9}, {3.63102777026717*^9, 3.631027805021158*^9}, {
   3.631072227589839*^9, 3.631072231225047*^9}, {3.6311133370186973`*^9, 
   3.631113337020697*^9}, {3.6311142420254602`*^9, 3.631114247682784*^9}, {
   3.6311632743264494`*^9, 3.631163287071672*^9}, {3.6311635158811827`*^9, 
   3.631164081143712*^9}, {3.6311641215387917`*^9, 3.6311641412466307`*^9}, {
   3.6311643137655754`*^9, 3.631164330227406*^9}, {3.6311643711596837`*^9, 
   3.6311646420626125`*^9}, {3.6311646974021215`*^9, 
   3.6311647164105587`*^9}, {3.6311647654102535`*^9, 3.631164783060687*^9}, {
   3.631164823400564*^9, 3.631164881570075*^9}, {3.6311650389777784`*^9, 
   3.6311651938618855`*^9}, 3.6311652619008255`*^9, {3.6311653451143975`*^9, 
   3.6311654196125507`*^9}, {3.6311655570336313`*^9, 
   3.6311656077959356`*^9}, {3.6311657616022863`*^9, 
   3.6311658252510056`*^9}, {3.6311660212820063`*^9, 3.631166061786885*^9}, {
   3.6311672426780634`*^9, 3.6311672461937466`*^9}, {3.6311888584341516`*^9, 
   3.6311888609651556`*^9}, {3.6311894213023715`*^9, 3.631189455301549*^9}, {
   3.6311902848405967`*^9, 3.6311903560085335`*^9}, {3.631190872104732*^9, 
   3.6311908838569536`*^9}, {3.6311909156232133`*^9, 3.631190930563841*^9}, {
   3.631191018778211*^9, 3.6311910202612143`*^9}, {3.6313728206573496`*^9, 
   3.6313728358702197`*^9}, {3.6316224569859724`*^9, 3.631622468815649*^9}, {
   3.6316225053417377`*^9, 3.6316225144462585`*^9}, {3.6316225949648643`*^9, 
   3.63162261237486*^9}, {3.6316226787996593`*^9, 3.6316226787996593`*^9}, {
   3.631622770272891*^9, 3.63162281990673*^9}, {3.631623031024805*^9, 
   3.631623039780306*^9}, {3.631623083361799*^9, 3.6316230895851545`*^9}, {
   3.6316231240531263`*^9, 3.631623159418149*^9}, {3.6316233925694847`*^9, 
   3.631623392570485*^9}, {3.6322090840169106`*^9, 3.6322090840169106`*^9}, {
   3.6322092462911916`*^9, 3.632209276729933*^9}, {3.63220932248555*^9, 
   3.63220932248555*^9}, {3.632209362146818*^9, 3.632209392387548*^9}, {
   3.6322094421643953`*^9, 3.6322094445535316`*^9}},
 FontWeight->"Bold",
 Background->GrayLevel[1]],

Cell[CellGroupData[{

Cell["Source code", "Section",
 CellChangeTimes->{{3.5177649723305626`*^9, 3.5177649882424726`*^9}}],

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", "output", "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"output", "=", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"Or", "[", 
          RowBox[{"R1", ",", "R2", ",", "R3"}], "]"}], ",", 
         RowBox[{"Defuzzification", "[", 
          RowBox[{
           RowBox[{"Function", " ", "[", 
            RowBox[{"x", ",", 
             RowBox[{"Aggregation", "[", 
              RowBox[{
               RowBox[{"If", "[", 
                RowBox[{"R1", ",", 
                 RowBox[{"Reshaping", "[", 
                  RowBox[{
                   RowBox[{"good", "[", "x", "]"}], ",", 
                   RowBox[{"OR", "[", 
                    RowBox[{
                    RowBox[{"inexpensive", "[", "v1", "]"}], ",", 
                    RowBox[{"close", "[", "v2", "]"}]}], "]"}]}], "]"}], ",", 
                 "0"}], "]"}], ",", 
               RowBox[{"If", "[", 
                RowBox[{"R2", ",", 
                 RowBox[{"Reshaping", "[", 
                  RowBox[{
                   RowBox[{"low", "[", "x", "]"}], ",", 
                   RowBox[{"OR", "[", 
                    RowBox[{
                    RowBox[{"expensive", "[", "v1", "]"}], ",", 
                    RowBox[{"far", "[", "v2", "]"}]}], "]"}]}], "]"}], ",", 
                 "0"}], "]"}], ",", 
               RowBox[{"If", "[", 
                RowBox[{"R3", ",", 
                 RowBox[{"Reshaping", "[", 
                  RowBox[{
                   RowBox[{"regular", "[", "x", "]"}], ",", 
                   RowBox[{"AND", "[", 
                    RowBox[{
                    RowBox[{"average", "[", "v1", "]"}], ",", 
                    RowBox[{"about50", "[", "v2", "]"}]}], "]"}]}], "]"}], 
                 ",", "0"}], "]"}]}], "]"}]}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "10"}], "}"}], ",", "0.03125"}], "]"}], ",", 
         "Indeterminate"}], "]"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"GraphicsGrid", "[", 
       RowBox[{
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"Plot", "[", 
             RowBox[{
              RowBox[{"inexpensive", "[", "x", "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"x", ",", "0", ",", "200"}], "}"}], ",", 
              RowBox[{"Epilog", "\[Rule]", 
               RowBox[{"If", "[", 
                RowBox[{"R1", ",", 
                 RowBox[{"Dynamic", "[", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"Arrowheads", "[", "0.07", "]"}], ",", "Thick", 
                    ",", "Blue", ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"v1", ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"v1", ",", 
                    RowBox[{"inexpensive", "[", "v1", "]"}]}], "}"}]}], "}"}],
                     "]"}], ",", 
                    RowBox[{"Darker", "[", "Blue", "]"}], ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"v1", ",", 
                    RowBox[{"inexpensive", "[", "v1", "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"227", ",", 
                    RowBox[{"inexpensive", "[", "v1", "]"}]}], "}"}]}], "}"}],
                     "]"}], ",", 
                    RowBox[{"Text", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"ToString", "[", 
                    RowBox[{"Round", "[", 
                    RowBox[{
                    RowBox[{"inexpensive", "[", "v1", "]"}], ",", "0.01"}], 
                    "]"}], "]"}], ",", "10", ",", "Bold"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"205", ",", 
                    RowBox[{
                    RowBox[{"inexpensive", "[", "v1", "]"}], "+", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"inexpensive", "[", "v1", "]"}], "<", "0.7"}], 
                    ",", "0.1", ",", 
                    RowBox[{"-", "0.1"}]}], "]"}]}]}], "}"}]}], "]"}]}], 
                   "}"}], "]"}], ",", 
                 RowBox[{"{", "}"}]}], "]"}]}], ",", "\[IndentingNewLine]", 
              RowBox[{"PlotRange", "\[Rule]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"0", ",", "227"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ",", 
              RowBox[{"PlotStyle", "\[Rule]", "Blue"}], ",", 
              RowBox[{"PlotLabel", "\[Rule]", "\"\<Inexpensive\>\""}], ",", 
              RowBox[{"PlotRangePadding", "\[Rule]", "None"}], ",", 
              RowBox[{"Ticks", "\[Rule]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                  "0", ",", "50", ",", "100", ",", "150", ",", "200"}], "}"}],
                  ",", "Automatic"}], "}"}]}]}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"Plot", "[", 
             RowBox[{
              RowBox[{"close", "[", "x", "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"x", ",", "0", ",", "100"}], "}"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Epilog", "\[Rule]", 
               RowBox[{"If", "[", 
                RowBox[{"R1", ",", 
                 RowBox[{"Dynamic", "[", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"Arrowheads", "[", "0.07", "]"}], ",", "Thick", 
                    ",", "Red", ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"v2", ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"v2", ",", 
                    RowBox[{"close", "[", "v2", "]"}]}], "}"}]}], "}"}], 
                    "]"}], ",", 
                    RowBox[{"Darker", "[", "Red", "]"}], ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"v2", ",", 
                    RowBox[{"close", "[", "v2", "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"112", ",", 
                    RowBox[{"close", "[", "v2", "]"}]}], "}"}]}], "}"}], 
                    "]"}], ",", 
                    RowBox[{"Text", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"ToString", "[", 
                    RowBox[{"Round", "[", 
                    RowBox[{
                    RowBox[{"close", "[", "v2", "]"}], ",", "0.01"}], "]"}], 
                    "]"}], ",", "10", ",", "Bold"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"100", ",", 
                    RowBox[{
                    RowBox[{"close", "[", "v2", "]"}], "+", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"close", "[", "v2", "]"}], "<", "0.7"}], ",", 
                    "0.1", ",", 
                    RowBox[{"-", "0.1"}]}], "]"}]}]}], "}"}]}], "]"}]}], 
                   "}"}], "]"}], ",", 
                 RowBox[{"{", "}"}]}], "]"}]}], "\[IndentingNewLine]", ",", 
              RowBox[{"PlotRange", "\[Rule]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"0", ",", "112"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ",", 
              RowBox[{"PlotStyle", "\[Rule]", "Red"}], ",", 
              RowBox[{"PlotLabel", "\[Rule]", "\"\<Close-to-work\>\""}], ",", 
              RowBox[{"PlotRangePadding", "\[Rule]", "None"}]}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{"R1", ",", 
              RowBox[{"Plot", "[", 
               RowBox[{"1", ",", 
                RowBox[{"{", 
                 RowBox[{"x", ",", "0", ",", "0.1"}], "}"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"Epilog", "\[Rule]", 
                 RowBox[{"Dynamic", "[", 
                  RowBox[{"{", 
                   RowBox[{"Thick", ",", 
                    RowBox[{"Arrowheads", "[", "Large", "]"}], ",", 
                    RowBox[{"Darker", "[", "Blue", "]"}], ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "0.1"}], ",", 
                    RowBox[{"inexpensive", "[", "v1", "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"inexpensive", "[", "v1", "]"}]}], "}"}]}], "}"}],
                     "]"}], ",", 
                    RowBox[{"Darker", "[", "Red", "]"}], ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "0.1"}], ",", 
                    RowBox[{"close", "[", "v2", "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"close", "[", "v2", "]"}]}], "}"}]}], "}"}], 
                    "]"}], ",", "Black", ",", 
                    RowBox[{"Rectangle", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0.1", ",", "1"}], "}"}]}], "]"}], ",", 
                    RowBox[{"Inset", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<OR\>\"", ",", "12", ",", "White"}], "]"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{"0.05", ",", "0.5"}], "}"}]}], "]"}], ",", 
                    "Black", ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0.1", ",", 
                    RowBox[{"OR", "[", 
                    RowBox[{
                    RowBox[{"inexpensive", "[", "v1", "]"}], ",", 
                    RowBox[{"close", "[", "v2", "]"}]}], "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0.25", ",", 
                    RowBox[{"OR", "[", 
                    RowBox[{
                    RowBox[{"inexpensive", "[", "v1", "]"}], ",", 
                    RowBox[{"close", "[", "v2", "]"}]}], "]"}]}], "}"}]}], 
                    "}"}], "]"}], ",", 
                    RowBox[{"Text", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"ToString", "[", 
                    RowBox[{"Round", "[", 
                    RowBox[{
                    RowBox[{"OR", "[", 
                    RowBox[{
                    RowBox[{"inexpensive", "[", "v1", "]"}], ",", 
                    RowBox[{"close", "[", "v2", "]"}]}], "]"}], ",", "0.01"}],
                     "]"}], "]"}], ",", "11", ",", "Bold"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0.15", ",", 
                    RowBox[{
                    RowBox[{"OR", "[", 
                    RowBox[{
                    RowBox[{"inexpensive", "[", "v1", "]"}], ",", 
                    RowBox[{"close", "[", "v2", "]"}]}], "]"}], "+", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"OR", "[", 
                    RowBox[{
                    RowBox[{"inexpensive", "[", "v1", "]"}], ",", 
                    RowBox[{"close", "[", "v2", "]"}]}], "]"}], "<", "0.8"}], 
                    ",", "0.1", ",", 
                    RowBox[{"-", "0.14"}]}], "]"}]}]}], "}"}]}], "]"}]}], 
                   "}"}], "]"}]}], ",", "\[IndentingNewLine]", 
                RowBox[{"PlotRange", "\[Rule]", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "0.1"}], ",", "0.25"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"0", ",", "1.1"}], "}"}]}], "}"}]}], ",", 
                RowBox[{"Axes", "\[Rule]", "False"}], ",", 
                RowBox[{"ImagePadding", "\[Rule]", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"0", ",", "0"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"15", ",", "15"}], "}"}]}], "}"}]}]}], "]"}], 
              ","}], "]"}], ",", "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{"R1", ",", 
              RowBox[{"Dynamic", "[", 
               RowBox[{"Plot", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"good", "[", "x", "]"}], ",", 
                   RowBox[{"Reshaping", "[", 
                    RowBox[{
                    RowBox[{"good", "[", "x", "]"}], ",", 
                    RowBox[{"OR", "[", 
                    RowBox[{
                    RowBox[{"inexpensive", "[", "v1", "]"}], ",", 
                    RowBox[{"close", "[", "v2", "]"}]}], "]"}]}], "]"}]}], 
                  "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"x", ",", "0", ",", "10"}], "}"}], ",", 
                 RowBox[{"Epilog", "\[Rule]", 
                  RowBox[{"Dynamic", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrowheads", "[", "0.07", "]"}], ",", "Thick", 
                    ",", "Black", ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "2"}], ",", 
                    RowBox[{"OR", "[", 
                    RowBox[{
                    RowBox[{"inexpensive", "[", "v1", "]"}], ",", 
                    RowBox[{"close", "[", "v2", "]"}]}], "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"10", ",", 
                    RowBox[{"OR", "[", 
                    RowBox[{
                    RowBox[{"inexpensive", "[", "v1", "]"}], ",", 
                    RowBox[{"close", "[", "v2", "]"}]}], "]"}]}], "}"}]}], 
                    "}"}], "]"}]}], "}"}], "]"}]}], ",", 
                 RowBox[{"Axes", "\[Rule]", "False"}], ",", 
                 RowBox[{"PlotRange", "\[Rule]", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "1.9"}], ",", "10"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ",", 
                 RowBox[{"Frame", "\[Rule]", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"False", ",", "True"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"True", ",", "False"}], "}"}]}], "}"}]}], ",", 
                 RowBox[{"FrameTicks", "\[Rule]", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"None", ",", "All"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"All", ",", "None"}], "}"}]}], "}"}]}], ",", 
                 RowBox[{"PlotStyle", "\[Rule]", "Black"}], ",", 
                 RowBox[{"Filling", "\[Rule]", 
                  RowBox[{"{", 
                   RowBox[{"2", "\[Rule]", "Axis"}], "}"}]}], ",", 
                 RowBox[{"PlotLabel", "\[Rule]", "\"\<Good Suitability\>\""}],
                  ",", 
                 RowBox[{"PlotRangePadding", "\[Rule]", "None"}]}], "]"}], 
               "]"}], ","}], "]"}]}], "\[IndentingNewLine]", "}"}], 
          "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"Plot", "[", 
             RowBox[{
              RowBox[{"expensive", "[", "x", "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"x", ",", "0", ",", "200"}], "}"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Epilog", "\[Rule]", 
               RowBox[{"If", "[", 
                RowBox[{"R2", ",", 
                 RowBox[{"Dynamic", "[", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"Arrowheads", "[", "0.07", "]"}], ",", "Thick", 
                    ",", "Blue", ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"v1", ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"v1", ",", 
                    RowBox[{"expensive", "[", "v1", "]"}]}], "}"}]}], "}"}], 
                    "]"}], ",", 
                    RowBox[{"Darker", "[", "Blue", "]"}], ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"v1", ",", 
                    RowBox[{"expensive", "[", "v1", "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"227", ",", 
                    RowBox[{"expensive", "[", "v1", "]"}]}], "}"}]}], "}"}], 
                    "]"}], ",", 
                    RowBox[{"Text", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"ToString", "[", 
                    RowBox[{"Round", "[", 
                    RowBox[{
                    RowBox[{"expensive", "[", "v1", "]"}], ",", "0.01"}], 
                    "]"}], "]"}], ",", "10", ",", "Bold"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"205", ",", 
                    RowBox[{
                    RowBox[{"expensive", "[", "v1", "]"}], "+", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"expensive", "[", "v1", "]"}], "<", "0.7"}], ",", 
                    "0.1", ",", 
                    RowBox[{"-", "0.1"}]}], "]"}]}]}], "}"}]}], "]"}]}], 
                   "}"}], "]"}], ",", 
                 RowBox[{"{", "}"}]}], "]"}]}], ",", "\[IndentingNewLine]", 
              RowBox[{"PlotRange", "\[Rule]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"0", ",", "227"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ",", 
              RowBox[{"PlotStyle", "\[Rule]", "Blue"}], ",", 
              RowBox[{"PlotLabel", "\[Rule]", "\"\<Expensive\>\""}], ",", 
              RowBox[{"PlotRangePadding", "\[Rule]", "None"}], ",", 
              RowBox[{"Ticks", "\[Rule]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                  "0", ",", "50", ",", "100", ",", "150", ",", "200"}], "}"}],
                  ",", "Automatic"}], "}"}]}]}], "]"}], ",", 
            RowBox[{"Plot", "[", 
             RowBox[{
              RowBox[{"far", "[", "x", "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"x", ",", "0", ",", "100"}], "}"}], ",", 
              RowBox[{"Epilog", "\[Rule]", 
               RowBox[{"If", "[", 
                RowBox[{"R2", ",", 
                 RowBox[{"Dynamic", "[", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"Arrowheads", "[", "0.07", "]"}], ",", "Thick", 
                    ",", "Red", ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"v2", ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"v2", ",", 
                    RowBox[{"far", "[", "v2", "]"}]}], "}"}]}], "}"}], "]"}], 
                    ",", 
                    RowBox[{"Darker", "[", "Red", "]"}], ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"v2", ",", 
                    RowBox[{"far", "[", "v2", "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"112", ",", 
                    RowBox[{"far", "[", "v2", "]"}]}], "}"}]}], "}"}], "]"}], 
                    ",", 
                    RowBox[{"Text", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"ToString", "[", 
                    RowBox[{"Round", "[", 
                    RowBox[{
                    RowBox[{"far", "[", "v2", "]"}], ",", "0.01"}], "]"}], 
                    "]"}], ",", "10", ",", "Bold"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"100", ",", 
                    RowBox[{
                    RowBox[{"far", "[", "v2", "]"}], "+", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"far", "[", "v2", "]"}], "<", "0.7"}], ",", "0.1",
                     ",", 
                    RowBox[{"-", "0.1"}]}], "]"}]}]}], "}"}]}], "]"}]}], 
                   "}"}], "]"}], ",", 
                 RowBox[{"{", "}"}]}], "]"}]}], ",", "\[IndentingNewLine]", 
              RowBox[{"PlotRange", "\[Rule]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"0", ",", "112"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ",", 
              RowBox[{"PlotStyle", "\[Rule]", "Red"}], ",", 
              RowBox[{"PlotLabel", "\[Rule]", "\"\<Far-from-work\>\""}], ",", 
              RowBox[{"PlotRangePadding", "\[Rule]", "None"}]}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{"R2", ",", 
              RowBox[{"Plot", "[", 
               RowBox[{"1", ",", 
                RowBox[{"{", 
                 RowBox[{"x", ",", "0", ",", "0.1"}], "}"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"Epilog", "\[Rule]", 
                 RowBox[{"Dynamic", "[", 
                  RowBox[{"{", 
                   RowBox[{"Thick", ",", 
                    RowBox[{"Arrowheads", "[", "Large", "]"}], ",", 
                    RowBox[{"Darker", "[", "Blue", "]"}], ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "0.1"}], ",", 
                    RowBox[{"expensive", "[", "v1", "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"expensive", "[", "v1", "]"}]}], "}"}]}], "}"}], 
                    "]"}], ",", 
                    RowBox[{"Darker", "[", "Red", "]"}], ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "0.1"}], ",", 
                    RowBox[{"far", "[", "v2", "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"far", "[", "v2", "]"}]}], "}"}]}], "}"}], "]"}], 
                    ",", "Black", ",", 
                    RowBox[{"Rectangle", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0.1", ",", "1"}], "}"}]}], "]"}], ",", 
                    RowBox[{"Inset", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<OR\>\"", ",", "12", ",", "White"}], "]"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{"0.05", ",", "0.5"}], "}"}]}], "]"}], ",", 
                    "Black", ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0.1", ",", 
                    RowBox[{"OR", "[", 
                    RowBox[{
                    RowBox[{"expensive", "[", "v1", "]"}], ",", 
                    RowBox[{"far", "[", "v2", "]"}]}], "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0.25", ",", 
                    RowBox[{"OR", "[", 
                    RowBox[{
                    RowBox[{"expensive", "[", "v1", "]"}], ",", 
                    RowBox[{"far", "[", "v2", "]"}]}], "]"}]}], "}"}]}], 
                    "}"}], "]"}], ",", 
                    RowBox[{"Text", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"ToString", "[", 
                    RowBox[{"Round", "[", 
                    RowBox[{
                    RowBox[{"OR", "[", 
                    RowBox[{
                    RowBox[{"expensive", "[", "v1", "]"}], ",", 
                    RowBox[{"far", "[", "v2", "]"}]}], "]"}], ",", "0.01"}], 
                    "]"}], "]"}], ",", "11", ",", "Bold"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0.15", ",", 
                    RowBox[{
                    RowBox[{"OR", "[", 
                    RowBox[{
                    RowBox[{"expensive", "[", "v1", "]"}], ",", 
                    RowBox[{"far", "[", "v2", "]"}]}], "]"}], "+", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"OR", "[", 
                    RowBox[{
                    RowBox[{"expensive", "[", "v1", "]"}], ",", 
                    RowBox[{"far", "[", "v2", "]"}]}], "]"}], "<", "0.8"}], 
                    ",", "0.1", ",", 
                    RowBox[{"-", "0.14"}]}], "]"}]}]}], "}"}]}], "]"}]}], 
                   "}"}], "]"}]}], ",", "\[IndentingNewLine]", 
                RowBox[{"PlotRange", "\[Rule]", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "0.1"}], ",", "0.25"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"0", ",", "1.1"}], "}"}]}], "}"}]}], ",", 
                RowBox[{"Axes", "\[Rule]", "False"}], ",", 
                RowBox[{"ImagePadding", "\[Rule]", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"0", ",", "0"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"15", ",", "15"}], "}"}]}], "}"}]}]}], "]"}], 
              ","}], "]"}], ",", "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{"R2", ",", 
              RowBox[{"Dynamic", "[", 
               RowBox[{"Plot", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"low", "[", "x", "]"}], ",", 
                   RowBox[{"Reshaping", "[", 
                    RowBox[{
                    RowBox[{"low", "[", "x", "]"}], ",", 
                    RowBox[{"OR", "[", 
                    RowBox[{
                    RowBox[{"expensive", "[", "v1", "]"}], ",", 
                    RowBox[{"far", "[", "v2", "]"}]}], "]"}]}], "]"}]}], 
                  "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"x", ",", "0", ",", "10"}], "}"}], ",", 
                 RowBox[{"Epilog", "\[Rule]", 
                  RowBox[{"Dynamic", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrowheads", "[", "0.07", "]"}], ",", "Thick", 
                    ",", "Black", ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "2"}], ",", 
                    RowBox[{"OR", "[", 
                    RowBox[{
                    RowBox[{"expensive", "[", "v1", "]"}], ",", 
                    RowBox[{"far", "[", "v2", "]"}]}], "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"10", ",", 
                    RowBox[{"OR", "[", 
                    RowBox[{
                    RowBox[{"expensive", "[", "v1", "]"}], ",", 
                    RowBox[{"far", "[", "v2", "]"}]}], "]"}]}], "}"}]}], 
                    "}"}], "]"}]}], "}"}], "]"}]}], ",", 
                 RowBox[{"Axes", "\[Rule]", "False"}], ",", 
                 RowBox[{"PlotRange", "\[Rule]", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "1.9"}], ",", "10"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ",", 
                 RowBox[{"Frame", "\[Rule]", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"False", ",", "True"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"True", ",", "False"}], "}"}]}], "}"}]}], ",", 
                 RowBox[{"FrameTicks", "\[Rule]", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"None", ",", "All"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"All", ",", "None"}], "}"}]}], "}"}]}], ",", 
                 RowBox[{"PlotStyle", "\[Rule]", "Black"}], ",", 
                 RowBox[{"Filling", "\[Rule]", 
                  RowBox[{"{", 
                   RowBox[{"2", "\[Rule]", "Axis"}], "}"}]}], ",", 
                 RowBox[{"PlotLabel", "\[Rule]", "\"\<Low Suitability\>\""}], 
                 ",", 
                 RowBox[{"PlotRangePadding", "\[Rule]", "None"}]}], "]"}], 
               "]"}], ","}], "]"}]}], "\[IndentingNewLine]", "}"}], 
          "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"Plot", "[", 
             RowBox[{
              RowBox[{"average", "[", "x", "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"x", ",", "0", ",", "200"}], "}"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Epilog", "\[Rule]", 
               RowBox[{"If", "[", 
                RowBox[{"R3", ",", 
                 RowBox[{"Dynamic", "[", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"Arrowheads", "[", "0.07", "]"}], ",", "Thick", 
                    ",", "Blue", ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"v1", ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"v1", ",", 
                    RowBox[{"average", "[", "v1", "]"}]}], "}"}]}], "}"}], 
                    "]"}], ",", 
                    RowBox[{"Darker", "[", "Blue", "]"}], ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"v1", ",", 
                    RowBox[{"average", "[", "v1", "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"227", ",", 
                    RowBox[{"average", "[", "v1", "]"}]}], "}"}]}], "}"}], 
                    "]"}], ",", 
                    RowBox[{"Text", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"ToString", "[", 
                    RowBox[{"Round", "[", 
                    RowBox[{
                    RowBox[{"average", "[", "v1", "]"}], ",", "0.01"}], "]"}],
                     "]"}], ",", "10", ",", "Bold"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"205", ",", 
                    RowBox[{
                    RowBox[{"average", "[", "v1", "]"}], "+", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"average", "[", "v1", "]"}], "<", "0.7"}], ",", 
                    "0.1", ",", 
                    RowBox[{"-", "0.1"}]}], "]"}]}]}], "}"}]}], "]"}]}], 
                   "}"}], "]"}], ",", 
                 RowBox[{"{", "}"}]}], "]"}]}], "\[IndentingNewLine]", ",", 
              RowBox[{"PlotRange", "\[Rule]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"0", ",", "227"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ",", 
              RowBox[{"PlotStyle", "\[Rule]", "Blue"}], ",", 
              RowBox[{"PlotLabel", "\[Rule]", "\"\<Average\>\""}], ",", 
              RowBox[{"PlotRangePadding", "\[Rule]", "None"}], ",", 
              RowBox[{"Ticks", "\[Rule]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                  "0", ",", "50", ",", "100", ",", "150", ",", "200"}], "}"}],
                  ",", "Automatic"}], "}"}]}]}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"Plot", "[", 
             RowBox[{
              RowBox[{"about50", "[", "x", "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"x", ",", "0", ",", "100"}], "}"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Epilog", "\[Rule]", 
               RowBox[{"If", "[", 
                RowBox[{"R3", ",", 
                 RowBox[{"Dynamic", "[", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"Arrowheads", "[", "0.07", "]"}], ",", "Thick", 
                    ",", "Red", ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"v2", ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"v2", ",", 
                    RowBox[{"about50", "[", "v2", "]"}]}], "}"}]}], "}"}], 
                    "]"}], ",", 
                    RowBox[{"Darker", "[", "Red", "]"}], ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"v2", ",", 
                    RowBox[{"about50", "[", "v2", "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"112", ",", 
                    RowBox[{"about50", "[", "v2", "]"}]}], "}"}]}], "}"}], 
                    "]"}], ",", 
                    RowBox[{"Text", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"ToString", "[", 
                    RowBox[{"Round", "[", 
                    RowBox[{
                    RowBox[{"about50", "[", "v2", "]"}], ",", "0.01"}], "]"}],
                     "]"}], ",", "10", ",", "Bold"}], "]"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"100", ",", 
                    RowBox[{
                    RowBox[{"about50", "[", "v2", "]"}], "+", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"about50", "[", "v2", "]"}], "<", "0.7"}], ",", 
                    "0.1", ",", 
                    RowBox[{"-", "0.1"}]}], "]"}]}]}], "}"}]}], "]"}]}], 
                   "}"}], "]"}], ",", 
                 RowBox[{"{", "}"}]}], "]"}]}], ",", "\[IndentingNewLine]", 
              RowBox[{"PlotRange", "\[Rule]", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"0", ",", "112"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ",", 
              RowBox[{"PlotStyle", "\[Rule]", "Red"}], ",", 
              RowBox[{"PlotLabel", "\[Rule]", "\"\<About-50k-from-work\>\""}],
               ",", 
              RowBox[{"PlotRangePadding", "\[Rule]", "None"}]}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{"R3", ",", 
              RowBox[{"Plot", "[", 
               RowBox[{"1", ",", 
                RowBox[{"{", 
                 RowBox[{"x", ",", "0", ",", "0.1"}], "}"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"Epilog", "\[Rule]", 
                 RowBox[{"Dynamic", "[", 
                  RowBox[{"{", 
                   RowBox[{"Thick", ",", 
                    RowBox[{"Arrowheads", "[", "Large", "]"}], ",", 
                    RowBox[{"Darker", "[", "Blue", "]"}], ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "0.1"}], ",", 
                    RowBox[{"average", "[", "v1", "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"average", "[", "v1", "]"}]}], "}"}]}], "}"}], 
                    "]"}], ",", 
                    RowBox[{"Darker", "[", "Red", "]"}], ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "0.1"}], ",", 
                    RowBox[{"about50", "[", "v2", "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"about50", "[", "v2", "]"}]}], "}"}]}], "}"}], 
                    "]"}], ",", "Black", ",", 
                    RowBox[{"Rectangle", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0.1", ",", "1"}], "}"}]}], "]"}], ",", 
                    RowBox[{"Inset", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{"\"\<AND\>\"", ",", "12", ",", "White"}], "]"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{"0.05", ",", "0.5"}], "}"}]}], "]"}], ",", 
                    "Black", ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0.1", ",", 
                    RowBox[{"AND", "[", 
                    RowBox[{
                    RowBox[{"average", "[", "v1", "]"}], ",", 
                    RowBox[{"about50", "[", "v2", "]"}]}], "]"}]}], "}"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{"0.25", ",", 
                    RowBox[{"AND", "[", 
                    RowBox[{
                    RowBox[{"average", "[", "v1", "]"}], ",", 
                    RowBox[{"about50", "[", "v2", "]"}]}], "]"}]}], "}"}]}], 
                    "}"}], "]"}], ",", 
                    RowBox[{"Text", "[", 
                    RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"ToString", "[", 
                    RowBox[{"Round", "[", 
                    RowBox[{
                    RowBox[{"AND", "[", 
                    RowBox[{
                    RowBox[{"average", "[", "v1", "]"}], ",", 
                    RowBox[{"about50", "[", "v2", "]"}]}], "]"}], ",", 
                    "0.01"}], "]"}], "]"}], ",", "11", ",", "Bold"}], "]"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{"0.15", ",", 
                    RowBox[{
                    RowBox[{"AND", "[", 
                    RowBox[{
                    RowBox[{"average", "[", "v1", "]"}], ",", 
                    RowBox[{"about50", "[", "v2", "]"}]}], "]"}], "+", 
                    RowBox[{"If", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"AND", "[", 
                    RowBox[{
                    RowBox[{"average", "[", "v1", "]"}], ",", 
                    RowBox[{"about50", "[", "v2", "]"}]}], "]"}], "<", 
                    "0.8"}], ",", "0.1", ",", 
                    RowBox[{"-", "0.14"}]}], "]"}]}]}], "}"}]}], "]"}]}], 
                   "}"}], "]"}]}], ",", "\[IndentingNewLine]", 
                RowBox[{"PlotRange", "\[Rule]", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "0.1"}], ",", "0.25"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"0", ",", "1.1"}], "}"}]}], "}"}]}], ",", 
                RowBox[{"Axes", "\[Rule]", "False"}], ",", 
                RowBox[{"ImagePadding", "\[Rule]", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"0", ",", "0"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"15", ",", "15"}], "}"}]}], "}"}]}]}], "]"}], 
              ","}], "]"}], ",", "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{"R3", ",", 
              RowBox[{"Dynamic", "[", 
               RowBox[{"Plot", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"regular", "[", "x", "]"}], ",", 
                   RowBox[{"Reshaping", "[", 
                    RowBox[{
                    RowBox[{"regular", "[", "x", "]"}], ",", 
                    RowBox[{"AND", "[", 
                    RowBox[{
                    RowBox[{"average", "[", "v1", "]"}], ",", 
                    RowBox[{"about50", "[", "v2", "]"}]}], "]"}]}], "]"}]}], 
                  "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"x", ",", "0", ",", "10"}], "}"}], ",", 
                 RowBox[{"Axes", "\[Rule]", "False"}], ",", 
                 RowBox[{"Epilog", "\[Rule]", 
                  RowBox[{"Dynamic", "[", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Arrowheads", "[", "0.07", "]"}], ",", "Thick", 
                    ",", "Black", ",", 
                    RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "2"}], ",", 
                    RowBox[{"AND", "[", 
                    RowBox[{
                    RowBox[{"average", "[", "v1", "]"}], ",", 
                    RowBox[{"about50", "[", "v2", "]"}]}], "]"}]}], "}"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{"10", ",", 
                    RowBox[{"AND", "[", 
                    RowBox[{
                    RowBox[{"average", "[", "v1", "]"}], ",", 
                    RowBox[{"about50", "[", "v2", "]"}]}], "]"}]}], "}"}]}], 
                    "}"}], "]"}]}], "}"}], "]"}]}], ",", 
                 "\[IndentingNewLine]", 
                 RowBox[{"PlotRange", "\[Rule]", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "1.9"}], ",", "10"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ",", 
                 RowBox[{"Frame", "\[Rule]", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"False", ",", "True"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"True", ",", "False"}], "}"}]}], "}"}]}], ",", 
                 RowBox[{"FrameTicks", "\[Rule]", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"None", ",", "All"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"All", ",", "None"}], "}"}]}], "}"}]}], ",", 
                 RowBox[{"PlotStyle", "\[Rule]", "Black"}], ",", 
                 RowBox[{"Filling", "\[Rule]", 
                  RowBox[{"{", 
                   RowBox[{"2", "\[Rule]", "Axis"}], "}"}]}], ",", 
                 RowBox[{
                 "PlotLabel", "\[Rule]", "\"\<Regular Suitability\>\""}], ",", 
                 RowBox[{"PlotRangePadding", "\[Rule]", "None"}]}], "]"}], 
               "]"}], ","}], "]"}]}], "\[IndentingNewLine]", "}"}], 
          "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"Dynamic", "[", 
             RowBox[{"Graphics", "[", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"\"\<INPUT 1:\\n\>\"", "<>", "\"\<PRICE = \>\"", "<>", 
                   RowBox[{"ToString", "[", "v1", "]"}]}], ",", "16", ",", 
                  "Bold", ",", "Blue"}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", 
                  RowBox[{"-", "1"}]}], "}"}]}], "]"}], "]"}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"Dynamic", "[", 
             RowBox[{"Graphics", "[", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{
                  "\"\<INPUT 2:\\n\>\"", "<>", "\"\<DISTANCE = \>\"", "<>", 
                   RowBox[{"ToString", "[", "v2", "]"}]}], ",", "16", ",", 
                  "Bold", ",", "Red"}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", 
                  RowBox[{"-", "1"}]}], "}"}]}], "]"}], "]"}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"Graphics", "[", 
             RowBox[{"Text", "[", 
              RowBox[{
               RowBox[{"Style", "[", 
                RowBox[{
                 RowBox[{"\"\<OUTPUT:\\n\>\"", "<>", 
                  RowBox[{"ToString", "[", "output", "]"}]}], ",", "16", ",", 
                 "Bold", ",", "Black"}], "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"1", ",", "0"}], "}"}]}], "]"}], "]"}], ",", 
            "\[IndentingNewLine]", "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"NumberQ", "[", "output", "]"}], ",", 
              RowBox[{"Plot", "[", 
               RowBox[{
                RowBox[{"Aggregation", "[", 
                 RowBox[{
                  RowBox[{"If", "[", 
                   RowBox[{"R1", ",", 
                    RowBox[{"Reshaping", "[", 
                    RowBox[{
                    RowBox[{"good", "[", "x", "]"}], ",", 
                    RowBox[{"OR", "[", 
                    RowBox[{
                    RowBox[{"inexpensive", "[", "v1", "]"}], ",", 
                    RowBox[{"close", "[", "v2", "]"}]}], "]"}]}], "]"}], ",", 
                    "0"}], "]"}], ",", 
                  RowBox[{"If", "[", 
                   RowBox[{"R2", ",", 
                    RowBox[{"Reshaping", "[", 
                    RowBox[{
                    RowBox[{"low", "[", "x", "]"}], ",", 
                    RowBox[{"OR", "[", 
                    RowBox[{
                    RowBox[{"expensive", "[", "v1", "]"}], ",", 
                    RowBox[{"far", "[", "v2", "]"}]}], "]"}]}], "]"}], ",", 
                    "0"}], "]"}], ",", 
                  RowBox[{"If", "[", 
                   RowBox[{"R3", ",", 
                    RowBox[{"Reshaping", "[", 
                    RowBox[{
                    RowBox[{"regular", "[", "x", "]"}], ",", 
                    RowBox[{"AND", "[", 
                    RowBox[{
                    RowBox[{"average", "[", "v1", "]"}], ",", 
                    RowBox[{"about50", "[", "v2", "]"}]}], "]"}]}], "]"}], 
                    ",", "0"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"x", ",", "0", ",", "10"}], "}"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"Epilog", "\[Rule]", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"Arrowheads", "[", "0.07", "]"}], ",", "Thick", 
                   ",", "Black", ",", 
                   RowBox[{"Arrow", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"output", ",", "0.3"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"output", ",", "0"}], "}"}]}], "}"}], "]"}]}], 
                  "}"}]}], ",", 
                RowBox[{"Axes", "\[Rule]", "False"}], ",", 
                RowBox[{"PlotRange", "\[Rule]", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "1.9"}], ",", "10"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ",", 
                RowBox[{"Frame", "\[Rule]", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"False", ",", "True"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"True", ",", "False"}], "}"}]}], "}"}]}], ",", 
                RowBox[{"FrameTicks", "\[Rule]", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"None", ",", "All"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"All", ",", "None"}], "}"}]}], "}"}]}], ",", 
                RowBox[{"PlotStyle", "\[Rule]", "Black"}], ",", 
                RowBox[{"PlotLabel", "\[Rule]", 
                 RowBox[{"Style", "[", 
                  RowBox[{
                  "\"\<SUITABILITY\>\"", ",", "15", ",", "Black", ",", 
                   "Bold"}], "]"}]}], ",", 
                RowBox[{"PlotRangePadding", "\[Rule]", "None"}], ",", 
                RowBox[{"Filling", "\[Rule]", "Axis"}]}], "]"}], ","}], 
             "]"}]}], "\[IndentingNewLine]", "}"}]}], "\[IndentingNewLine]", 
         "}"}], ",", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"600", ",", "450"}], "}"}]}], ",", 
        RowBox[{"Spacings", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0", ",", "30", ",", "80", ",", "80", ",", "0"}], "}"}], 
           ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "0", ",", "0", ",", "50", ",", "0"}], "}"}]}], 
          "}"}]}]}], "]"}]}]}], "\[IndentingNewLine]", "]"}], ",", 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"Grid", "[", 
    RowBox[{
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{"\"\<Logical operators\>\"", ",", "10", ",", "Bold"}], 
          "]"}], " ", ",", 
         RowBox[{"Style", "[", 
          RowBox[{"\"\<Reshaping method\>\"", ",", "10", ",", "Bold"}], "]"}],
          ",", 
         RowBox[{"Style", "[", 
          RowBox[{"\"\<   Aggregation method\>\"", ",", "10", ",", "Bold"}], 
          "]"}], ",", 
         RowBox[{"Style", "[", 
          RowBox[{
          "\"\<  Defuzzification method\>\"", ",", "10", ",", "Bold"}], 
          "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"AND", ",", "Min", ",", "\"\<AND\>\""}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"Min", ",", "Multiplication"}], "}"}]}], "}"}], "]"}], 
         ",", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"Reshaping", ",", "Truncate", ",", "\"\<\>\""}], "}"}], 
            ",", 
            RowBox[{"{", 
             RowBox[{"Truncate", ",", "Multiplication"}], "}"}]}], "}"}], 
          "]"}], ",", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"Aggregation", ",", "Max", ",", "\"\<\>\""}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"Max", ",", "ProbOr", ",", "ClippedSum"}], "}"}]}], 
           "}"}], "]"}], ",", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"Defuzzification", ",", "COG", ",", "\"\<\>\""}], "}"}], 
            ",", 
            RowBox[{"{", 
             RowBox[{"COG", ",", "FOM", ",", "LOM", ",", "MOM", ",", "MeOM"}],
              "}"}]}], "}"}], "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"OR", ",", "Max", ",", "\"\<OR  \>\""}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"Max", ",", "ProbOr"}], "}"}]}], "}"}], "]"}], ",", 
         "SpanFromAbove", ",", "SpanFromAbove", ",", "SpanFromAbove"}], 
        "}"}]}], "\[IndentingNewLine]", "}"}], ",", 
     RowBox[{"Alignment", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"Left", ",", "Center"}], "}"}], ",", "Top"}], "}"}]}], ",", 
     RowBox[{"Spacings", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"{", "2", "}"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"2", ",", "1", ",", "0.5", ",", "2"}], "}"}]}], "}"}]}], ",", 
     RowBox[{"Dividers", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"{", "True", "}"}], "}"}], ",", "True"}], "}"}]}]}], "]"}], 
   ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"Grid", "[", 
    RowBox[{
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"v1", ",", "110", ",", "\"\<\>\""}], "}"}], ",", "0", 
            ",", "200", ",", "1", ",", 
            RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
            RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}], ",", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"v2", ",", "57", ",", "\"\<\>\""}], "}"}], ",", "0", ",",
             "100", ",", "1", ",", 
            RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}], ",", 
            RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "}"}], "]"}], ",", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
             "R1", ",", "True", ",", 
              "\"\<IF (House is Inexpensive OR Close-to-work), THEN Suit. is \
Good.\>\""}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}]}], "}"}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Style", "[", 
          RowBox[{"\"\<       PRICE\>\"", ",", "12", ",", "Bold"}], "]"}], 
         " ", ",", 
         RowBox[{"Style", "[", 
          RowBox[{"\"\<   DISTANCE\>\"", ",", "12", ",", "Bold"}], "]"}], ",", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
             "R2", ",", "True", ",", 
              "\"\<IF (House is Expensive OR Far-from-work), THEN Suit. is \
Low\>\""}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}]}], "}"}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{"SpanFromAbove", " ", ",", "SpanFromAbove", ",", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
             "R3", ",", "True", ",", 
              "\"\<IF (House is Av-priced AND About-50km), THEN Suit. is \
Regular\>\""}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"True", ",", "False"}], "}"}]}], "}"}], "]"}]}], "}"}]}],
       "\[IndentingNewLine]", "}"}], ",", 
     RowBox[{"Alignment", "\[Rule]", "Left"}]}], "]"}], "\[IndentingNewLine]",
    ",", "\[IndentingNewLine]", 
   RowBox[{"SynchronousUpdating", "\[Rule]", "False"}], ",", 
   RowBox[{"ControlPlacement", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"Top", ",", "Bottom", ",", "Bottom", ",", "Bottom", ",", "Top"}],
      "}"}]}], ",", 
   RowBox[{"Alignment", "\[Rule]", "Left"}], " ", ",", "\[IndentingNewLine]", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"(", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"TriangularFuzzySet", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"min_", ",", "max_"}], "}"}], ",", "c_", ",", "x_"}], "]"}],
        ":=", 
       RowBox[{"N", "@", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"x", "\[Equal]", "c"}], ",", "1", ",", 
          TagBox[GridBox[{
             {"\[Piecewise]", GridBox[{
                {
                 FractionBox[
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"-", "min"}], "+", "x"}], ")"}], 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"c", "-", "min"}], ")"}], " "}]], 
                 RowBox[{"min", "\[LessEqual]", "x", "<", "c"}]},
                {
                 FractionBox[
                  RowBox[{"(", 
                   RowBox[{"max", "-", "x"}], ")"}], 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"-", "c"}], "+", "max"}], ")"}]], 
                 RowBox[{"c", "\[LessEqual]", "x", "\[LessEqual]", "max"}]},
                {"0", 
                 TagBox["True",
                  "PiecewiseDefault",
                  AutoDelete->True]}
               },
               AllowedDimensions->{2, Automatic},
               Editable->True,
               
               GridBoxAlignment->{
                "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, 
                 "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
               
               GridBoxItemSize->{
                "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, 
                 "Rows" -> {{1.}}, "RowsIndexed" -> {}},
               GridBoxSpacings->{"Columns" -> {
                   Offset[0.27999999999999997`], {
                    Offset[0.84]}, 
                   Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, 
                 "Rows" -> {
                   Offset[0.2], {
                    Offset[0.4]}, 
                   Offset[0.2]}, "RowsIndexed" -> {}},
               Selectable->True]}
            },
            
            GridBoxAlignment->{
             "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, 
              "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
            
            GridBoxItemSize->{
             "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, 
              "Rows" -> {{1.}}, "RowsIndexed" -> {}},
            GridBoxSpacings->{"Columns" -> {
                Offset[0.27999999999999997`], {
                 Offset[0.35]}, 
                Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
                Offset[0.2], {
                 Offset[0.4]}, 
                Offset[0.2]}, "RowsIndexed" -> {}}],
           "Piecewise",
           DeleteWithContents->True,
           Editable->False,
           SelectWithContents->True,
           Selectable->False]}], "]"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"GaussianFuzzySet", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"min_", ",", "max_"}], "}"}], ",", "m_", ",", "s_", ",", 
         "x_"}], "]"}], ":=", 
       RowBox[{"N", "@", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"s", "\[Equal]", "0"}], ",", "m", ",", 
          TagBox[GridBox[{
             {"\[Piecewise]", GridBox[{
                {
                 SuperscriptBox["\[ExponentialE]", 
                  RowBox[{"-", 
                   FractionBox[
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"x", "-", "m"}], ")"}], "2"], 
                    RowBox[{"2", 
                    SuperscriptBox["s", "2"]}]]}]], 
                 RowBox[{"min", "\[LessEqual]", "x", "\[LessEqual]", "max"}]},
                {"0", "True"}
               },
               AllowedDimensions->{2, Automatic},
               Editable->True,
               
               GridBoxAlignment->{
                "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, 
                 "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
               
               GridBoxItemSize->{
                "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, 
                 "Rows" -> {{1.}}, "RowsIndexed" -> {}},
               GridBoxSpacings->{"Columns" -> {
                   Offset[0.27999999999999997`], {
                    Offset[0.84]}, 
                   Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, 
                 "Rows" -> {
                   Offset[0.2], {
                    Offset[0.4]}, 
                   Offset[0.2]}, "RowsIndexed" -> {}},
               Selectable->True]}
            },
            
            GridBoxAlignment->{
             "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, 
              "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
            
            GridBoxItemSize->{
             "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, 
              "Rows" -> {{1.}}, "RowsIndexed" -> {}},
            GridBoxSpacings->{"Columns" -> {
                Offset[0.27999999999999997`], {
                 Offset[0.35]}, 
                Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
                Offset[0.2], {
                 Offset[0.4]}, 
                Offset[0.2]}, "RowsIndexed" -> {}}],
           "Piecewise",
           DeleteWithContents->True,
           Editable->False,
           SelectWithContents->True,
           Selectable->False]}], "]"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{"Fuzzy", " ", "sets", " ", "for", " ", "PRICE"}], " ", "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"inexpensive", "[", "x_", "]"}], ":=", 
       RowBox[{"TriangularFuzzySet", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", "200"}], "}"}], ",", "0", ",", "x"}], "]"}]}], 
      ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"average", "[", "x_", "]"}], ":=", 
       RowBox[{"TriangularFuzzySet", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", "200"}], "}"}], ",", "100", ",", "x"}], "]"}]}], 
      ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"expensive", "[", "x_", "]"}], ":=", 
       RowBox[{"TriangularFuzzySet", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", "200"}], "}"}], ",", "200", ",", "x"}], "]"}]}], 
      ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
        RowBox[{"Fuzzy", " ", "sets", " ", "for", " ", "DISTANCE"}], "-", 
        "TO", "-", "WORK"}], " ", "*)"}], "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"close", "[", "x_", "]"}], ":=", 
       RowBox[{"GaussianFuzzySet", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", "100"}], "}"}], ",", "0", ",", "30", ",", "x"}], 
        "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"far", "[", "x_", "]"}], ":=", 
       RowBox[{"GaussianFuzzySet", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", "100"}], "}"}], ",", "100", ",", "30", ",", "x"}],
         "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"about50", "[", "x_", "]"}], ":=", 
       RowBox[{"GaussianFuzzySet", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", "100"}], "}"}], ",", "50", ",", "10", ",", "x"}], 
        "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{"Fuzzy", " ", "sets", " ", "for", " ", "SUITABILITY"}], " ", 
       "*)"}], "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"low", "[", "x_", "]"}], ":=", 
       RowBox[{"GaussianFuzzySet", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", "10"}], "}"}], ",", "0", ",", "2", ",", "x"}], 
        "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"regular", "[", "x_", "]"}], ":=", 
       RowBox[{"GaussianFuzzySet", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", "10"}], "}"}], ",", "5", ",", "2", ",", "x"}], 
        "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"good", "[", "x_", "]"}], ":=", 
       RowBox[{"GaussianFuzzySet", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", "10"}], "}"}], ",", "10", ",", "2", ",", "x"}], 
        "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Multiplication", "[", 
        RowBox[{"a_", ",", "b_"}], "]"}], ":=", 
       RowBox[{"a", "*", "b"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"ProbOr", "[", 
        RowBox[{"a_", ",", "b_"}], "]"}], ":=", 
       RowBox[{"a", "+", "b", "-", 
        RowBox[{"a", "*", "b"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"ProbOr", "[", 
        RowBox[{"a_", ",", "b_", ",", "c_"}], "]"}], ":=", 
       RowBox[{"ProbOr", "[", 
        RowBox[{
         RowBox[{"ProbOr", "[", 
          RowBox[{"a", ",", "b"}], "]"}], ",", "c"}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Truncate", "[", 
        RowBox[{"a_", ",", "b_"}], "]"}], ":=", 
       RowBox[{"Min", "[", 
        RowBox[{"a", ",", "b"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"ClippedSum", "[", 
        RowBox[{"a_", ",", "b_", ",", "c_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"s", "=", 
           RowBox[{"a", "+", "b", "+", "c"}]}], "}"}], ",", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"s", "<", "1"}], ",", "s", ",", "1"}], "]"}]}], "]"}]}], 
      ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{"COG", ":", " ", 
        RowBox[{"Centre", " ", "of", " ", "Gravity"}]}], "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{
        RowBox[{
         RowBox[{"COG", "[", 
          RowBox[{"FS_", ",", "range_"}], "]"}], ":=", 
         RowBox[{"Module", "[", 
          RowBox[{
           RowBox[{"{", "x", "}"}], ",", 
           RowBox[{
            RowBox[{"NIntegrate", "[", 
             RowBox[{
              RowBox[{"x", "*", 
               RowBox[{"FS", "[", "x", "]"}]}], ",", 
              RowBox[{"Prepend", "[", 
               RowBox[{"range", ",", "x"}], "]"}]}], "]"}], "/", 
            RowBox[{"NIntegrate", "[", 
             RowBox[{
              RowBox[{"FS", "[", "x", "]"}], ",", 
              RowBox[{"Prepend", "[", 
               RowBox[{"range", ",", "x"}], "]"}]}], "]"}]}]}], "]"}]}], 
        ";"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"COG", "[", 
        RowBox[{"FS_", ",", "range_", ",", "res_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"minX", "=", 
            RowBox[{
             RowBox[{"First", "[", "range", "]"}], "+", 
             RowBox[{"res", "/", "2"}]}]}], ",", 
           RowBox[{"maxX", "=", 
            RowBox[{"Last", "[", "range", "]"}]}], ",", "x", ",", "v", ",", 
           RowBox[{"massTimesResolution", "=", "0"}], ",", 
           RowBox[{"centersTimesV", "=", "0"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"For", "[", 
           RowBox[{
            RowBox[{"x", "=", "minX"}], ",", 
            RowBox[{"x", "\[LessEqual]", "maxX"}], ",", 
            RowBox[{"x", " ", "=", 
             RowBox[{"x", "+", "res"}]}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"v", "=", 
              RowBox[{"FS", "[", "x", "]"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"massTimesResolution", "=", 
              RowBox[{"massTimesResolution", "+", "v"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"centersTimesV", "=", 
              RowBox[{"centersTimesV", "+", 
               RowBox[{"x", "*", "v"}]}]}], ";"}]}], "\[IndentingNewLine]", 
           "]"}], ";", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"massTimesResolution", "\[Equal]", "0"}], ",", 
            "Indeterminate", ",", 
            RowBox[{"centersTimesV", "/", "massTimesResolution"}]}], 
           "]"}]}]}], "\[IndentingNewLine]", "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{"FOM", ":", " ", 
        RowBox[{"Last", " ", "of", " ", "Maxima"}]}], "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"FOM", "[", 
        RowBox[{"FS_", ",", "range_", ",", "res_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"minX", "=", 
            RowBox[{"First", "[", "range", "]"}]}], ",", 
           RowBox[{"maxX", "=", 
            RowBox[{"Last", "[", "range", "]"}]}], ",", 
           RowBox[{"maxValue", "=", 
            RowBox[{"-", "1"}]}], ",", "x", ",", "v", ",", "maximum"}], "}"}],
          ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"For", "[", 
           RowBox[{
            RowBox[{"x", "=", "minX"}], ",", 
            RowBox[{"x", "\[LessEqual]", "maxX"}], ",", 
            RowBox[{"x", " ", "=", 
             RowBox[{"x", "+", "res"}]}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"v", "=", 
              RowBox[{"FS", "[", "x", "]"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"v", ">", "maxValue"}], ",", 
               RowBox[{
                RowBox[{"maximum", "=", "x"}], ";", 
                RowBox[{"maxValue", "=", "v"}]}]}], "]"}], ";"}]}], 
           "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"maxValue", "\[Equal]", "0"}], ",", "Indeterminate", ",",
              "maximum"}], "]"}], "*)"}], "\[IndentingNewLine]", 
          "maximum"}]}], "\[IndentingNewLine]", "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{"LOM", ":", " ", 
        RowBox[{"Last", " ", "of", " ", "Maxima"}]}], "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"LOM", "[", 
        RowBox[{"FS_", ",", "range_", ",", "res_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"minX", "=", 
            RowBox[{"First", "[", "range", "]"}]}], ",", 
           RowBox[{"maxX", "=", 
            RowBox[{"Last", "[", "range", "]"}]}], ",", 
           RowBox[{"maxValue", "=", 
            RowBox[{"-", "1"}]}], ",", "x", ",", "v", ",", "maximum"}], "}"}],
          ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"For", "[", 
           RowBox[{
            RowBox[{"x", "=", "minX"}], ",", 
            RowBox[{"x", "\[LessEqual]", "maxX"}], ",", 
            RowBox[{"x", " ", "=", 
             RowBox[{"x", "+", "res"}]}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"v", "=", 
              RowBox[{"FS", "[", "x", "]"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"v", "\[GreaterEqual]", "maxValue"}], ",", 
               RowBox[{
                RowBox[{"maximum", "=", "x"}], ";", 
                RowBox[{"maxValue", "=", "v"}]}]}], "]"}], ";"}]}], 
           "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"maxValue", "\[Equal]", "0"}], ",", "Indeterminate", ",",
              "maximum"}], "]"}], "*)"}], "\[IndentingNewLine]", 
          "maximum"}]}], "\[IndentingNewLine]", "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
        RowBox[{"MOM", ":", 
         RowBox[{
         "Middle", " ", "of", " ", "maximum", "\n", "\t", "Returns", " ", 
          "the", " ", "average", " ", "of", " ", "the", " ", "first", " ", 
          "x", " ", "where", " ", "the", " ", "maximum", " ", "is", " ", 
          "achieved", "\n", "\t", "and", " ", "the", " ", "last", " ", "x", 
          " ", "where", " ", "the", " ", "maximum", " ", "is", " ", 
          "achieved"}]}], ",", 
        RowBox[{
        "even", " ", "if", " ", "the", " ", "membership", "\n", "\t", 
         "function", " ", "takes", " ", "lower", " ", "values", " ", "in", 
         " ", 
         RowBox[{"between", "."}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"MOM", "[", 
        RowBox[{"FS_", ",", "range_", ",", "res_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"minX", "=", 
            RowBox[{"First", "[", "range", "]"}]}], ",", 
           RowBox[{"maxX", "=", 
            RowBox[{"Last", "[", "range", "]"}]}], ",", 
           RowBox[{"maxValue", "=", 
            RowBox[{"-", "1"}]}], ",", "x", ",", "x1", ",", "x2", ",", "v", 
           ",", 
           RowBox[{"foundTwo", "=", "False"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"For", "[", 
           RowBox[{
            RowBox[{"x", "=", "minX"}], ",", 
            RowBox[{"x", "\[LessEqual]", "maxX"}], ",", 
            RowBox[{"x", " ", "=", 
             RowBox[{"x", "+", "res"}]}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"v", "=", 
              RowBox[{"FS", "[", "x", "]"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"v", ">", "maxValue"}], ",", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"x1", "=", "x"}], ";", 
                RowBox[{"maxValue", "=", "v"}], ";", 
                RowBox[{"foundTwo", "=", "False"}]}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"If", "[", 
                RowBox[{
                 RowBox[{"v", "\[Equal]", "maxValue"}], ",", 
                 RowBox[{
                  RowBox[{"x2", "=", "x"}], ";", 
                  RowBox[{"foundTwo", "=", "True"}]}]}], "]"}]}], 
              "\[IndentingNewLine]", "]"}], ";"}]}], "\[IndentingNewLine]", 
           "]"}], ";", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"maxValue", "\[Equal]", "0"}], ",", "Indeterminate", ",", 
             RowBox[{"If", "[", 
              RowBox[{"foundTwo", ",", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"x1", "+", "x2"}], ")"}], "/", "2"}], ",", "x1"}], 
              "]"}]}], "]"}], "*)"}], "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{"foundTwo", ",", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"x1", "+", "x2"}], ")"}], "/", "2"}], ",", "x1"}], 
           "]"}]}]}], "\[IndentingNewLine]", "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{"MeOM", ":", 
        RowBox[{
        "Mean", " ", "of", " ", "maximum", "\n", "\t", "Returns", " ", "the", 
         " ", "average", " ", "of", " ", "the", " ", "whole", " ", "interval",
          " ", "where", " ", "the", " ", "maximum", " ", "is", " ", 
         RowBox[{"achieved", "."}]}]}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"MeOM", "[", 
        RowBox[{"FS_", ",", "range_", ",", "res_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"minX", "=", 
            RowBox[{"First", "[", "range", "]"}]}], ",", 
           RowBox[{"maxX", "=", 
            RowBox[{"Last", "[", "range", "]"}]}], ",", 
           RowBox[{"maxValue", "=", 
            RowBox[{"-", "1"}]}], ",", "x", ",", "v", ",", 
           RowBox[{"numberOfSamples", "=", "0"}], ",", "sumOfMax"}], "}"}], 
         ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"For", "[", 
           RowBox[{
            RowBox[{"x", "=", "minX"}], ",", 
            RowBox[{"x", "\[LessEqual]", "maxX"}], ",", 
            RowBox[{"x", " ", "=", 
             RowBox[{"x", "+", "res"}]}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"v", "=", 
              RowBox[{"FS", "[", "x", "]"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"v", ">", "maxValue"}], ",", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"sumOfMax", "=", "x"}], ";", 
                RowBox[{"maxValue", "=", "v"}], ";", 
                RowBox[{"numberOfSamples", "=", "1"}]}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"If", "[", 
                RowBox[{
                 RowBox[{"v", "\[Equal]", "maxValue"}], ",", 
                 RowBox[{
                  RowBox[{"sumOfMax", "=", 
                   RowBox[{"sumOfMax", "+", "x"}]}], ";", 
                  RowBox[{"numberOfSamples", "=", 
                   RowBox[{"numberOfSamples", "+", "1"}]}]}]}], "]"}]}], 
              "\[IndentingNewLine]", "]"}], ";"}]}], "\[IndentingNewLine]", 
           "]"}], ";", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"maxValue", "\[Equal]", "0"}], ",", "Indeterminate", ",", 
             RowBox[{"sumOfMax", "/", "numberOfSamples"}]}], "]"}], "*)"}], 
          "\[IndentingNewLine]", 
          RowBox[{"sumOfMax", "/", "numberOfSamples"}]}]}], 
        "\[IndentingNewLine]", "]"}]}], ";"}], "\[IndentingNewLine]", 
     ")"}]}]}], "\[IndentingNewLine]", "]"}]], "Input",
 CellChangeTimes->{{3.5177649899175687`*^9, 3.517765016881111*^9}, 
   3.517765433882962*^9, {3.5177720989091797`*^9, 3.517772112819976*^9}, {
   3.5178485337152863`*^9, 3.517848546164108*^9}, {3.5178485852109766`*^9, 
   3.5178486252562466`*^9}, {3.517848726484824*^9, 3.5178487709293027`*^9}, {
   3.51784890020673*^9, 3.5178489085059443`*^9}, {3.5178499729001684`*^9, 
   3.5178499732421875`*^9}, {3.517850019397828*^9, 3.517850033934659*^9}, 
   3.5178500824734354`*^9, {3.5178509247266097`*^9, 3.5178509249976254`*^9}, 
   3.5178509585525446`*^9, {3.5178510009769707`*^9, 3.5178510261614113`*^9}, {
   3.517851102121756*^9, 3.5178511113922863`*^9}, {3.517851156605872*^9, 
   3.517851172671791*^9}, {3.517851241548731*^9, 3.5178512418757496`*^9}, {
   3.5178512834041247`*^9, 3.5178513443266096`*^9}, {3.5178514223770733`*^9, 
   3.5178514451223745`*^9}, {3.517851477661236*^9, 3.517851481707467*^9}, {
   3.5178515239788847`*^9, 3.51785153280939*^9}, 3.517851657135501*^9, {
   3.5178516930705566`*^9, 3.5178517123246574`*^9}, {3.5178528684407835`*^9, 
   3.517852887310863*^9}, {3.517852928634227*^9, 3.5178529416209693`*^9}, {
   3.5178530226916065`*^9, 3.517853041617689*^9}, {3.5178530774147367`*^9, 
   3.517853106534402*^9}, {3.517853207231161*^9, 3.5178532648124547`*^9}, {
   3.5178533490792747`*^9, 3.5178533546385927`*^9}, {3.5179103874541416`*^9, 
   3.5179103877121563`*^9}, {3.517989390832556*^9, 3.5179894225562115`*^9}, {
   3.517989505645975*^9, 3.5179895211056023`*^9}, {3.517989583614912*^9, 
   3.517989651677831*^9}, {3.5179896933455043`*^9, 3.517989694827507*^9}, {
   3.5179897509564056`*^9, 3.5179897527192087`*^9}, {3.517989789628874*^9, 
   3.517989795588084*^9}, {3.517989847567375*^9, 3.517989862262601*^9}, {
   3.517989927111915*^9, 3.517989934818329*^9}, {3.5180036059719496`*^9, 
   3.518003690168765*^9}, {3.5180089598038397`*^9, 3.518008972075542*^9}, {
   3.518009569746727*^9, 3.518009658588808*^9}, {3.5180097680550694`*^9, 
   3.5180097798207426`*^9}, 3.624932977600959*^9, {3.6249330135400143`*^9, 
   3.624933087839264*^9}, {3.6249332257731533`*^9, 3.6249332418460727`*^9}, {
   3.624933296616205*^9, 3.62493333778456*^9}, {3.6249334547082477`*^9, 
   3.624933490520296*^9}, {3.624933527552414*^9, 3.6249335381010175`*^9}, {
   3.624933632294405*^9, 3.6249336787530622`*^9}, {3.6249337626478605`*^9, 
   3.6249338607684727`*^9}, {3.624933905223016*^9, 3.6249340936117907`*^9}, {
   3.624934593364375*^9, 3.6249346198928924`*^9}, {3.624934693480101*^9, 
   3.6249347146533127`*^9}, {3.624934746584139*^9, 3.6249348478099284`*^9}, {
   3.624934928468542*^9, 3.624935060072069*^9}, {3.6249350921319027`*^9, 
   3.6249350949450636`*^9}, {3.6249352196321955`*^9, 3.6249352564273*^9}, {
   3.6249352942744646`*^9, 3.6249353357388363`*^9}, 3.6249353895619144`*^9, {
   3.624935520759419*^9, 3.6249355355792665`*^9}, {3.624935585697133*^9, 
   3.6249355918404846`*^9}, {3.624935632075786*^9, 3.62493563948621*^9}, {
   3.624935675486269*^9, 3.6249357195097866`*^9}, {3.6249357681635695`*^9, 
   3.624935777346095*^9}, {3.624935886800355*^9, 3.624935905346416*^9}, {
   3.6249360474225426`*^9, 3.624936073518035*^9}, {3.624936480111291*^9, 
   3.6249364838775063`*^9}, {3.624936685635046*^9, 3.624936689794284*^9}, {
   3.6249367289075212`*^9, 3.624936731373662*^9}, {3.6249368259010687`*^9, 
   3.6249370518919945`*^9}, {3.6249370913632526`*^9, 
   3.6249372900066137`*^9}, {3.62493736424586*^9, 3.6249376651480713`*^9}, {
   3.624937698889001*^9, 3.624937902310636*^9}, {3.6249379445500517`*^9, 
   3.6249380186552906`*^9}, {3.6249382288943157`*^9, 3.624938254269767*^9}, {
   3.624938379099907*^9, 3.624938496937647*^9}, {3.6249386205797186`*^9, 
   3.6249386878585668`*^9}, {3.624938860970468*^9, 3.6249388614154935`*^9}, {
   3.6249389019198103`*^9, 3.624938981193344*^9}, {3.624939015241292*^9, 
   3.6249390575337105`*^9}, {3.6249392454024563`*^9, 3.624939422524587*^9}, {
   3.6249395140798235`*^9, 3.6249396059030757`*^9}, {3.624939655997941*^9, 
   3.6249397607579327`*^9}, {3.6249397942518487`*^9, 3.624940134799327*^9}, {
   3.6249401774717674`*^9, 3.624940305691101*^9}, 3.6249403686087*^9, {
   3.6249404642531705`*^9, 3.624940618570997*^9}, {3.6249406681308317`*^9, 
   3.6249407146094904`*^9}, {3.624940797865252*^9, 3.6249408791148996`*^9}, 
   3.6249409199812365`*^9, {3.6249409948825207`*^9, 3.6249409979496965`*^9}, {
   3.6249410398280916`*^9, 3.624941061441328*^9}, {3.624941130451275*^9, 
   3.624941149039338*^9}, {3.6249411804241333`*^9, 3.6249411979861374`*^9}, {
   3.624941331388768*^9, 3.624941356457202*^9}, {3.6249414070310946`*^9, 
   3.6249414089612045`*^9}, {3.6249414565469265`*^9, 3.6249415038196306`*^9}, 
   3.624941548853206*^9, {3.6249416404034424`*^9, 3.624941665468876*^9}, {
   3.6249417899889984`*^9, 3.624941827142123*^9}, {3.6249419366643877`*^9, 
   3.6249420369491234`*^9}, {3.6249420944994154`*^9, 
   3.6249421346287107`*^9}, {3.624942196091226*^9, 3.624942310660779*^9}, 
   3.624942385061034*^9, {3.624942426438401*^9, 3.624942430723646*^9}, {
   3.6249426690132756`*^9, 3.6249426715824223`*^9}, {3.624942731871871*^9, 
   3.6249428038109856`*^9}, {3.6249452034672384`*^9, 
   3.6249452144528666`*^9}, {3.624945281579706*^9, 3.624945530583948*^9}, {
   3.6249455999259143`*^9, 3.62494569513836*^9}, {3.6249458339993024`*^9, 
   3.624945844211887*^9}, 3.6249458894784756`*^9, 3.624945951120002*^9, {
   3.6249553056427593`*^9, 3.62495530589576*^9}, {3.624955335966837*^9, 
   3.6249555925094223`*^9}, {3.6249559994498014`*^9, 
   3.6249559997218037`*^9}, {3.6249560628660116`*^9, 
   3.6249560631590137`*^9}, {3.62495622648728*^9, 3.624956290112439*^9}, {
   3.624956452424999*^9, 3.6249565326472497`*^9}, 3.624956573652318*^9, {
   3.6249566473984375`*^9, 3.624956656383462*^9}, {3.6249567635286236`*^9, 
   3.6249567809197054`*^9}, {3.6249569100089064`*^9, 3.624957020852339*^9}, {
   3.6249570993054667`*^9, 3.624957253559345*^9}, {3.624957497592743*^9, 
   3.624957569688018*^9}, {3.624957645191148*^9, 3.6249577769045906`*^9}, {
   3.624957891863784*^9, 3.624957923414878*^9}, {3.6249580093923206`*^9, 
   3.6249580111523232`*^9}, {3.624958072474745*^9, 3.6249580751677494`*^9}, {
   3.6249582188291707`*^9, 3.62495833835635*^9}, {3.6249583705956526`*^9, 
   3.6249583952559485`*^9}, {3.624958559113472*^9, 3.624958609862558*^9}, {
   3.624958689072431*^9, 3.624958698153444*^9}, {3.624958768123566*^9, 
   3.6249587755965796`*^9}, {3.624958830930978*^9, 3.6249588603400245`*^9}, {
   3.624959212264312*^9, 3.6249592237393303`*^9}, {3.624959273832406*^9, 
   3.6249592772494226`*^9}, {3.624959393990597*^9, 3.624959397892602*^9}, {
   3.6249594676657743`*^9, 3.624959474311789*^9}, {3.624960235982463*^9, 
   3.624960268314785*^9}, {3.62496032202186*^9, 3.6249603311748743`*^9}, {
   3.62496052445642*^9, 3.6249605368244452`*^9}, {3.624960570119492*^9, 
   3.624960570412493*^9}, {3.62496064296661*^9, 3.6249606896456842`*^9}, {
   3.624960746741851*^9, 3.6249607470108533`*^9}, {3.624960882597361*^9, 
   3.6249609118354287`*^9}, {3.624961143577276*^9, 3.6249612724405384`*^9}, {
   3.6249613193156495`*^9, 3.6249613277396636`*^9}, {3.624961387650984*^9, 
   3.6249614409850674`*^9}, {3.624961510288339*^9, 3.6249615364763823`*^9}, {
   3.6249616529695783`*^9, 3.624961761999778*^9}, {3.6249618093408847`*^9, 
   3.624961817332906*^9}, {3.62496185761897*^9, 3.624961871673994*^9}, {
   3.624961904620085*^9, 3.6249619049190874`*^9}, {3.624961977524296*^9, 
   3.6249620033833466`*^9}, {3.624962123793662*^9, 3.624962178972747*^9}, {
   3.624962272879525*^9, 3.6249625196690006`*^9}, {3.624962565125087*^9, 
   3.6249625863961296`*^9}, {3.6249627850737085`*^9, 3.624962826998954*^9}, 
   3.624963071370225*^9, {3.6249631928259544`*^9, 3.6249631983659983`*^9}, {
   3.6251161463956385`*^9, 3.6251161563222065`*^9}, {3.625116217156686*^9, 
   3.625116221370927*^9}, {3.6251197831262093`*^9, 3.625119821293392*^9}, {
   3.6251198669640045`*^9, 3.625119912923633*^9}, {3.6251241659028897`*^9, 
   3.6251242565400743`*^9}, {3.6251243144893885`*^9, 3.625124355442731*^9}, {
   3.62512439406394*^9, 3.62512449197554*^9}, {3.6251246005857525`*^9, 
   3.625124618082753*^9}, {3.625124870650199*^9, 3.6251249064112444`*^9}, {
   3.6251249429903364`*^9, 3.625124991558114*^9}, {3.625125144262849*^9, 
   3.625125147869055*^9}, {3.6251251790138364`*^9, 3.6251251824750347`*^9}, {
   3.6251257871346188`*^9, 3.6251257901757927`*^9}, {3.62512583261522*^9, 
   3.625125835528387*^9}, {3.625126014998652*^9, 3.6251260628433886`*^9}, {
   3.625160187847351*^9, 3.625160192473417*^9}, {3.625160311879672*^9, 
   3.625160318620694*^9}, {3.625160396806958*^9, 3.625160413749998*^9}, 
   3.6251604779333096`*^9, {3.6251605588636866`*^9, 3.6251606278201075`*^9}, {
   3.625160797096446*^9, 3.6251608569166107`*^9}, {3.6251615207281675`*^9, 
   3.6251616275045705`*^9}, {3.6251616844648952`*^9, 
   3.6251617723051224`*^9}, {3.625161811507307*^9, 3.6251618246153364`*^9}, {
   3.6251618733006516`*^9, 3.6251618750106716`*^9}, {3.625161909083863*^9, 
   3.625161910046872*^9}, {3.6251619498290977`*^9, 3.6251619872881927`*^9}, {
   3.6251620357995048`*^9, 3.625162036601507*^9}, 3.6251622249391413`*^9, {
   3.625162701824768*^9, 3.625162708934784*^9}, {3.6251628159153337`*^9, 
   3.6251628183283434`*^9}, {3.625162932208564*^9, 3.6251629440785875`*^9}, {
   3.625162977027758*^9, 3.6251629927668457`*^9}, {3.625163034326067*^9, 
   3.625163040242093*^9}, {3.6251632214535108`*^9, 3.6251632251275196`*^9}, {
   3.625163382755881*^9, 3.6251634219230313`*^9}, 3.6251634845282364`*^9, {
   3.625163523764387*^9, 3.6251635477535267`*^9}, {3.62516363406172*^9, 
   3.625163710372942*^9}, {3.625163745328092*^9, 3.6251637938993015`*^9}, {
   3.6251638250394125`*^9, 3.6251638495655513`*^9}, {3.6251638797346773`*^9, 
   3.6251639059698124`*^9}, {3.6252002719349604`*^9, 
   3.6252002874413877`*^9}, {3.6252003205154457`*^9, 3.625200353900504*^9}, {
   3.625200420289225*^9, 3.625200421864828*^9}, {3.6252004759823227`*^9, 
   3.6252005030483704`*^9}, {3.625200537541031*^9, 3.6252007554502144`*^9}, {
   3.6252008643394055`*^9, 3.62520088380824*^9}, {3.6252164300217752`*^9, 
   3.6252164632096734`*^9}, {3.625216511791452*^9, 3.62521651401958*^9}, {
   3.625216546152417*^9, 3.625216612339203*^9}, {3.6252166443910365`*^9, 
   3.625216655798689*^9}, 3.625216699841208*^9, {3.625216744272749*^9, 
   3.6252167496290555`*^9}, {3.6252167870361953`*^9, 3.625216877721382*^9}, {
   3.6252169461942987`*^9, 3.6252169569939165`*^9}, {3.625217010622984*^9, 
   3.625217058192704*^9}, {3.6252171413784623`*^9, 3.6252173210277376`*^9}, {
   3.6252173613030415`*^9, 3.625217380074115*^9}, {3.6252174714193397`*^9, 
   3.6252175860948987`*^9}, 3.6252176787041955`*^9, {3.625217728103021*^9, 
   3.6252177318112335`*^9}, {3.6252177722705474`*^9, 
   3.6252178133238955`*^9}, {3.625217871535225*^9, 3.6252178846069727`*^9}, {
   3.625218132230136*^9, 3.6252182041542497`*^9}, {3.62521823772917*^9, 
   3.6252182490038147`*^9}, {3.6252183378138943`*^9, 
   3.6252183508156385`*^9}, {3.62524909233406*^9, 3.6252491775258102`*^9}, 
   3.6252493213362637`*^9, {3.6252494279468513`*^9, 3.625249459692907*^9}, 
   3.625249497507373*^9, {3.625249550344666*^9, 3.625249597691749*^9}, {
   3.625249632932211*^9, 3.625249634975815*^9}, {3.6252496747004848`*^9, 
   3.6252496778204904`*^9}, {3.625249728891381*^9, 3.62524976245004*^9}, {
   3.625249883245453*^9, 3.6252499494363694`*^9}, {3.6252578665752773`*^9, 
   3.625257867729679*^9}, {3.6252579533894296`*^9, 3.6252579611270432`*^9}, {
   3.625258052200003*^9, 3.625258097689683*^9}, {3.625258146517769*^9, 
   3.625258155986985*^9}, {3.6252582004626637`*^9, 3.6252582284959126`*^9}, {
   3.625258262051572*^9, 3.6252582654679775`*^9}, 3.6252583183988705`*^9, {
   3.6252583526097307`*^9, 3.6252583543413334`*^9}, {3.62525841490064*^9, 
   3.6252584299702663`*^9}, {3.6252585293580413`*^9, 
   3.6252585370332546`*^9}, {3.625258630103018*^9, 3.625258636358629*^9}, {
   3.6252587114415607`*^9, 3.6252587135475645`*^9}, {3.6252587454808207`*^9, 
   3.625258787663295*^9}, {3.6252588245261593`*^9, 3.625258839814186*^9}, {
   3.6252588921054783`*^9, 3.6252588956310844`*^9}, {3.6252589446785707`*^9, 
   3.6252589529933853`*^9}, {3.6252591490077295`*^9, 3.625259201096221*^9}, {
   3.625259231110674*^9, 3.625259279487359*^9}, {3.6252593273794427`*^9, 
   3.625259394772561*^9}, 3.6252595400410166`*^9, {3.625259658719303*^9, 
   3.62525966483911*^9}, 3.6252596952767634`*^9, {3.62525976140928*^9, 
   3.6252597903629303`*^9}, 3.625298393272002*^9, {3.6310183556938457`*^9, 
   3.6310183721507874`*^9}, {3.6310184583747187`*^9, 
   3.6310187081240034`*^9}, {3.6310187452261257`*^9, 3.6310188102158427`*^9}, 
   3.631018841721645*^9, {3.631018885997177*^9, 3.631018998393606*^9}, {
   3.6310190430401597`*^9, 3.631019210134717*^9}, {3.6310193599752874`*^9, 
   3.631019379919428*^9}, {3.631019478422062*^9, 3.631019556551531*^9}, 
   3.63101959604379*^9, {3.6310196296447115`*^9, 3.631019649758862*^9}, {
   3.6310197094402757`*^9, 3.631019737595886*^9}, {3.631019782878476*^9, 
   3.6310197919389944`*^9}, {3.6310198315442595`*^9, 
   3.6310198593258486`*^9}, {3.63101991406798*^9, 3.6310199336320987`*^9}, {
   3.631020024487295*^9, 3.6310200249043193`*^9}, 3.631020083959697*^9, {
   3.6310201146014495`*^9, 3.631020146827293*^9}, {3.631020194215003*^9, 
   3.6310202239237022`*^9}, {3.631020313275813*^9, 3.631020316597003*^9}, {
   3.631020528994151*^9, 3.6310205336384172`*^9}, {3.6310273384944744`*^9, 
   3.6310274355460253`*^9}, {3.6310278152217417`*^9, 3.631027840060162*^9}, {
   3.6310280406356344`*^9, 3.6310280520902896`*^9}, {3.6310722516912174`*^9, 
   3.6310722551654167`*^9}, 3.631073314606013*^9, {3.6310736887434125`*^9, 
   3.631073805503091*^9}, {3.6310738457453923`*^9, 3.631073849388601*^9}, {
   3.6310738890518694`*^9, 3.631073908629989*^9}, {3.631074718446308*^9, 
   3.631074719391362*^9}, {3.631074884904829*^9, 3.6310748874839764`*^9}, {
   3.6310753148894224`*^9, 3.631075315531459*^9}, 3.6310756152496023`*^9, 
   3.63107631927387*^9, 3.6310765377023635`*^9, 3.63107671036924*^9, {
   3.631113293043182*^9, 3.631113349557414*^9}, 3.631114292414343*^9, {
   3.631114437674651*^9, 3.631114600545967*^9}, {3.6311146623104997`*^9, 
   3.631114663247553*^9}, {3.631160925372096*^9, 3.6311609926706147`*^9}, {
   3.631161053853922*^9, 3.6311610940395927`*^9}, {3.631161160127309*^9, 
   3.6311611876029577`*^9}, {3.631161339258428*^9, 3.6311613476824427`*^9}, 
   3.631161605615697*^9, {3.6311616505779757`*^9, 3.6311616991408615`*^9}, {
   3.631161988793372*^9, 3.6311619924281783`*^9}, {3.6311622152993402`*^9, 
   3.631162218763547*^9}, 3.6311654489832077`*^9, {3.63118751061128*^9, 
   3.6311875133612843`*^9}, {3.631187547148358*^9, 3.6311875797714405`*^9}, {
   3.6311876208355284`*^9, 3.6311876554845877`*^9}, {3.631281495478751*^9, 
   3.6312815043147807`*^9}, {3.631707052578292*^9, 3.6317070542803893`*^9}, {
   3.6419196083533163`*^9, 3.6419196098274007`*^9}}]
}, Closed]]
}, Open  ]]
},
WindowSize->{1600, 818},
WindowMargins->{{-4, Automatic}, {Automatic, -4}},
FrontEndVersion->"10.1 for Microsoft Windows (64-bit) (March 23, 2015)",
StyleDefinitions->FrontEnd`FileName[{"Creative"}, "NaturalColor.nb", 
  CharacterEncoding -> "WindowsANSI"]
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1257, 32, 317, 4, 65, "Title"],
Cell[1577, 38, 489, 15, 40, "Subtitle"],
Cell[2069, 55, 3785, 54, 92, "Text"],
Cell[5857, 111, 35414, 720, 690, "Output"],
Cell[41274, 833, 6892, 122, 666, "Text"],
Cell[CellGroupData[{
Cell[48191, 959, 100, 1, 75, "Section"],
Cell[48294, 962, 95538, 2062, 3869, "Input"]
}, Closed]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature IuDtTLasNcDLOCwvtTJQ0@7j *)
