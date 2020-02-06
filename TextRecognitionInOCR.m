In = imread('numberplate6.jpg');

% imshow(In);

%% Select ROI
roi = round(getPosition(drawrectangle));
results = ocr(In,roi);
J = insertShape(In,'rectangle',results.WordBoundingBoxes,'LineWidth',3);
imshow(J);
% TI = insertText(J,[700 100],results.Text,'FontSize',34);
% 
% K = step(TI,J);
% imshow(K)
