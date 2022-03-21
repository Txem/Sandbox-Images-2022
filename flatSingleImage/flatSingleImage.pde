//Global Variables 
float imageX, imageY, imageWidth, imageHeight, imageWidthRatio=0.0, imageHeightRatio=0.0;
float largerDimension, smallerDimension;
PImage pic;
Boolean widthLarger = false, heightLarger = false;
//
fullScreen ();
//Population
pic = loadImage("moonwalk.jpg"); //Dimensions: width 960, height 640
//Find the Larger dimension for aspect ratio
int picWidth = 960; 
int picHeight = 640;
if (picWidth > picHeight) {
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else {
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
}//End Dimension Comparasion 
println(smallerDimension, largerDimension, widthLarger, heightLarger); //Verifying Variable details
//Note: single line IFs can be summarized to IF -ELSE or IF-ELSEIF-ELSE
if ( widthLarger == true) imageWidthRatio = largerDimension / largerDimension;
if ( widthLarger == true) imageHeightRatio = smallerDimension / largerDimension;
if ( heightLarger == true) imageHeightRatio = largerDimension / largerDimension;
if ( heightLarger == true) imageWidthRatio = smallerDimension / largerDimension;
println(imageWidthRatio, imageHeightRatio, smallerDimension/largerDimension, 640.0/960.0);
//Note: println() also verifies decimal places, compiler will truncate 
//Answers must be 1.0 and between 0 & 1 (decimal)
//Ratio 1.0 similar to style="width:100%" (websites)
//Ration "0.67" similar to style ="height:auto" (websites) 
imageX = displayWidth*0;
imageY = displayHeight*0;
imageWidth = displayWidth*imageWidthRatio;
imageHeight = displayHeight*imageHeightRatio;
if (imageWidth > displayWidth) println("ERROR: Image is too wide"); 
if (imageHeight > displayHeight) println("ERROR: Image is too high");//Display Checker
//
//Rectangle Layout
rect(imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, imageWidth, imageHeight);
