matrixSize = 1000;
numMobiles = 20;


towerX = 500;
towerY = 500;

wavelength = 10;
sourcedimension = 50;
mobileX = randi([1, matrixSize], 1, numMobiles);
mobileY = randi([1, matrixSize], 1, numMobiles);

fraunhoferDistance = (2 * (towerX^2 + towerY^2)) / wavelength;

inFraunhoferDistance = sqrt((mobileX - towerX).^2 + (mobileY - towerY).^2) <= fraunhoferDistance;

disp('Mobiles within Fraunhofer distance:');
disp(find(inFraunhoferDistance));

distances = sqrt((mobileX - towerX).^2 + (mobileY - towerY).^2);
nearFieldCondition = distances < (sourcedimension^2 / wavelength);
farFieldCondition = distances > (sourcedimension^2 / wavelength);
fraunhoferFieldCondition = distances == round((2 * sourcedimension^2 / wavelength), 2);

disp('Points in Near Field:');
disp(find(nearFieldCondition));

disp('Points in Far Field:');
disp(find(farFieldCondition));

disp('Points at Fraunhofer Distance:');
disp(find(fraunhoferFieldCondition));

figure;
scatter(towerX, towerY, 'ro', 'filled'); 
hold on;
scatter(mobileX, mobileY, 'bx'); 

legend('Tower', 'Mobiles');
axis([0 matrixSize 0 matrixSize]);
hold off;
% figure;
% scatter(towerX, towerY, 'ro', 'filled'); 
% hold on;
% scatter(mobileX(nearFieldCondition), mobileY(nearFieldCondition), 'bx'); 
% scatter(mobileX(farFieldCondition), mobileY(farFieldCondition), 'gx'); 
% scatter(mobileX(fraunhoferFieldCondition), mobileY(fraunhoferFieldCondition), 'ms', 'filled'); 
% title('Source and mobiles');
% legend('Source', 'Near Field', 'Far Field', 'Fraunhofer Distance');
% axis([0 matrixSize 0 matrixSize]);
% hold off;