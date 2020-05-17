clc

% structures in matlab are the same in c++
% item - value
struu = struct('name','Livia', 'age', 23);

disp(struu);
disp(struu.name);

disp('Adding new field:');
struu.college = 'UFPA';

disp(struu);

disp('Removing field: ');
% remove field
struu = rmfield(struu,'age');
disp(struu);

% check if something is a field
disp('Name is a field?');
disp(isfield(struu, 'name'));

% getting fieldnames
disp(fieldnames(struu));

% vector of structs
struu2 = struct('name', 'anne', 'college','UCLA');
vv = [struu; struu2];

vv(1).name
vv(2).college
