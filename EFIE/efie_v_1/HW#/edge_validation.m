function e_list = edge_validation(e_list, temp_edge)
 for i = 1 : 3
     [I , J] = find(e_list(:,1:2)== temp_edge(i,1)); 
   if (size(I,1) == 0)
     e_list = [e_list ; temp_edge(i,:)];
   else
    %valid_edge = 0;  
    for k = 1 : size(I,1)
        if J(k) == 1
            if e_list(I(k),2) == temp_edge(i,2)
                valid_edge = 0;
                break
            else
              valid_edge = 1;
            end
       elseif e_list(I(k),1) == temp_edge(i,2)
            valid_edge = 0;
            break
        else
            valid_edge = 1;
        end
    end
  end
     if (valid_edge == 1)
        e_list = [e_list ; temp_edge(i,:)];      
     end
  end
 end  