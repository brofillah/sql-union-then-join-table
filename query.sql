SELECT * FROM users LEFT JOIN(
         SELECT * FROM budaya 
         UNION 
         SELECT * FROM bumd 
         UNION 
         SELECT * FROM kerajinan_masyarakat 
         UNION 
         SELECT * FROM kuliner 
         UNION 
         SELECT * FROM pariwisata
      ) foo ON users.id_user = foo.id_admin


// if something ambiguous

SELECT id_user, U.nama AS penulis, foo.nama, tgl FROM users U LEFT JOIN(
         SELECT * FROM budaya 
         UNION 
         SELECT * FROM bumd 
         UNION 
         SELECT * FROM kerajinan_masyarakat 
         UNION 
         SELECT * FROM kuliner 
         UNION 
         SELECT * FROM pariwisata
      ) foo ON U.id_user = foo.id_admin
