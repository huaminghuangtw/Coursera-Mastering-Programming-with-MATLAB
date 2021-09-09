% Edge Detection in Image Processing

function out = edgy(in)
    % Get the size of the input image
    [r, c] = size(in);
    
    % Create an output array that is two rows and columns smaller
    out = zeros(r-2,c-2);
    
    % Use the size of the new array for looping
    [r, c] = size(out);
    
    % Convert to double for doing calculations
    in = double(in);
    
    % Create the horizontal and vertical edge detector filters (Sobel operator)
    ex = [-1 0 1; -2 0 2; -1 0 1];
    ey = [1 2 1; 0 0 0; -1 -2 -1];
    for ii = 1:r
        for jj = 1:c
            sx = in(ii:ii+2,jj:jj+2) .* ex;
            sy = in(ii:ii+2,jj:jj+2) .* ey;
            % Calculate the output pixel value
            out(ii,jj) = sqrt( sum(sum(sx(:)))^2 + sum(sum(sy(:)))^2 );
        end
    end
    % Convert back to uint8
    out = uint8(out);
end

%{
function processed_image = edgy(original_image)
    sx = [-1 0 1; -2 0 2; -1 0 1];
    d = conv2(original_image, sx, 'valid');
    sy = [1 2 1; 0 0 0; -1 -2 -1];
    e = conv2(original_image, sy, 'valid');
    
    [rows columns] = size(e);
    
    for i = 1 : rows
        for j = 1 : columns
            processed_image(i,j) = uint8( sqrt( d(i,j)*d(i,j) + e(i,j)*e(i,j) ) );
        end
    end
end
---
cc = imread('CocaCola.png');
figure
imshow(cc);
edg = edgy(cc);
figure
imshow(edg);
%}