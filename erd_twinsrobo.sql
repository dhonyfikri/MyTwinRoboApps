CREATE TABLE `kontak_medsos` (
  `id` <type>,
  `id_pengajar` <type>,
  `whatsapp` <type>,
  `instagram` <type>,
  `facebook` <type>,
  `line` <type>,
  `telegram` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `kategori` (
  `id` <type>,
  `id_kesulitan` <type>,
  `nama_kategori` <type>,
  `logo_kategori` <type>,
  `deskripsi` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `materi` (
  `id` <type>,
  `id_modul` <type>,
  `judul_materi` <type>,
  `konten_materi` <type>,
  `ilustrasi_gambar` <type>,
  `ilustrasi_video` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `image_tips` (
  `id` <type>,
  `id_materi` <type>,
  `link_gambar` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `robot_plan` (
  `id` <type>,
  `id_siswa` <type>,
  `plan_name` <type>,
  `plan_number` <type>,
  `plan_deskrisi` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `list_strategy` (
  `id` <type>,
  `id_robot_plan` <type>,
  `move_node` <type>,
  `coment_label` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `kelas` (
  `id` <type>,
  `id_pengajar` <type>,
  `nama_kelas` <type>,
  `deskripsi` <type>,
  `created_at` <type>,
  `edited_at` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `info_lomba` (
  `id` <type>,
  `judul_lomba` <type>,
  `deskripsi` <type>,
  `pamflet` <type>,
  `start_at` <type>,
  `end_at` <type>,
  `kategori_lomba` <type>,
  `number_of_views` <type>,
  `number_of_shares` <type>,
  `created_at` <type>,
  `updated_at` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `wishlist_event` (
  `id` <type>,
  `id_siswa` <type>,
  `id_event` <type>,
  `added_at` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `testimoni` (
  `id` <type>,
  `id_user` <type>,
  `id_modul` <type>,
  `review_testimoni` <type>,
  `added_at` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `siswa` (
  `id` <type>,
  `id_user` <type>,
  `nama_sekolah` <type>,
  `vip_limit` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `tips_page` (
  `id` <type>,
  `id_kategori` <type>,
  `judul_tips` <type>,
  `konten_tips` <type>,
  `gambar_tips` <type>,
  `video_tips` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `retail_non_bank` (
  `id` <type>,
  `id_pembelian` <type>,
  `nama_retail` <type>,
  `kode_pembayaran` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `video_tips` (
  `id` <type>,
  `id_materi` <type>,
  `link_video` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `atm` (
  `id` <type>,
  `id_user` <type>,
  `id_bank` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `pengajar` (
  `id` <type>,
  `id_user` <type>,
  `kategor_mengajar` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `pembelian` (
  `id` <type>,
  `id_siswa` <type>,
  `rekening_penerima` <type>,
  `tanggal_pembelian` <type>,
  `cash` <type>,
  `cashless` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `partisipan_kelas` (
  `id` <type>,
  `id_siswa` <type>,
  `id_kelas` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `kesulitan` (
  `id` <type>,
  `tipe_kesulitan` <type>,
  `bonus_score` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `mini_games` (
  `id` <type>,
  `id_siswa` <type>,
  `id_plan` <type>,
  `nama_player` <type>,
  `jenis_robot` <type>,
  `kec_motor` <type>,
  `video_challenge` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `users` (
  `id` <type>,
  `email` <type>,
  `password` <type>,
  `username` <type>,
  `nama_depan` <type>,
  `nama_belakang` <type>,
  `jenis_kelamin` <type>,
  `tanngal_lahir` <type>,
  `payment_account` <type>,
  `foto_profil` <type>,
  `created_at` <type>,
  `updated_at` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `modul` (
  `id` <type>,
  `id_kategori` <type>,
  `judul_modul` <type>,
  `logo` <type>,
  `deskripsi` <type>,
  `harga_modul` <type>,
  `durasi_aktif` <type>,
  `rating` <type>,
  `id_kesulitan` <type>,
  `jenis_langganan` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `scope_kategori_event` (
  `id` <type>,
  `id_event` <type>,
  `id_kategori` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `video_pembelajaran` (
  `id` <type>,
  `id_materi` <type>,
  `link_video` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `akses_modul_siswa` (
  `id` <type>,
  `id_siswa` <type>,
  `id_modul` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `scope_kategori_pengajar` (
  `id` <type>,
  `id_pengajar` <type>,
  `id_kategori` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `akun_bank` (
  `id` <type>,
  `nama_bank` <type>,
  `no_rekening` <type>,
  PRIMARY KEY (`id`)
);

CREATE TABLE `image_pembelajaran` (
  `id` <type>,
  `id_materi` <type>,
  `link_gambar` <type>,
  PRIMARY KEY (`id`)
);

