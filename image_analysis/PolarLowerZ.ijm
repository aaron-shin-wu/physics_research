//script for getting rid of newton rings for polar pullbacks FOR POLAR UPPER Z
// utilizing FFT

//Filenames and Directory names
im = 'cmp_1_1_T';
datadir = 'C:/Users/aaron/Documents/DogicLab/Data/DropletsToAnalyze/1200_60xObj_10pLaser_2x2bin_1in20fps_2umZ_ORCAFlash4_3/embryo/fields/data_MIP/polarUpperZ_index/polarUpperZ/';
firstfilename = datadir + im + '0001.tif';

timepoints = 10  //number of timepoints

//for (i=1; i< timepoints; 1) {
//	n = toString(i);
//	x = toString(d2s(i/10000, 4));
//    indx = substring(x,2);
//    open(datadir + im + indx + '.tif');
//	selectWindow(im + indx + '.tif');
//	run("FFT");
//	makeRectangle(253, 253, 7, 2);
//	setBackgroundColor(0, 0, 0);
//	run("Clear", "slice");
//	makeRectangle(253, 258, 7, 2);
//	run("Clear", "slice");
//	run("Inverse FFT");
//	saveAs("Tiff", "C:/Users/aaron/Documents/Dogic Lab/Data/Droplets To Analyze/1200_60xObj_10pLaser_2x2bin_1in20fps_2umZ_ORCAFlash4_2/eliminating_rings/temp_FFT_files/file"+n+".tif");
//	close();
//	close();
//	close();
//	i = i + 1;
//}

//newdatadir = 'C:/Users/aaron/Documents/Dogic Lab/Data/Droplets To Analyze/1200_60xObj_10pLaser_2x2bin_1in20fps_2umZ_ORCAFlash4_2/eliminating_rings/temp_FFT_files/';
//filename = 'file';



//doing FFT on top half of first file
//open(firstfilename);
//selectWindow(im +'0001.tif');
//run("FFT");
//makeRectangle(253, 253, 7, 2);
//setBackgroundColor(0, 0, 0);
//run("Clear", "slice");
//makeRectangle(253, 258, 7, 2);
//run("Clear", "slice");
//run("Inverse FFT");
//makeRectangle(0, 0, 389, 212);
//run("Crop");
//run("FFT");
//makeRectangle(240, 197, 33, 24);
//setBackgroundColor(0, 0, 0);
//run("Clear", "slice");
//makeRectangle(239, 291, 34, 23);
//run("Clear", "slice");
//makeRectangle(226, 296, 17, 10);
//run("Clear", "slice");
//makeRectangle(272, 296, 13, 10);
//run("Clear", "slice");
//makeRectangle(225, 207, 16, 12);
//run("Clear", "slice");
//makeRectangle(273, 208, 14, 10);
//run("Clear", "slice");
//run("Inverse FFT");
//selectWindow("Inverse FFT of cmp_1_1_T0001.tif");
//saveAs("Tiff", "C:/Users/aaron/Documents/Dogic Lab/Data/Droplets To Analyze/1200_60xObj_10pLaser_2x2bin_1in20fps_2umZ_ORCAFlash4_2/eliminating_rings/FFT_files/timepoint1/half1.tif");
//close();
//close();
//close();
//close();
//close();

//doing FFT on bottom half of first file
//open(firstfilename);
//(im + '0001.tif');
//makeRectangle(0, 196, 389, 212);
//run("Crop");
//run("FFT");
//makeRectangle(239, 172, 34, 36);
//run("Clear", "slice");
//makeRectangle(240, 310, 32, 37);
//run("Clear", "slice");
//makeRectangle(247, 207, 18, 13);
//run("Clear", "slice");
//makeRectangle(249, 296, 15, 15);
//run("Clear", "slice");
//run("Inverse FFT");
///selectWindow("Inverse FFT of cmp_1_1_T0001.tif");
//saveAs("Tiff", "C:/Users/aaron/Documents/Dogic Lab/Data/Droplets To Analyze/1200_60xObj_10pLaser_2x2bin_1in20fps_2umZ_ORCAFlash4_2/eliminating_rings/FFT_files/timepoint1/half2.tif");
//close();
//close();
//close();
//close();
//close();



for (i=1; i< timepoints; 1) {
	n = toString(i);
	x = toString(d2s(i/10000, 4));
    indx = substring(x,2);
    open(datadir + im + indx+'.tif');

    //FFT of upper half
	makeRectangle(0, 0, 389, 212);
	run("Crop");
	run("FFT");
	makeRectangle(252, 192, 10, 10);
	setBackgroundColor(0, 0, 0);
	run("Clear", "slice");
	makeRectangle(250, 313, 13, 13);
	run("Clear", "slice");
	makeRectangle(236, 184, 16, 15);
	run("Clear", "slice");
	makeRectangle(262, 184, 14, 15);
	run("Clear", "slice");
	makeRectangle(234, 320, 16, 15);
	run("Clear", "slice");
	makeRectangle(265, 321, 19, 16);
	run("Clear", "slice");
	makeRectangle(237, 311, 15, 8);
	run("Clear", "slice");
	makeRectangle(246, 198, 20, 8);
	run("Clear", "slice");
	makeRectangle(244, 307, 21, 8);
	run("Clear", "slice");
	run("Inverse FFT");
	selectWindow("Inverse FFT of "+im + indx   +".tif");
	saveAs("Tiff", "C:/Users/aaron/Documents/DogicLab/Data/DropletsToAnalyze/1200_60xObj_10pLaser_2x2bin_1in20fps_2umZ_ORCAFlash4_3/elminating_rings/FFT_files_lower/timepoint" + n + "/half1.tif");
	close();
	close();
	close();
	//close();
	//close();

	//FFT of lower half
	open(datadir + im + indx+'.tif');
	selectWindow(im + indx + '.tif');
	makeRectangle(0, 196, 389, 212);
	run("Crop");
	run("FFT");
	makeRectangle(239, 199, 35, 19);
	run("Clear", "slice");
	makeRectangle(235, 296, 42, 17);
	run("Clear", "slice");
	makeRectangle(239, 200, 16, 15);
	run("Clear", "slice");
	makeRectangle(259, 200, 14, 14);
	run("Clear", "slice");
	makeRectangle(241, 297, 13, 16);
	run("Clear", "slice");
	makeRectangle(259, 298, 11, 14);
	run("Clear", "slice");
	makeRectangle(232, 300, 9, 9);
	run("Clear", "slice");
	makeRectangle(254, 200, 5, 13);
	run("Clear", "slice");
	makeRectangle(253, 304, 7, 8);
	run("Clear", "slice");
	makeRectangle(238, 148, 13, 14);
	run("Clear", "slice");
	makeRectangle(263, 149, 14, 14);
	run("Clear", "slice");
	makeRectangle(237, 353, 12, 17);
	run("Clear", "slice");
	makeRectangle(262, 355, 13, 15);
	run("Clear", "slice");

	run("Inverse FFT");
	selectWindow("Inverse FFT of " + im + indx  + ".tif");
	saveAs("Tiff", "C:/Users/aaron/Documents/DogicLab/Data/DropletsToAnalyze/1200_60xObj_10pLaser_2x2bin_1in20fps_2umZ_ORCAFlash4_3/elminating_rings/FFT_files_lower/timepoint" + n + "/half2.tif");
	close();
	close();
	close();
	//close();
	//close();
	i = i + 1;
}
