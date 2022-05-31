ma = msdanalyzer(2, 'µm', 's');

filename = "C:/Users/aaron/Documents/DogicLab/Projects/Droplet_Analysis/Simulations/tracks.csv";
table = readtable(filename);

num_particles = max(table{:,3});  %number of particles that were tracked

tracks = cell(num_particles + 1, 1);

for i = 0:num_particles 
    particle_data_table = table(table.TRACK_ID == i, :);
    tracks{i+1} = [particle_data_table(:, 8) particle_data_table(:,5) particle_data_table(:,6)];
    tracks{i+1} = table2array(sortrows(tracks{i+1}, 1));
end
ma = msdanalyzer(2, 'pix', 'sec');
ma = ma.addAll(tracks);