clc;clear;close all

%path folder set and check
pathDir = 'datasource';
if ~isfolder(pathDir)
  errorMessage = sprintf('Error: The following folder does not exist:\n%s', pathDir);
  uiwait(warndlg(errorMessage));
  return;
end

%variable defining
f1 = figure;
f2 = figure;
dontcare=true;
x=200;
y=400;

alpha=16;
dim=256;

filePattern = fullfile(pathDir, '*.jpg');
imgfiles = dir(filePattern);
N=length(imgfiles);

s = struct;
datastract=repmat(s,1,length(imgfiles));

file = cell(1,N);
ssimval_E = cell(1,N);

%img_test = imread("datatest\image (78).jpg");
 [fileName,filePath] = uigetfile('*', 'Select data file currency', '.');
if filePath==0
    error('None selected!'); 
end
img_test = imread(fullfile(filePath,fileName));
img_test=imresize(img_test, [x, y]);
hph_test = hisPramHSV(img_test,16);
cph_test = calcPramHSV(img_test,256,256);

figure(f1);
subplot(3,3,1),imshow(img_test,[]),title("orginal");
subplot(3,3,2),imshow(cph_test.hsv_img,[]),title("hsv");
subplot(3,3,4),imshow(cph_test.re_H,[]),title("hue");
subplot(3,3,7),imhist(cph_test.re_H),title("hue");
subplot(3,3,5),imshow(cph_test.re_S,[]),title("sat");
subplot(3,3,8),imhist(cph_test.re_S),title("sat");
subplot(3,3,6),imshow(cph_test.re_V,[]),title("val");
subplot(3,3,9),imhist(cph_test.re_V),title("val");
figure(f2);
subplot(ceil(N/7),7,1),imshow(hph_test.re_his_H,[]),title("orginal");



for n = 1 : N
    datastract(n).index=n;
    filename = imgfiles(n).name;
    datastract(n).filename = string(imgfiles(n).name);
    txtcurrency = split(imgfiles(n).name,["(",")"]);
    txtcurrencynew = char(txtcurrency(2));
    if dontcare==true
        txtcurrencynew = txtcurrencynew(1:end-1);
    end
    datastract(n).txt = string(txtcurrencynew);
    fullFileName = fullfile(pathDir, filename);
    
    img_src = imread(fullFileName);
    img_src = imresize(img_src, [x, y]);
    
    datastract(n).hph=hisPramHSV(img_src,16);
    datastract(n).cph=calcPramHSV(img_src,256,256);

    
    %[ssimval,~] = ssim(img_test,img_src{n});
    [datastract(n).ssim_hh,~] = ssim(hph_test.re_his_H,datastract(n).hph.re_his_H);
    [datastract(n).ssim_hs,~] = ssim(hph_test.re_his_S,datastract(n).hph.re_his_S);
    [datastract(n).ssim_hv,~] = ssim(hph_test.re_his_V,datastract(n).hph.re_his_V);
    [datastract(n).ssim_h,~] = ssim(cph_test.re_H,datastract(n).cph.re_H);
    [datastract(n).ssim_s,~] = ssim(cph_test.re_S,datastract(n).cph.re_S);
    [datastract(n).ssim_v,~] = ssim(cph_test.re_V,datastract(n).cph.re_V);
    [datastract(n).ssim_rgb,~] = ssim(img_src,img_test);    
    
    %hist = [hist, imhist(hsv_src{n})]; %#ok
    mean_Et=0;varr_Et=0;asim_Cmt=0;asim_Cvt=0;asim_Cct=0;
    for i=1:alpha

        mm = datastract(n).cph.maen_H_col(i);
        mt = cph_test.maen_H_col(i);
         
        vv = datastract(n).cph.var_H_col(i);
        vt = cph_test.var_H_col(i);
 
        cs = datastract(n).cph.re_H(:,i);
        ct = cph_test.re_H(:,i);
        

        mc = (mm*mt)/(mm^2+mt^2);
        vc = (vv*vt)/(vv^2+vt^2);
        
        mean_Et = mean_Et + (mm-mt)^2;
        varr_Et = varr_Et + (vv-vt)^2;
        asim_Cmt = asim_Cmt + mc;
        asim_Cvt = asim_Cvt + vc;
        

        covmat=cov(cs,ct);
        co=covmat(1,2);c1=covmat(1,1);c2=covmat(2,2);
        cc=(co/((c1*c2)+0.000000000000001));
        asim_Cct = asim_Cct + cc;
    end
   
    
    datastract(n).cphDmean = mean_Et;
    datastract(n).cphDvar = varr_Et;
    datastract(n).cphSmean = asim_Cmt;
    datastract(n).cphSvar = asim_Cvt;
    datastract(n).cphcov = asim_Cct;
    
    
    mean_Et=0;varr_Et=0;asim_Cmt=0;asim_Cvt=0;asim_Cct=0;
    for i=1:alpha
        %{
        mm = datastract(n).cpg.maen_Gray_col(i);
        mt = cpg_test.maen_Gray_col(i);
        
        vv = datastract(n).cpg.var_Gray_col(i);
        vt = cpg_test.var_Gray_col(i);

        cs = datastract(n).cpg.re_Gray(:,i);
        ct = cpg_test.re_Gray(:,i);  
        %}
        
        mm = datastract(n).hph.maen_hist_H_col(i);
        mt = hph_test.maen_hist_H_col(i);
         
        vv = datastract(n).hph.var_hist_H_col(i);
        vt = hph_test.var_hist_H_col(i);

        cs = datastract(n).hph.re_his_H(:,i);
        ct = hph_test.re_his_H(:,i);
        
        mc = (mm*mt)/(mm^2+mt^2);
        vc = (vv*vt)/(vv^2+vt^2);
        
        mean_Et = mean_Et + (mm-mt)^2;
        varr_Et = varr_Et + (vv-vt)^2;
        asim_Cmt = asim_Cmt + mc;
        asim_Cvt = asim_Cvt + vc;
        

        covmat=cov(cs,ct);
        co=covmat(1,2);c1=covmat(1,1);c2=covmat(2,2);
        cc=(co/((c1*c2)+0.000000000000001));
        asim_Cct = asim_Cct + cc;
    end
   
    
    datastract(n).hphDmean = mean_Et;
    datastract(n).hphDvar = varr_Et;
    datastract(n).hphSmean = asim_Cmt;
    datastract(n).hphSvar = asim_Cvt;
    datastract(n).hphcov = asim_Cct;
 


    subplot(ceil((N+1)/7),7,n+1),imshow(datastract(n).hph.re_his_H,[]),title({filename,num2str(datastract(n).ssim_hh)});
end

    disp(' ');
    disp("---------------"+fileName+"----------------");
    txttest = split(fileName,["(",")"]);
    txttestnew = char(txttest(2));
    if dontcare==true
        txttestnew = txttestnew(1:end-1);
    end
    printresult(datastract,string(txttestnew));
%%%printresult(datastract);

%}