function [data,arr,p] = preprocessc3(data)
    arr = cell(66,1);
    arr(1,:) = data(1,3);
    p=2;
    for i=2:length(data(:,3))
        flag=true;
        for j=1:length(arr)
            if(strcmp(data(i,3),arr(j)))
                flag = false;
                break;
            end
        end
        if(flag==true)
            arr(p,:)=data(i,3);
            p=p+1;
        end
    end
    for i=1:length(data(:,3))
        for j=1:length(arr)
            if(strcmp(data{i,3},arr(j) ))
                data{i,3} = j+15;
            end
        end
    end
end