-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 03 Agu 2020 pada 22.30
-- Versi Server: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 7.2.31-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kurikulum`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `capaianpembelajaranlulusan`
--

CREATE TABLE `capaianpembelajaranlulusan` (
  `KodeCP` varchar(4) NOT NULL,
  `KodeJenisCP` varchar(11) NOT NULL,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `capaianpembelajaranlulusan`
--

INSERT INTO `capaianpembelajaranlulusan` (`KodeCP`, `KodeJenisCP`, `keterangan`) VALUES
('KK1', 'KK', 'Mampu secara kreatif dan inovatif memformulasikan pemecahan masalah dengan memanfaatkan teknik komputasi dan teknologi informasi berbasis konsep-konsep yang relevan dan dengan memanfaatkan tool pemodelan tepat'),
('KK2', 'KK', 'Mampu bekerja sama dalam tim pembangunan perangkat lunak atau sistem informasi skala menengah/besar dengan menerapkan/mengadopsi konsep rekayasa perangkat lunak atau sistem informasi yang tepat/sesuai'),
('KK3', 'KK', 'Mampu membangun program komputer untuk mengimplementasikan pemecahan masalah, dan dengan memanfaatkan framework, atau teknologi informasi yang terkini (up to date).'),
('KK4', 'KK', 'Menganalisis dan mengembangkan sistem serta prosedur yang berkaitan dengan sistem dan jaringan komputer serta memberikan rekomendasi yang berkaitan dengan sistem komputer yang lebih efisien dan efektif.'),
('KK5', 'KK', 'Membangun sistem jaringan komputer dan sistem keamanannya serta melakukan pengelolaan secara kontinu terhadap proteksi profil yang ada'),
('KK6', 'KK', 'Mampu membuat dan mengembangkan aplikasi grafik, visualisasi grafik dan multimedia.'),
('KU1', 'KU', 'Mampu menerapkan pemikiran logis kritis inovatif bermutu dan terukur dala meakukan pekerjaan yang spesifik dibidang keahliannya serta sesuai dengan standart kompetensi kerja bidang yang bersangkutan'),
('KU2', 'KU', 'Mampu menunjukkan kinerja mandiri bermutu dan terukur'),
('KU3', 'KU', 'Mampu mengkaji kasus penerapan ilmu pengetahuan dan teknologi yang memperhatikan dan menerapakn nilai humainora sesuai dengan bidang keahliannya dalam rangka mebghasilkan prototype, prosedur baku desain atau karya seni'),
('KU4', 'KU', 'Mampu menyusun hasil kajian tersebut diatas dalm bentuk kertas kerja spesifikasi desain atau esai seni dan mengunggahnya dalam laman perguruan tinggi'),
('KU5', 'KU', 'Mampu mengambil keputusan secara tepat berdasarkan prosedur baku, spesifikasi desain, persyaratan keselaamatn dan keamanan kerja dalam melakukan supervisi dan evaluasi pada pekerjaannya'),
('KU6', 'KU', 'Mampu memelihara dan mengembangkan jaringan kerja sama di dalam maupun di luar lembaganya'),
('KU7', 'KU', 'Mampu bertanggungjawab atas pencaapaian hasil kerja kelompok dan melakukan supervisi dan evaluasi terhadap penyelesaian pekerjaan yang ditugaskan kepaad pekerja yang bekerja di bawah taggungjawabnya'),
('KU8', 'KU', 'Mampu melakukan proses evaluasi diri terhadap kelompok kerja yang berada di bawah tanggung jawabnya, dan mampu mengelola pembelajaran secara mandiri'),
('KU9', 'KU', 'Mampu mendokumentasikan menyimpan dan mengamankan serat menemukan kembali data untuk menjamin kesahian dan mencegah plagiasi'),
('PP1', 'PP', 'Menguasai konsep teoritis di bidang Informatika,  khususnya di bidang teori komputasi, komputasi cerdas, jaringan komputer, teknologi web, teknologi mobile, sistem informasi, dan basis data'),
('PP2', 'PP', 'Memiliki pengetahuan yang memadai terkait dengan cara kerja sistem komputer dan mampu merancang dan mengembangkan berbagai algoritma/metode untuk memecahkan masalah.'),
('PP3', 'PP', 'Mempunyai pengetahuan dalam mengembangkan algoritma/metode yang diimplementasikan dalam perangkat lunak berbasis komputer.'),
('S1', 'S', 'Bertakwa kepada Tuhan Yang Maha Esa dan mampu menunjukkan sikap religius'),
('S10', 'S', 'Menginternalisasi semangat kemandirian, kejuangan, dan kewirausahaan'),
('S2', 'S', 'Menjunjung tinggi nilai kemanusiaan dalam menjalankan tugas berdasarkan agama, moral dan etika'),
('S3', 'S', 'Dapat berperan sebagai warga negara yang bangga dan cinta tanah air, memiliki nasionalisme serta rasa tanggungjawab pada negara dan bangsa'),
('S4', 'S', 'Dapat berkontribusi dalam peningkatan mutu kehidupan bermasyarakat, berbangsa, dan bernegara berdasarkan Pancasila'),
('S5', 'S', 'Dapat bekerja sama dan memiliki kepekaan sosial serta kepedulian terhadap masyarakat dan lingkungan'),
('S6', 'S', 'Dapat menghargai keanekaragaman budaya, pandangan, agama, dan kepercayaan, serta pendapat atau temuan orisinal orang lain'),
('S7', 'S', 'Taat hukum dan disiplin dalam kehidupan bermasyarakat dan bernegara'),
('S8', 'S', 'Menunjukkan sikap bertanggungjawab atas pekerjaan di bidang keahliannya secara mandiri'),
('S9', 'S', 'Menginternalisasi nilai, norma, dan etika akademik'),
('test', 'PP', 'test');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cpkurikulum`
--

CREATE TABLE `cpkurikulum` (
  `id_cpkurikulum` varchar(11) NOT NULL,
  `KodeCP` varchar(4) NOT NULL,
  `IdKurikulum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cpkurikulum`
--

INSERT INTO `cpkurikulum` (`id_cpkurikulum`, `KodeCP`, `IdKurikulum`) VALUES
('400', 'KK1', 100),
('401', 'KK2', 100),
('402', 'KK3', 100),
('403', 'KK4', 100),
('404', 'KK5', 100),
('405', 'KK6', 100),
('406', 'KU1', 100),
('407', 'KU2', 100),
('408', 'KU3', 100),
('409', 'KU4', 100),
('410', 'KU5', 100),
('411', 'KU6', 100),
('412', 'KU7', 100),
('413', 'KU8', 100),
('414', 'KU9', 100),
('415', 'S1', 100),
('416', 'S2', 100),
('417', 'S3', 100),
('418', 'S4', 100),
('419', 'S5', 100),
('420', 'S6', 100),
('421', 'S7', 100),
('422', 'S8', 100),
('423', 'S9', 100),
('424', 'S10', 100),
('425', 'PP1', 100),
('426', 'PP2', 100),
('427', 'PP3', 100),
('428', 'KK1', 105),
('429', 'KK2', 105),
('430', 'KK3', 105),
('431', 'KK4', 105),
('432', 'KK5', 105),
('433', 'KK6', 105),
('434', 'KU1', 105),
('435', 'KU2', 105),
('436', 'KU3', 105),
('437', 'KU4', 105),
('438', 'KU5', 105),
('439', 'KU6', 105),
('440', 'KU7', 105),
('441', 'KU8', 105),
('442', 'KU9', 105),
('443', 'PP1', 105),
('444', 'PP2', 105),
('445', 'PP3', 105),
('446', 'S1', 105),
('447', 'S2', 105),
('448', 'S3', 105),
('449', 'S4', 105),
('450', 'S5', 105),
('451', 'S6', 105),
('452', 'S7', 105),
('453', 'S8', 105),
('454', 'S9', 105),
('455', 'S10', 105);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cpmk`
--

CREATE TABLE `cpmk` (
  `idCPMK` int(11) NOT NULL,
  `IDMK` varchar(30) NOT NULL,
  `keterangan_cpmk` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cpmk`
--

INSERT INTO `cpmk` (`idCPMK`, `IDMK`, `keterangan_cpmk`) VALUES
(800, 'RIF176001', 'Menguasai konsep dari Pengantar Kewirausahaan, Business Plan,\r\nPemasaran, E-Marketing, Pemasaran di Era Digital, E-customer, Social\r\nMedia Marketing, Pengembangan Produk dan Layanan Baru, E-CRM,\r\nPengelolaan Digital Marketing\r\n'),
(801, 'RTI166007', 'Menguasai dasar system akuntansi dan implementasi sistem informasi akuntansi (SIA) berbasis komputer.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_cplulusanmk`
--

CREATE TABLE `detail_cplulusanmk` (
  `id_detailcpmk` varchar(11) NOT NULL,
  `id_mk` varchar(30) NOT NULL,
  `id_cpkurikulum` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_cplulusanmk`
--

INSERT INTO `detail_cplulusanmk` (`id_detailcpmk`, `id_mk`, `id_cpkurikulum`) VALUES
('501', 'RIF176001', '400'),
('502', 'RIF176001', '401'),
('503', 'RIF176001', '402'),
('504', 'RIF176001', '403'),
('505', 'RIF176001', '404'),
('506', 'RIF176001', '405'),
('507', 'RIF176001', '406'),
('508', 'RIF176001', '407'),
('509', 'RIF176001', '408'),
('510', 'RIF176001', '409'),
('511', 'RIF176001', '410'),
('512', 'RIF176001', '411'),
('513', 'RIF176001', '412'),
('514', 'RIF176001', '413'),
('515', 'RIF176001', '413'),
('516', 'RIF176001', '414'),
('517', 'RIF176001', '415'),
('518', 'RIF176001', '416'),
('519', 'RIF176001', '417'),
('520', 'RIF176001', '418'),
('521', 'RIF176001', '419'),
('522', 'RIF176001', '420'),
('523', 'RIF176001', '421'),
('524', 'RIF176001', '422'),
('525', 'RIF176001', '423'),
('526', 'RIF176001', '424'),
('527', 'RIF176001', '425'),
('528', 'RIF176001', '426'),
('529', 'RIF176001', '427'),
('530', 'RTI166001', '428'),
('531', 'RTI166001', '429'),
('532', 'RTI166001', '430'),
('533', 'RTI166001', '431'),
('534', 'RTI166001', '432'),
('535', 'RTI166001', '433'),
('536', 'RTI166001', '434'),
('537', 'RTI166001', '435'),
('538', 'RTI166001', '436'),
('539', 'RTI166001', '437'),
('540', 'RTI166001', '438'),
('541', 'RTI166001', '439'),
('542', 'RTI166001', '440'),
('543', 'RTI166001', '441'),
('544', 'RTI166001', '442'),
('545', 'RTI166001', '443'),
('546', 'RTI166001', '444'),
('547', 'RTI166001', '445'),
('548', 'RTI166001', '446'),
('549', 'RTI166001', '447'),
('550', 'RTI166001', '448'),
('551', 'RTI166001', '449'),
('552', 'RTI166001', '450'),
('553', 'RTI166001', '451'),
('554', 'RTI166001', '452'),
('555', 'RTI166001', '453'),
('556', 'RTI166001', '454'),
('557', 'RTI166001', '455');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `NIP` varchar(100) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`NIP`, `nama_dosen`) VALUES
('195912081985031004', 'Ekojono, ST., M.Kom'),
('196211281988111001', 'Deddy Kusbianto Purwoko Aji, Ir., M.MKom'),
('197202022005011002', 'Cahya Rahmad, ST., M.Kom., Dr. Eng'),
('197606252005012001', 'Atiqah Nurul Asri, S.Pd., M.Pd'),
('197711162005011008', 'Faisal Rahutomo ST., M.Kom., Dr.Eng'),
('197803272003122002', 'Ulla Delfana Rosiani, ST., MT'),
('198103182010122002', 'Widaningsih, S.Psi, SH., MH'),
('198211302014041001', 'Luqman Affandi, S.Kom., MMSI'),
('198305212006041003', 'Hendra Pradibta, SE., M.Sc'),
('198406102008121004', 'Imam Fahrur Rozi, ST., MT'),
('198603182012121001', 'Ridwan Rismanto, SST., M.KOM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen_pengampu`
--

CREATE TABLE `dosen_pengampu` (
  `id_dosenpengampu` varchar(100) NOT NULL,
  `NIP` varchar(100) NOT NULL,
  `IDMK` varchar(30) NOT NULL,
  `kordinator` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen_pengampu`
--

INSERT INTO `dosen_pengampu` (`id_dosenpengampu`, `NIP`, `IDMK`, `kordinator`) VALUES
('700', '195912081985031004', 'RTI166007', 'YA'),
('701', '198305212006041003', 'RIF176001', 'YA'),
('702', '196211281988111001', 'RIF176005', 'TIDAK'),
('708', '196211281988111001', 'RTI166001', 'TIDAK'),
('733', '195912081985031004', 'RIF176001', 'TIDAK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jeniscp`
--

CREATE TABLE `jeniscp` (
  `KodeJenisCP` varchar(11) NOT NULL,
  `NamaJenis` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jeniscp`
--

INSERT INTO `jeniscp` (`KodeJenisCP`, `NamaJenis`) VALUES
('KK', 'keterampilan khusus'),
('KU', 'keterampilan umum'),
('PP', 'penguasaan pengetahuan'),
('S', 'sikap');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `kode` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`kode`, `nama`) VALUES
('jti', 'Teknologi Informasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontrak`
--

CREATE TABLE `kontrak` (
  `KodeKontrak` varchar(8) NOT NULL,
  `IDMK` varchar(30) NOT NULL,
  `NIP` varchar(100) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `KodePS` varchar(5) NOT NULL,
  `tujuan` varchar(700) NOT NULL,
  `KodeMinggu` varchar(8) NOT NULL,
  `tgl` date NOT NULL,
  `pokok_bahasan` varchar(500) NOT NULL,
  `metode_pembelajaran` varchar(255) NOT NULL,
  `kuis` varchar(30) NOT NULL,
  `uts` varchar(30) NOT NULL,
  `tugas` varchar(30) NOT NULL,
  `uas` varchar(30) NOT NULL,
  `bobot_kuis` varchar(30) NOT NULL,
  `bobot_uts` varchar(30) NOT NULL,
  `bobot_tugas` varchar(30) NOT NULL,
  `bobot_uas` varchar(30) NOT NULL,
  `kapokjar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kontrak`
--

INSERT INTO `kontrak` (`KodeKontrak`, `IDMK`, `NIP`, `kelas`, `KodePS`, `tujuan`, `KodeMinggu`, `tgl`, `pokok_bahasan`, `metode_pembelajaran`, `kuis`, `uts`, `tugas`, `uas`, `bobot_kuis`, `bobot_uts`, `bobot_tugas`, `bobot_uas`, `kapokjar`) VALUES
('k1', 'RIF176001', '198305212006041003', 'MI 3B', 'd3', 'a', 'DE1', '2020-07-01', 'Pengantar\r\nDigital \r\nEntrepreneurship', 'Ceramah, praktek dan diskusi', '', '1x', '', '1x', '', '20%', '', '25%', ''),
('k2', 'RIF176001', '195912081985031004', 'MI 3B', 'd3', 'abc', 'DE2', '2020-07-02', 'abc', 'a', '', '', '', '', '', '', '', '', 'Imam Fahrur Rozi'),
('k3', 'RTI166006', '197202022005011002', 'TI 3B', 'd4', 'A', 'DE1', '2020-07-08', 'A', 'A', 'A', '', '', '', '', '', '', '', 'A');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `IDMK` varchar(30) NOT NULL,
  `IdKurikulum` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `sks` int(11) NOT NULL,
  `jam` int(11) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`IDMK`, `IdKurikulum`, `nama`, `sks`, `jam`, `semester`) VALUES
('RIF176001', 100, 'Digital Enterpreneurship', 2, 4, 6),
('RIF176002', 100, 'Bahasa Inggris Persiapan Kerja', 2, 3, 6),
('RIF176003', 100, 'Etika Profesi Bidang TI', 2, 3, 6),
('RIF176004 ', 100, 'Praktek Kerja Lapangan', 3, 14, 6),
('RIF176005', 100, 'Laporan Akhir', 6, 14, 6),
('RIF176006', 100, 'Bahasa Indonesia', 2, 3, 6),
('RTI166001', 105, 'Ilmu Organisasi dan Komunikasi', 2, 3, 6),
('RTI166002', 105, 'Sistem Manajemen Kualitas Terapan', 2, 3, 6),
('RTI166003', 105, 'Kewirausahaan Terapan', 2, 3, 6),
('RTI166004', 105, 'Etika dan Hukum Teknologi Informasi dan Komunikasi (TIK)', 2, 3, 6),
('RTI166005', 105, 'Statistika Terapan', 2, 4, 6),
('RTI166006', 105, 'Metode Numerik', 2, 4, 6),
('RTI166007', 105, 'Sistem Informasi Korporasi', 4, 7, 6),
('RTI166008', 105, 'Business Intelligence', 4, 7, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `minggu_rps`
--

CREATE TABLE `minggu_rps` (
  `KodeMinggu` varchar(8) NOT NULL,
  `KodeRps` varchar(8) NOT NULL,
  `kemampuan_akhir` varchar(400) NOT NULL,
  `materi_pembelajaran` varchar(400) NOT NULL,
  `metode_pembelajaran` varchar(400) NOT NULL,
  `estimasi_waktu` varchar(400) NOT NULL,
  `pengalaman_belajar` varchar(400) NOT NULL,
  `kriteria_bentuk_penilaian` varchar(400) NOT NULL,
  `indikator_penilaian` varchar(400) NOT NULL,
  `bobot_penilaian` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `minggu_rps`
--

INSERT INTO `minggu_rps` (`KodeMinggu`, `KodeRps`, `kemampuan_akhir`, `materi_pembelajaran`, `metode_pembelajaran`, `estimasi_waktu`, `pengalaman_belajar`, `kriteria_bentuk_penilaian`, `indikator_penilaian`, `bobot_penilaian`) VALUES
('DE1', '900', 'Memahami dan mampu\r\nmenjelaskan konsep dasar\r\ndan ruang lingkup Digital\r\nEntrepreneurship (DE)', '1. Pengenalan Digital\r\nEntrepreneurship\r\n(DE)\r\n2. Jenis-jenis Startup\r\nDigital\r\nBuku 1, bab 1\r\nBuku 2, bab 1', 'Ceramah, praktek\r\ndan diskusi', '4 x 50” ', 'Latihan dan\r\ntugas', '1. Mengetahui ruang\r\nlingkup DE\r\n2. Mampu\r\nmenjelaskan\r\nbeberapa contoh\r\nbisnis berbasis\r\nteknologi', '1. Mampu menjelaskan\r\nruang lingkup DE.\r\n2. Mampu\r\nmenyebutkan\r\nbeberapa contoh DE', ''),
('DE10', '900', 'Mampu menerapkan teknik\r\npengujian validitas model\r\nbisnis DE', 'Inovasi model bisnis DE\r\n1. Trigger questions\r\n2. Napkin sketches\r\n3. Applying\r\nconstraint\r\n4. Business model\r\nprototyping\r\nBuku2,bab16', 'Ceramah, praktek\r\ndan diskusi', '4 X 50” ', 'Latihan dan\r\ntugas', '1. Mengetahui\r\nproses dan teknik\r\nvalidasi model\r\nbisnis', '1. Mampu membuat\r\nbusiness model\r\nprotoyping', ''),
('DE11', '900', 'Mampu memilih jenis badan\r\nhukum legal untuk membuat\r\nsebuah perusahaan DE', 'Aspek legal dan\r\nproperty intelektual\r\ndalam DE\r\n1. Etika dalam DE\r\n2. Badan hukum\r\ndalam DE\r\n3. Perlindungan\r\nkekayaan\r\nintelektual\r\nBuku1,bab7, bab12\r\nBuku2, bab2, bab3', 'Ceramah, praktek\r\ndan diskus', '4 X 50” ', 'Latihan dan\r\ntugas\r\n', '1. Mengetahui aspek\r\nlegal dalam DE', '1. Mampu menyusun\r\ndokumen legal DE', ''),
('DE12', '900', 'Mampu mengevaluasi potensi\r\npertumbuhan sebuah bisnis\r\nDE', 'Strategi pertumbuhnan\r\ndalam DE\r\n1. Konsep economies\r\nof scale,\r\neconomies of\r\nscope, market\r\nleadership\r\n2. Strategi\r\npertumbuhan\r\ninternal\r\n3. Strategi\r\npertumbuhan\r\neksternal\r\n4. Ekspansi bisnis\r\nBuku1,bab13,bab14', '1. Ceramah,\r\npraktek dan\r\ndiskusi\r\n2. Tugas\r\nkelompok\r\n(rencana\r\nbisnis 2', '4 X 50” ', 'Latihan dan\r\ntugas', '1. Pembuatan\r\nrencana bisnis 2\r\n(kelompok)', '1. Laporan tertulis\r\n', ''),
('DE13', '900', 'Mampu menjawab\r\npertanyaan yang diujikan', 'UAS', 'Menilai\r\npresentasi', '4 X 50” ', 'PRESENTASI', 'Presentasi final project', 'PRESENTASI', ''),
('DE2', '900', 'Mengetahui proses\r\nmengidentifikasi peluang dan\r\nmampu menghasilkan ide\r\nbisnis berbasis teknologi.', 'Identifikasi peluang\r\ndan ide bisnis berbasis\r\nteknologi\r\n1. Identifikasi peluang\r\n2. Teknik menghasilkan ide\r\n3. Teknik meningkatkan kreativitas\r\nBuku 1, bab 2\r\nBuku 2, bab 3', '1. Ceramah,\r\npraktek dan\r\ndiskusi\r\n2. Tugas\r\nindividu-take\r\nhome (5 ide bisnis berbasis teknologi)', '4X 50” ', '1. Latihan dan\r\ntugas\r\nindividu\r\n2. Business\r\nidea\r\ngeneration', '1. Mengetahui\r\nproses identifikasi\r\npeluang dan ide\r\nbisnis berbasis\r\nteknologi\r\n2. Mengetahui proses menghasikan ide bisnis kreatif berbasis teknologi\r\n3. Take home assigment', '1. Mampu\r\nmengidentifikasi\r\npeluang dan ide\r\nbisnis berbasis\r\nteknologi\r\n2. Mampu menghasikan ide bisnis kreatif berbasis teknologi\r\n3. Mengerjakan Business idea generation', ''),
('DE3', '900', 'Memahami konsep analisa\r\nkelayakan ide DE ', 'Analisa kelayakan dari\r\nide Digital\r\nEntrepreneurship\r\n1. Analisa kelayakan\r\nproduk/jasa\r\n2. Analisa kelayakan\r\nindustri/ target\r\npasar\r\n3. Analisa kelayakan\r\nfinansial\r\nBuku1, bab3\r\nBuku2, bab4', 'Ceramah,\r\npraktek dan\r\ndiskus', '4 X 50” ', 'Latihan dan\r\ntugas', '1. Mengetahui\r\nproses\r\nmenganalisa\r\nkelayakan\r\nproduk/jasa\r\n2. Mampu\r\nmenganalisa\r\nkelayakan target\r\npasar\r\n3. Mampu\r\nmenganalisa\r\nkelayakan finansial', '1. Mampu menganalisa\r\nkelayakan\r\nproduk/jasa\r\n2. Mampu menganalisa\r\nkelayakan target\r\npasar\r\n3. Mampu menganalisa\r\nkelayakan finansial', ''),
('DE4', '900', 'Memahami konsep analisa\r\nkelayakan ide DE', 'Analisa kelayakan dari\r\nide Digital\r\nEntrepreneurship\r\n1. Analisa kelayakan\r\norganisasi\r\n2. Analisa industri\r\ndan competitor\r\nBuku1, bab3 bab5\r\nBuku2, bab4', 'Ceramah, praktek\r\ndan diskusi', '4 X 50”', 'Latihan dan\r\ntugas', '1. Mengetahui\r\nproses analisa\r\nkelayakan\r\norganisasi\r\n2. Mengetahui proses\r\nanalisa kelayakan\r\nindustri dan\r\nkompetitor', '1. Mampu\r\nmenganalisai\r\nkelayakan organisasi\r\n2. Mampu menganalisa\r\nkelayakan industri\r\ndan kompetitor\r\n', ''),
('DE5', '900', 'Mengetahui berbagai macam\r\nteknik pemasaran dan\r\npenjualan dalam DE', 'Pemasaran dan\r\npenjualan dalam DE\r\n1. Segmentation,\r\nTargeting,\r\nPositioning\r\n2. 7P of\r\nentrepreneurship\r\nBuku1,bab11\r\nBuku2,bab8', 'Ceramah,\r\npraktek dan\r\ndiskusi', '4 X 50”', 'Latihan dan\r\ntugas', '1. Mengetahui\r\nproses STP\r\n2. Mengetahui 7P', '1. Mampu menjelaskan\r\nproses STP\r\n2. Mampu\r\nmenyebutkan 7P', ''),
('DE6', '900', 'Mengetahui prinsip-prinsip\r\nmanajemen keuangan dalam\r\nD', 'Manajemen keuangan\r\ndalam DE\r\n1. Strategi\r\npermodalan/ funding untuk DE\r\n2. Laporan Keuangan\r\nBuku1, bab10\r\nBuku2,bab8', 'Ceramah, praktek\r\ndan diskusi', '4 X 50” ', 'Latihan dan\r\ntugas', '1. Mengetahui\r\nstrategi\r\npermodalan dan\r\nfunding\r\n2. Mengetahui proses\r\npembuatan\r\nlaporan keuangan', '1. Mampu menyusun\r\nstrategi permodalan.\r\nFunding\r\n2. Mampu menyusun laporan keuangan', ''),
('DE7', '900', 'Mengetahui model-model\r\nbisnis dalam DE', 'Model-model bisnis\r\ndalam DE\r\n1. Model bisnis\r\ndalam DE\r\n2. Peer to peer\r\nbusiness models,\r\nsubscription,\r\nlicensing\r\n3. Business model\r\nswitching cost,\r\ncontinuity\r\nBuku1,bab4\r\nBuku2,bab4\r\nBuku3', '1. Ceramah,\r\npraktek dan\r\ndiskusi\r\n2. Tugas\r\nindividu\r\n(Pembuatan\r\nmodel bisnis)', '4 X 50” ', 'Latihan dan\r\ntugas', '1. Pembuatan model\r\nbisnis (individu)', '1. Laporan tertulis', ''),
('DE8', '900', 'Mampu menerapkan prinsip\r\nutama dalam menyususn\r\nsebuah rencana bisnis DE', 'Pembuatan rencana\r\nbisnis DE\r\n1. Struktur rencana\r\nbisnis DE\r\n2. Konsep\r\nkeunggulan\r\nkompetitif\r\n3. Rencana strategis\r\norganisais\r\n4. Teknik pitching\r\nbisnis\r\nBuku2 bab12', '1. Ceramah,\r\npraktek dan\r\ndiskusi\r\n2. Tugas\r\nkelompok\r\n(rencana\r\nbisnis 1)', '4 X 50” ', 'Latihan dan\r\ntugas', '1. Pembuatan\r\nrencana bisnis 1\r\n(kelompok)', '1. Laporan tertulis', ''),
('DE9', '900', 'Mampu menerapkan teknik\r\npengujian validitas model\r\nbisnis DE', 'Validasi model bisnis\r\nDE\r\n1. Business model\r\nvalidation\r\n2. Lean startup\r\nmethods\r\n3. Customer development focus\r\nBuku3', 'Ceramah, praktek\r\ndan diskusi\r\n', '4 X 50”', 'Latihan dan\r\ntugas', '1. Mengetahui\r\nproses dan teknik\r\nvalidasi model\r\nbisnis ', '1. Mampu membuat\r\ndokumen validasi\r\nmodel bisnis', ''),
('SK1', '901', '1)Mengenal tujuan akhir matakuliah \r\n2)Mampu menjelaskan mengenai apa itu sistem informasi korporasi\r\n', '1)Tujuan akhir perkuliahan\r\n2)Gambaran umum dari sistem informasi korporasi\r\nPembelian\r\nProduksi\r\nPenjualan\r\nKeuangan\r\n', 'Ceramah', '1x4x45', '-Mengetahui tujuan akhir perkuliahan \r\n-Memahami konsep dari gambaran umum sistem informasi korporasi\r\n', 'Bentuk : Tes Lisan\r\nKriteria :\r\nKemampuan mahasiswa dalam menjelaskan dan menjawab pertanyaan tentang gambaran umum sistem informasi korporasi\r\n', '-Pemahaman terhadap konsep dasar dari sistem informasi korporasi', '0%'),
('SK10', '901', 'Mampu memahami tentang konsep manajemen keuangan pada skala koorporasi (lanjutan)', '1)Konsep laporan keuangan laba rugi\r\n2)Konsep laporan keuangan dari perubahan modal\r\n', 'Ceramah, Diskusi, Latihan soal, \r\nTanya Jawab\r\n', '1x4x50', '-Memahami dan menjelaskan dengan bahasa sendiri tentang konsep dari keuangan sistem informasi korporasi laba rugi dan perubahan modal', 'Bentuk : Tes Lisan\r\nKriteria :\r\n-Kesuaian dan kejelasan jawaban dengan materi\r\n-Daya tarik penjelasan materi\r\n', '-Kesesuian dan kejelasan dalam menjawab dan menjelaskan mengenai laba rugi dan prubahan modal', '1.5 %'),
('SK11', '901', 'Mampu memahamai tentang konsep Manajemen dan Permrosesan data', '1)Pengertian normalisasi basis data\r\n2)Bentuk normal I\r\n3)Bentuk normal II\r\n4)Bentuk normal III\r\n5)	BCNF', 'Ceramah, Diskusi, Latihan soal, \r\nTanya Jawab\r\n', '1x4x50', '-Memahami definisi, konsep, dan tujuan dari normalisasi basis data.\r\n-Memahami definisi dan konsep dari bentuk normal I, II, III dan BCNF\r\n', 'Bentuk : Tes Tulis\r\nKriteria :\r\n-	Menyelesaikan soal penyederhanaan dengan menggunakan normasilasi basis data bentuk I dan II dengan melakukan dekomposisi tebel dan uji lossless\r\n', '-Ketepatan mahasiswa dalam menyelesaikan soal essay', '1.5 %'),
('SK12', '901', 'Mampu memahami mengenai konsep dari Data Elektronik', '1)Definisi, konsep, kelebihan, tipe data dari Mysql\r\n2)Mengaktifkan dan memanipulasi tabel dengan Mysql\r\n3)Cara membuat database dengan menggunakan Mysql\r\n', 'Ceramah, Diskusi, Presentasi,\r\nPraktek, Tanya Jawab\r\n', '1x4x50', '-Memahami konsep dan definisi dari Mysql, Kelebihan Mysql dan tipe data Mysql\r\n-Mampu membuat database dengan menggunanak Mysql\r\n', 'Bentuk : Tes Lisan\r\nKriteria :\r\n-Ketepatan jawaban dan pemecahan masalah\r\n-Membuat database dengan menggunakan mysql\r\n', '-Kemampuan mahasiswa membuat manipulasi data base dengan menggunakan Mysql', '1.5 %'),
('SK13', '901', 'KUIS', 'Evaluasi', 'Ujian Tulis', '1x4x50', '', '', '', '10 %'),
('SK14', '901', 'Mampu memahami konsep Sistem informasi korporasi dalam sistem pengendalian intern', '1)Pengertian sistem pengendalian intern pada SIA\r\n2)Konsep SPI\r\n3)Klasifikasi SPI\r\n4)Komponen SPI\r\n', 'Ceramah, Diskusi, Tanya Jawab, Presentasi', '1x4x50', '-Memahami definisi, konsep, klasifikasi dan komponen pada sistem pengendalian intern', 'Bentuk : Tes Lisan\r\nKriteria :\r\n-Kesesuaian jawaban pada pertanyaan yang diberikan\r\n', '-Ketepatan mahasiswa dalam menjawab pertanyaan tentang sistem pengendaian intern pada SIA', '1.5 %'),
('SK15', '901', 'Memahami tentang Audit sistem informasi dan pengembangan SIK', '-Mempelajari tentang Pengujian white Box dan black Box dalam audit sistem informasi dan pengembangan SIK', 'Ceramah, Diskusi, Tanya Jawab', '1x4x50', '-Memahami bagaimana Pengujian white Box dan black box dalam audit sistem informasi dan pengembangan SIK', 'Bentuk : Tes Lisan,\r\nKriteria : \r\n-	Melakukan Uji white box dan Black Box dalam audit sistem informasi dan pengembangan SIK\r\n', '-Ketepatan jawaban dan pemecahan masalah', '1.5 %'),
('SK16', '901', 'Tugas Besar', 'Evaluasi', 'Presentasi', '1x4x50', '', '', '', '30 %'),
('SK17', '901', 'UAS', 'Evaluasi', 'Ujian Tulis', '1x4x50', '', '', '', '0 %'),
('SK2', '901', 'Mampu membuat perancangan arsitektur ERP', '1)Definisi arsitektur ERP\r\n2)Use case\r\n3)DFD', 'Ceramah, Diskusi, Tanya Jawab,', '1x4x50', '-Memahami definisi, fungsi, dan bagian bagian dari arsitektur ERP\r\n-Memahami definisi dan fungsi dari use case dan DFD \r\n', 'Bentuk : Tes Lisan,\r\nKriteria :\r\n-Pemahaman konsep dari arsistektur ERP, use case dan DFD\r\n-Kreativitas', '-Ketepatan mahasiswa menjelaskan definisi, fungsi, dan konsep dari arsitektur ERP', '1.5 %'),
('SK3', '901', 'Mampu menjelaskan tentang teori dari dokumentasi sistem informasi korp\r\norasi\r\n', '1)Konsep dokumentasi sistem informasi korporasi\r\n2)Konsep laporan keungan neraca\r\n3)Konsep laporan keuangan laba rugi\r\n4)Konsep laporan keuangan dari perubahan modal\r\n', 'Ceramah, Diskusi, Tanya Jawab', '1x4x50', '-Memahami dan menjelaskan dengan bahasa sendiri tentang konsep dari dokumentasi system informasi korporasi tentang neraca, laba rugi dan perubahan modal', 'Bentuk : Tes Lisan\r\nKriteria :\r\n-Kesuaian dan kejelasan jawaban dengan materi\r\n-Daya tarik penjelasan materi\r\n\r\n', '-Kesesuian dan kejelasan dalam menjawab dan menjelaskan mengenai neraca, laba rugi dan prubahan modal', '1.5 %'),
('SK4', '901', 'Memahami tentang siklus Pembelian: pendapatan dan pengeluaran kas', '-Definisi dan konsep dari siklus pengeluaran\r\n-Aktifitas bisnis dari silkus pengeluaran\r\n-Pengendalian : tujuan, ancaman dan prosedur\r\n-Model data siklus pengeluaran ', 'Ceramah, Diskusi, Tanya Jawab ', '1x4x50', '-Memahami definisi dari konsep dari sikulus pengeluaran pada sistem informasi korporasi yang terdiri dari pembelian dan pengeluaran kas', 'Bentuk : Tes Lisan\r\nKriteria : \r\n-kesesuaian jawaban dan pemahaman konsep dari siklus pengeluaran pada sistem informasi korporasi', '-Ketepatan jawaban dan pemecahan masalah', '1.5 %'),
('SK5', '901', 'KUIS', 'Evaluasi', 'Ujian Tulis', '1x4x50', '', '', '', '10 %'),
('SK6', '901', 'Memahami mengenai siklus produksi pada manajemen produksi', '-Pengenalan dan wawasan tentang sistem produksi dan manajemen produksi serta ukuran kinerjanya.\r\n-pengetahuan tentang keputusan yang perlu dilakukan di dalam manajemen produksi serta ruang lingkupnya.\r\n-	Pengetahuan tentang kaitan antara strategi bisnis/korporasi dengan strategi operasi\r\n', 'Ceramah, Diskusi, Tanya Jawab', '1x4x50', '-Memahami tentang sistem produksi dan manajemen produksi.\r\n-Mengetahui keputusan yang perlu dilakukan di dalam manajemen produksi dan ruang lingkupnya.\r\n-Mengetahui kaitan antara strategi bisnis/korporasi dengan strategi operasi\r\n', 'Bentuk : Tes Lisan\r\nKriteria : \r\n-Kesesuaian jawaban dan pemahaman mengenai siklus produksi pada manajemen produksi\r\n', '-Ketepatan jawaban dan pemecahan masalah', '1.5 %'),
('SK7', '901', 'Memahami tentang siklus penjualan: pendapatan dan penagihan kas', '-Definisi dan konsep dari siklus pendapatan\r\n-Aktifitas bisnis dari silkus pendapatan\r\n-Pengendalian : tujuan, ancaman dan prosedur\r\n-Model data siklus pendapatan \r\n', 'Ceramah, Diskusi, Tanya Jawab ', '1x4x50', '-Memahami definisi dan konsep dari siklus pendapatan pada sistem informasi korporasi yang terdiri dari penjualan dan penagihan kas', 'Bentuk : Tes Lisan\r\nKriteria : \r\n-kesesuaian jawaban dan pemahaman konsep dari siklus pendapatan pada sistem informasi korporasi\r\n', '-Ketepatan jawaban dan pemecahan masalah', '1.5 %'),
('SK8', '901', 'Mampu memahami tentang konsep manajemen keuangan pada skala koorporasi', '1)Konsep keuangan sistem informasi korporasi\r\n2)Konsep laporan keungan neraca\r\n', 'Ceramah, Diskusi, Latihan soal, \r\nTanya Jawab\r\n', '1x4x50', '-Memahami dan menjelaskan dengan bahasa sendiri tentang konsep dari keuangan sistem informasi korporasi tentang neraca.', 'Bentuk : Tes Lisan\r\nKriteria :\r\n-Kesuaian dan kejelasan jawaban dengan materi\r\n-Daya tarik penjelasan materi\r\n', '-Kesesuian dan kejelasan dalam menjawab dan menjelaskan mengenai neraca.', '1.5 %'),
('SK9', '901', 'UTS ', 'Evaluasi', 'Presentasi', '1x4x50', '', '', '', '30 %');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mkcpl`
--

CREATE TABLE `mkcpl` (
  `id` int(11) NOT NULL,
  `id_mk` varchar(30) NOT NULL,
  `id_cp` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mkcpl`
--

INSERT INTO `mkcpl` (`id`, `id_mk`, `id_cp`) VALUES
(1, 'RIF176001', 'S10'),
(2, 'RIF176001', 'PP3'),
(3, 'RIF176001', 'KU2'),
(4, 'RIF176003', 'KU7'),
(5, 'RIF176001', 'KU7'),
(6, 'RIF176005', 'S1'),
(7, 'RTI166006', 'KU5'),
(8, 'RIF176001', 'KK5'),
(10, 'RIF176002', 'KK1'),
(11, 'RIF176001', 'S5'),
(12, 'RIF176001', 'S10'),
(13, 'RTI166008', 'KK1'),
(14, 'RIF176001', 'S10'),
(15, 'RTI166001', 'KK1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `programstudi`
--

CREATE TABLE `programstudi` (
  `KodePS` varchar(5) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `JenisProdi` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `programstudi`
--

INSERT INTO `programstudi` (`KodePS`, `kode`, `nama`, `JenisProdi`) VALUES
('d3', 'jti', 'Manajemen Informatika', 'd3'),
('d4', 'jti', 'Teknik Informatika', 'd4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `refsilabus`
--

CREATE TABLE `refsilabus` (
  `id_ref` varchar(11) NOT NULL,
  `referensi` varchar(500) NOT NULL,
  `IDsilabus` int(50) NOT NULL,
  `IDMK` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `refsilabus`
--

INSERT INTO `refsilabus` (`id_ref`, `referensi`, `IDsilabus`, `IDMK`) VALUES
('u1', 'Ariwibowo S. Adhi, 2009, Kecerdasan Entrepreneur: Memulai, Membangun, Merawat,\r\ndan Mengembangkan Bisnis Anda, Jakarta: PT. Elex Media Kompetindo.', 600, 'RIF176001'),
('u2', 'Khan, Khaled M. and Yan Xhang, 2005, Managing Corporate Information Systems; Evolution and Maintenance, Idea Group Publishing.', 612, 'RTI166007'),
('u3', 'qq', 600, 'RTI166001'),
('u4', 'a', 612, 'RIF176004 ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_pendukung`
--

CREATE TABLE `ref_pendukung` (
  `id_ref_pendukung` varchar(11) NOT NULL,
  `referensi_pendukung` varchar(500) NOT NULL,
  `IDsilabus` int(50) NOT NULL,
  `IDMK` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ref_pendukung`
--

INSERT INTO `ref_pendukung` (`id_ref_pendukung`, `referensi_pendukung`, `IDsilabus`, `IDMK`) VALUES
('p1', 'Michael A. Hitt; R. Duane Ireland; David G. Sirman; and Cheryl A. Trahms, 2011, “Strategic\r\nEntrepreneurship: Creating Value for Individuals, Organizations, and society, Academy of\r\nmanagement, pp. 57-77. ', 600, 'RIF176001'),
('p2', 'Filipe, Joaquim B.I., and Slimane Hammoudi, and Mario Plattini, 2005, Enterprise Information Systems V, Springer Science + Business Media, Inc.', 612, 'RTI166007'),
('p3', 'AAAAAA', 600, 'RIF176006'),
('p4', 'wwwa', 603, 'RIF176002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rps`
--

CREATE TABLE `rps` (
  `KodeRps` varchar(8) NOT NULL,
  `IDMK` varchar(30) NOT NULL,
  `rumpun_mk` varchar(100) NOT NULL,
  `tgl_penyusunan` date NOT NULL,
  `koordinator_rmk` varchar(100) NOT NULL,
  `kaProdi` varchar(100) NOT NULL,
  `KodeCP` varchar(4) NOT NULL,
  `idCPMK` int(11) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `IDsilabus` int(100) NOT NULL,
  `id_ref` varchar(11) NOT NULL,
  `id_ref_pendukung` varchar(11) NOT NULL,
  `pembelajaran_software` varchar(100) NOT NULL,
  `pembelajaran_hardware` varchar(100) NOT NULL,
  `id_dosenpengampu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rps`
--

INSERT INTO `rps` (`KodeRps`, `IDMK`, `rumpun_mk`, `tgl_penyusunan`, `koordinator_rmk`, `kaProdi`, `KodeCP`, `idCPMK`, `deskripsi`, `IDsilabus`, `id_ref`, `id_ref_pendukung`, `pembelajaran_software`, `pembelajaran_hardware`, `id_dosenpengampu`) VALUES
('900', 'RIF176001', 'Sistem Informasi', '2020-01-08', 'Pradibta', 'Hendra ', 'S8', 800, 'Mata Kuliah Digital Entrepeneurship merupakan mata kuliah yang membekali pengetahuan dan keterampilan mahasiswa dengan mengedepankan\\r\\npenguasaan topik utama dalam bidang kewirausahaan dengan bercirikan inovasi teknologi.', 600, 'u1', 'p1', 'Microsoft Office', 'Papan tulis, LCD projector, Flip Chart, etc', '701'),
('901', 'RTI166007', 'Sistem Informasi', '2020-06-01', 'Hendra1', 'Hendra2', 'KK4', 801, 'Matakuliah ini membahas tentang gambaran umum sistem informasi korporasi, dokumentasi sistem, pasar elektronik, pengendalian internal sistem informasi, manajemen dan pemrosesan data, manajemen database, data elektronik, siklus penjualan, penerimaan kas, pembelian dan pengeluaran kas, sistem HMR, siklus produksi, audit sistem informasi dan pengembangan sistem informasi korporasi.', 612, 'u2', 'p2', 'Microsoft Word, Microsoft Excel, Microsoft Powet Point, Mysql, Odoo', 'PC, Buku, LCD Proyektor, Papan Tulis, Spidol, Penghapus', '700');

-- --------------------------------------------------------

--
-- Struktur dari tabel `silabusmk`
--

CREATE TABLE `silabusmk` (
  `IDsilabus` int(100) NOT NULL,
  `IDMK` varchar(30) NOT NULL,
  `pokokBahasan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `silabusmk`
--

INSERT INTO `silabusmk` (`IDsilabus`, `IDMK`, `pokokBahasan`) VALUES
(62, 'RTI166001', 'aa'),
(600, 'RIF176001', 'Pengantar Kewirausahaan, Business Plan, Pemasaran, E-Marketing, Pemasaran di Era Digital, E-customer, Social Media Marketing, Pengembangan Produk dan Layanan Baru, E-CRM, Pengelolaan Digital Marketing.'),
(601, 'RIF176002', ' Identification Self and Others, Expressing Like and dislike, Jons/Occupation, Preprosition, Reporting Past Event, Describing Objects, Numbers and Symbols in Mathemantics, Giving Instructions, Giving and Asking For Help, Reading Simple English Texts About Computing.'),
(602, 'RIF176003', 'Perkembangan Hukum Teknologi Informasi, Hukum Hak Cipta, Hukum Merek dan Domain Name,Hukum Media (Media Law), Yurisdiksi Dalam Dunia Maya (Cyberjuristicion), Hukum Pada E-Commerce, Privasi,Perlindungan Data, Cybercrimes dan Penanggulangannya, Pembuktian dan Alat Bukti Elektronik (digital Evidence).'),
(603, 'RIF176004 ', ''),
(604, 'RIF176005', 'Penyusunan Laporan (Pendahuluan, Tinjauan Pustaka, Model Analisis dan Peracangan, Implementasi, Pengujian dan Quality Assurance, Kesimpulan dan Saran), pengujian hasil, serta pembuatan jurnal ilmiah hasil penelitian.'),
(605, 'RIF176006', ''),
(606, 'RTI166001', 'Pengertian bagaimana memahami definisi dan fungsi kepemimpinan dalam organisasi'),
(607, 'RTI166002', 'Pentingnya QMS dan cara menjaganya, memproses dan mengumpulkan data untuk QMS, serta implementasi, mengukur dan menganalisa mutu, terutama bila menggunakan standar ISO 9001:2000.'),
(608, 'RTI166003', 'Membekali pengetahuan dan keteampilan mahasiswa dengan mengedepankan penguasaan topik utama dalam bidang kewirausahaan.'),
(609, 'RTI166004', 'Etika dan moral, etika organisasi dan pemerintahan, etika kehidupan berbangsa, konsep berpikir etis, manusia madani yang manusiawi, individu keluarga dan masyarakat, etika dalam sistem informasi, perilaku pengguna teknologi informasi, hukum siber, serta urgensi cyber law bagi Indonesia'),
(610, 'RTI166005', 'Pengertian Dasar Statistik, Distribusi Frekuensi, Ukuran Statistik, Standar Deviasi, Permutasi dan Kombinasi, Distribusi Peluang Seragam, Distribusi Peluang Hipergeometrik, Distribusi Binomial dan Poisson, serta Distribusi Normal.'),
(611, 'RTI166006', 'Metode numerik secara garis besar, sistem bilangan, galat, penyelesaian persamaan lanjar maupun nie lanjar, differensiasi numerik dan integrasi numerik.'),
(612, 'RTI166007', 'Gambaran umum SIA, dokumentasi sistem, pasar elektronik,pengendalian internal sistem ifnromasi, manajemen dan pemrosesan data, database, dan data elektronik, sikus penjualan, penerimaan kas, pembelian dan pengeluaran kas, sistem HRM, siklus produksi, serta audit SI '),
(613, 'RTI166008', 'Overview sistem pendukung keputusan, Data warehousing, serta berbagai teknik dan model matematis yang digunakan dalam data mining.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahunajaran`
--

CREATE TABLE `tahunajaran` (
  `kodetahun` varchar(100) NOT NULL,
  `Tahun` varchar(70) NOT NULL,
  `IdKurikulum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tahunajaran`
--

INSERT INTO `tahunajaran` (`kodetahun`, `Tahun`, `IdKurikulum`) VALUES
('200', '2019/2020', 100),
('201', '2019/2020', 105);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kurikulum`
--

CREATE TABLE `tb_kurikulum` (
  `IdKurikulum` int(11) NOT NULL,
  `KodePS` varchar(5) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kurikulum`
--

INSERT INTO `tb_kurikulum` (`IdKurikulum`, `KodePS`, `keterangan`) VALUES
(100, 'd3', '2017'),
(101, 'd4', '2017'),
(102, 'd3', '2009'),
(103, 'd4', '2009'),
(104, 'd3', '2012'),
(105, 'd4', '2012');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'Widaningsih', 'admin', 'admin', '1'),
(2, 'Dwi Puspitasari', 'timkurikulum', 'tim123', '2'),
(3, 'Danar', 'sekjur', 'sekjur123', '3'),
(4, 'Ahmadi', 'kordinator', 'kordi123', '4'),
(5, 'Hendra Pradibta', 'adminprodi', 'prodi123', '5'),
(6, 'Deasy Sandhya Elya Ikawati', 'dosen1', 'dosen123', '6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `capaianpembelajaranlulusan`
--
ALTER TABLE `capaianpembelajaranlulusan`
  ADD PRIMARY KEY (`KodeCP`),
  ADD KEY `capaianpembelajaranlulusan_ibfk_1` (`KodeJenisCP`);

--
-- Indexes for table `cpkurikulum`
--
ALTER TABLE `cpkurikulum`
  ADD PRIMARY KEY (`id_cpkurikulum`),
  ADD KEY `IdKurikulum` (`IdKurikulum`),
  ADD KEY `KodeCP` (`KodeCP`);

--
-- Indexes for table `cpmk`
--
ALTER TABLE `cpmk`
  ADD PRIMARY KEY (`idCPMK`),
  ADD KEY `IDMK` (`IDMK`);

--
-- Indexes for table `detail_cplulusanmk`
--
ALTER TABLE `detail_cplulusanmk`
  ADD PRIMARY KEY (`id_detailcpmk`),
  ADD KEY `id_mk` (`id_mk`),
  ADD KEY `id_cpkurikulum` (`id_cpkurikulum`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`NIP`);

--
-- Indexes for table `dosen_pengampu`
--
ALTER TABLE `dosen_pengampu`
  ADD PRIMARY KEY (`id_dosenpengampu`),
  ADD KEY `IDMK` (`IDMK`),
  ADD KEY `NIP` (`NIP`);

--
-- Indexes for table `jeniscp`
--
ALTER TABLE `jeniscp`
  ADD PRIMARY KEY (`KodeJenisCP`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `kontrak`
--
ALTER TABLE `kontrak`
  ADD PRIMARY KEY (`KodeKontrak`),
  ADD KEY `IDMK` (`IDMK`),
  ADD KEY `kd_minggu` (`KodeMinggu`),
  ADD KEY `kontrak_prodi` (`KodePS`),
  ADD KEY `kontrak_NIP` (`NIP`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`IDMK`),
  ADD KEY `matakuliah_ibfk_1` (`IdKurikulum`);

--
-- Indexes for table `minggu_rps`
--
ALTER TABLE `minggu_rps`
  ADD PRIMARY KEY (`KodeMinggu`),
  ADD KEY `minggu_rps_ibfk_1` (`KodeRps`);

--
-- Indexes for table `mkcpl`
--
ALTER TABLE `mkcpl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mkcpl_cp` (`id_cp`),
  ADD KEY `mkcpl_mk` (`id_mk`);

--
-- Indexes for table `programstudi`
--
ALTER TABLE `programstudi`
  ADD PRIMARY KEY (`KodePS`),
  ADD KEY `kode` (`kode`);

--
-- Indexes for table `refsilabus`
--
ALTER TABLE `refsilabus`
  ADD PRIMARY KEY (`id_ref`),
  ADD KEY `refsilabus_ibfk_1` (`IDsilabus`),
  ADD KEY `refsilabus_ibfk_2` (`IDMK`);

--
-- Indexes for table `ref_pendukung`
--
ALTER TABLE `ref_pendukung`
  ADD PRIMARY KEY (`id_ref_pendukung`),
  ADD KEY `r_idmk` (`IDMK`),
  ADD KEY `r_sil` (`IDsilabus`);

--
-- Indexes for table `rps`
--
ALTER TABLE `rps`
  ADD PRIMARY KEY (`KodeRps`),
  ADD KEY `rps_ibfk_1` (`IDMK`),
  ADD KEY `rps_ibfk_2` (`id_dosenpengampu`),
  ADD KEY `rps_ibfk_3` (`KodeCP`),
  ADD KEY `rps_ibfk_4` (`idCPMK`),
  ADD KEY `rps_ref_pendukung` (`id_ref_pendukung`),
  ADD KEY `rps_ref_utama` (`id_ref`),
  ADD KEY `rps_sil` (`IDsilabus`);

--
-- Indexes for table `silabusmk`
--
ALTER TABLE `silabusmk`
  ADD PRIMARY KEY (`IDsilabus`),
  ADD KEY `silabusmk_ibfk_1` (`IDMK`);

--
-- Indexes for table `tahunajaran`
--
ALTER TABLE `tahunajaran`
  ADD PRIMARY KEY (`kodetahun`),
  ADD KEY `IdKurikulum` (`IdKurikulum`);

--
-- Indexes for table `tb_kurikulum`
--
ALTER TABLE `tb_kurikulum`
  ADD PRIMARY KEY (`IdKurikulum`),
  ADD KEY `tb_kurikulum_ibfk_1` (`KodePS`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mkcpl`
--
ALTER TABLE `mkcpl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `capaianpembelajaranlulusan`
--
ALTER TABLE `capaianpembelajaranlulusan`
  ADD CONSTRAINT `capaianpembelajaranlulusan_ibfk_1` FOREIGN KEY (`KodeJenisCP`) REFERENCES `jeniscp` (`KodeJenisCP`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `cpkurikulum`
--
ALTER TABLE `cpkurikulum`
  ADD CONSTRAINT `cpkurikulum_ibfk_1` FOREIGN KEY (`KodeCP`) REFERENCES `capaianpembelajaranlulusan` (`KodeCP`),
  ADD CONSTRAINT `cpkurikulum_ibfk_2` FOREIGN KEY (`IdKurikulum`) REFERENCES `tb_kurikulum` (`IdKurikulum`);

--
-- Ketidakleluasaan untuk tabel `cpmk`
--
ALTER TABLE `cpmk`
  ADD CONSTRAINT `cpmk_ibfk_1` FOREIGN KEY (`IDMK`) REFERENCES `matakuliah` (`IDMK`);

--
-- Ketidakleluasaan untuk tabel `detail_cplulusanmk`
--
ALTER TABLE `detail_cplulusanmk`
  ADD CONSTRAINT `detail_cplulusanmk_ibfk_1` FOREIGN KEY (`id_mk`) REFERENCES `matakuliah` (`IDMK`),
  ADD CONSTRAINT `detail_cplulusanmk_ibfk_2` FOREIGN KEY (`id_cpkurikulum`) REFERENCES `cpkurikulum` (`id_cpkurikulum`);

--
-- Ketidakleluasaan untuk tabel `dosen_pengampu`
--
ALTER TABLE `dosen_pengampu`
  ADD CONSTRAINT `dosen_pengampu_ibfk_2` FOREIGN KEY (`IDMK`) REFERENCES `matakuliah` (`IDMK`),
  ADD CONSTRAINT `dosen_pengampu_ibfk_3` FOREIGN KEY (`NIP`) REFERENCES `dosen` (`NIP`);

--
-- Ketidakleluasaan untuk tabel `kontrak`
--
ALTER TABLE `kontrak`
  ADD CONSTRAINT `kd_minggu` FOREIGN KEY (`KodeMinggu`) REFERENCES `minggu_rps` (`KodeMinggu`),
  ADD CONSTRAINT `kontrak_NIP` FOREIGN KEY (`NIP`) REFERENCES `dosen` (`NIP`),
  ADD CONSTRAINT `kontrak_ibfk_2` FOREIGN KEY (`IDMK`) REFERENCES `matakuliah` (`IDMK`),
  ADD CONSTRAINT `kontrak_prodi` FOREIGN KEY (`KodePS`) REFERENCES `programstudi` (`KodePS`);

--
-- Ketidakleluasaan untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD CONSTRAINT `matakuliah_ibfk_1` FOREIGN KEY (`IdKurikulum`) REFERENCES `tb_kurikulum` (`IdKurikulum`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `minggu_rps`
--
ALTER TABLE `minggu_rps`
  ADD CONSTRAINT `minggu_rps_ibfk_1` FOREIGN KEY (`KodeRps`) REFERENCES `rps` (`KodeRps`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mkcpl`
--
ALTER TABLE `mkcpl`
  ADD CONSTRAINT `mkcpl_cp` FOREIGN KEY (`id_cp`) REFERENCES `capaianpembelajaranlulusan` (`KodeCP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mkcpl_mk` FOREIGN KEY (`id_mk`) REFERENCES `matakuliah` (`IDMK`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `programstudi`
--
ALTER TABLE `programstudi`
  ADD CONSTRAINT `programstudi_ibfk_1` FOREIGN KEY (`kode`) REFERENCES `jurusan` (`kode`);

--
-- Ketidakleluasaan untuk tabel `refsilabus`
--
ALTER TABLE `refsilabus`
  ADD CONSTRAINT `refsilabus_ibfk_1` FOREIGN KEY (`IDsilabus`) REFERENCES `silabusmk` (`IDsilabus`),
  ADD CONSTRAINT `refsilabus_ibfk_2` FOREIGN KEY (`IDMK`) REFERENCES `matakuliah` (`IDMK`);

--
-- Ketidakleluasaan untuk tabel `ref_pendukung`
--
ALTER TABLE `ref_pendukung`
  ADD CONSTRAINT `r_idmk` FOREIGN KEY (`IDMK`) REFERENCES `matakuliah` (`IDMK`),
  ADD CONSTRAINT `r_sil` FOREIGN KEY (`IDsilabus`) REFERENCES `silabusmk` (`IDsilabus`);

--
-- Ketidakleluasaan untuk tabel `rps`
--
ALTER TABLE `rps`
  ADD CONSTRAINT `rps_ibfk_1` FOREIGN KEY (`IDMK`) REFERENCES `matakuliah` (`IDMK`),
  ADD CONSTRAINT `rps_ibfk_2` FOREIGN KEY (`id_dosenpengampu`) REFERENCES `dosen_pengampu` (`id_dosenpengampu`),
  ADD CONSTRAINT `rps_ibfk_3` FOREIGN KEY (`KodeCP`) REFERENCES `capaianpembelajaranlulusan` (`KodeCP`),
  ADD CONSTRAINT `rps_ibfk_4` FOREIGN KEY (`idCPMK`) REFERENCES `cpmk` (`idCPMK`),
  ADD CONSTRAINT `rps_ref_pendukung` FOREIGN KEY (`id_ref_pendukung`) REFERENCES `ref_pendukung` (`id_ref_pendukung`),
  ADD CONSTRAINT `rps_ref_utama` FOREIGN KEY (`id_ref`) REFERENCES `refsilabus` (`id_ref`),
  ADD CONSTRAINT `rps_sil` FOREIGN KEY (`IDsilabus`) REFERENCES `silabusmk` (`IDsilabus`);

--
-- Ketidakleluasaan untuk tabel `silabusmk`
--
ALTER TABLE `silabusmk`
  ADD CONSTRAINT `silabusmk_ibfk_1` FOREIGN KEY (`IDMK`) REFERENCES `matakuliah` (`IDMK`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tahunajaran`
--
ALTER TABLE `tahunajaran`
  ADD CONSTRAINT `tahunajaran_ibfk_1` FOREIGN KEY (`IdKurikulum`) REFERENCES `tb_kurikulum` (`IdKurikulum`);

--
-- Ketidakleluasaan untuk tabel `tb_kurikulum`
--
ALTER TABLE `tb_kurikulum`
  ADD CONSTRAINT `tb_kurikulum_ibfk_1` FOREIGN KEY (`KodePS`) REFERENCES `programstudi` (`KodePS`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
