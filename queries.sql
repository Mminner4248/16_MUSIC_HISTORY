SELECT * FROM Genre;

INSERT into Artist ('ArtistId', 'ArtistName', 'YearEstablished') values (28, "Gorillaz", 1998);

INSERT into Album ('AlbumId', 'Title', 'ReleaseDate', 'AlbumLength', 'Label','ArtistId','GenreId') values (23, 'Demon Days', '2005', 5059, 'Virgin Records', 28, 14);

INSERT into Song ('SongId', 'Title', 'SongLength', 'ReleaseDate', 'GenreId', 'ArtistId', 'AlbumId') values (22, 'Feel Good Inc', 413, '2005', 14, 28, 23)

SELECT Song.Title, Album.Title, Artist.ArtistName FROM Song LEFT JOIN Album LEFT JOIN Artist WHERE (Song.AlbumId = Album.AlbumId) AND (Album.ArtistId = Artist.ArtistId) AND (Artist.ArtistId = 28);

SELECT Album.Title, SUM(Song.AlbumId = Album.AlbumId) FROM Album LEFT JOIN Song Group By Album.Title;

SELECT Artist.ArtistName, SUM(Song.ArtistId = Artist.ArtistId) FROM Artist LEFT JOIN Song Group By Artist.ArtistName;

SELECT Genre.Label, SUM(Song.GenreId = Genre.GenreId) FROM Genre LEFT JOIN Song Group By Genre.Label;

SELECT Album.Title , MAX(Album.AlbumLength) FROM Album;

SELECT Song.Title , MAX(Song.SongLength) FROM Song;

SELECT Album.Title, Song.Title, MAX(Song.SongLength) FROM Album LEFT JOIN Song WHERE Album.AlbumId = Song.AlbumId;
