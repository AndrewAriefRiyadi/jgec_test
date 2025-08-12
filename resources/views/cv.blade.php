<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Curriculum Vitae Pekerja Asing</title>
    <style>
        body {
            font-family: 'Noto Sans JP', 'Helvetica Neue', Arial, sans-serif;
            font-size: 12px;
            margin: 0;
            padding: 20px;
        }

        .container {
            width: 800px;
            margin: auto;
            border: 1px solid #000;
            padding: 10px;
            box-sizing: border-box;
        }

        header {
            /* display: flex; */
            justify-content: space-between;
            /* align-items: flex-start; */
            border-bottom: 2px solid #000;
            padding-bottom: 5px;
            margin-bottom: 10px;
        }

        .header-left h1 {
            margin: 0;
            font-size: 30px;
            font-weight: bold;
        }

        .header-right {
            text-align: center;
        }

        .header-right h2,
        .header-right h3 {
            margin: 0;
        }

        .header-right h2 {
            font-size: 18px;
            font-weight: bold;
        }

        .header-right h3 {
            font-size: 16px;
            font-weight: normal;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 10px;
        }

        table,
        th,
        td {
            border: 1px solid #000;
        }

        th,
        td {
            padding: 5px;
            text-align: left;
            vertical-align: top;
        }

        .label {
            background-color: #cac9c9;
            font-weight: bold;
            width: 150px;
        }

        .biodata-section .label {
            width: 25%;
        }

        .biodata-section .photo-cell {
            width: 15%;
            text-align: center;
            vertical-align: middle;
            height: 120px;
        }

        .section-title {
            background-color: #f2f2f2;
            padding: 5px;
            margin-bottom: 5px;
            border: 1px solid #000;
            font-weight: bold;
            font-size: 14px;
        }

        .education-section th,
        .work-experience-section th,
        .license-section th {
            background-color: #e0e0e0;
            text-align: center;
        }

        .small-col {
            width: 10%;
        }

        .status-col {
            width: 15%;
            text-align: center;
        }

        .hobbies-section,
        .physical-data-section,
        .self-introduction-section,
        .japan-history-section {
            margin-bottom: 15px;
        }

        p {
            margin: 5px 0;
        }
    </style>
</head>

<body>
    <div class="container">
        <table width="100%" style="border-bottom: 2px solid #000; margin-bottom: 10px;">
            <tr>
                <td style="font-size: 30px; font-weight: bold;">JGEC</td>
                <td style="text-align: center;">
                    <div style="font-weight: bold; font-size: 18px;">特定技能外国人・履歴書</div>
                    <div style="font-size: 16px;">Curriculum Vitae Pekerja Asing Berketerampilan Khusus</div>
                </td>
            </tr>
        </table>


        <section class="biodata-section">
            <table>
                <tr>
                    <td class="label">1. 氏名 (Nama)</td>
                    <td colspan="4">{{ $student->nama }}</td>
                    <td rowspan="7" class="photo-cell">Photo</td>
                </tr>
                <tr>
                    <td class="label">2. 性別 (Gender)</td>
                    <td>{{ $student->gender }}</td>
                    <td class="label">4. 生年月日</td>
                    <td colspan="2">{{ $student->tanggal_lahir }}0</td>

                </tr>
                <tr>
                    <td class="label">3. 婚姻関係 (pernikahan)</td>
                    <td>{{ $student->nikah }}</td>
                    <td class="label">5. 年齢 (usia)</td>
                    <td colspan="">{{ $student->umur }}歳</td>
                </tr>
                <tr>
                    <td class="label">6. 国籍・地域 (kewarganegaraan)</td>
                    <td>{{ $student->kewarganegaraan }}</td>
                    <td class="label">7. 十分に通電できる言語 (bahasa yg dikuasai)</td>
                    <td>{{ $student->bahasa }}</td>
                </tr>
                <tr>
                    <td class="label" rowspan="3">8. 日本在住歴 (tempat tinggal di negara asal atau negara tempat
                        tinggal)</td>
                    <td colspan="3">{{ $student->domisili }}</td>

                </tr>
                <tr>
                    <td colspan="0">自宅電話番号</td>
                    <td colspan="2">{{ $student->nomor }}</td>
                </tr>
                <tr>
                    <td>E-mail</td>
                    <td colspan="2">{{ $student->email }}</td>
                </tr>
            </table>
        </section>

        <section class="education-section">
            <table>
                <tbody>
                    <tr>
                        <td rowspan="10" class="label">9. 学歴 (pendidikan)</td>
                        <td class="label">年 (tahun)</td>
                        <td class="label">月 (bulan)</td>
                        <td class="label">学校名 (nama sekolah)</td>
                        <td class="label">入学・卒業 (masuk dan lulus)</td>
                    </tr>
                    @foreach ($student->schools as $school)
                        <tr>
                            <td>{{ $school->tahun_masuksekolah }}</td>
                            <td>{{ $school->bulan_masuksekolah }}</td>
                            <td>{{ $school->nama_sekolah }}</td>
                            <td>{{ $school->status_sekolah }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </section>

        <section class="work-experience-section">
            <table>
                <tbody>
                    <tr>
                        <td rowspan="10" class="label">10. 職歴 (pengalaman kerja)</td>
                        <td class="label">年 (tahun)</td>
                        <td class="label">月 (bulan)</td>
                        <td class="label">勤務先 (tempat bekerja)</td>
                        <td class="label">入社・退社 (masuk dan lulus)</td>
                    </tr>
                    @foreach ($student->companies as $company)
                        <tr>
                            <td>{{ $company->tahun_masukperusahaan }}</td>
                            <td>{{ $company->bulan_masukperusahaan }}</td>
                            <td>{{ $company->nama_perusahaan }}</td>
                            <td>{{ $company->status }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </section>

        <section class="license-section">
            <table>
                <tbody>
                    <tr>
                        <td rowspan="10" class="label">11. 資格・免許 (sertifikat yang dimiliki)</td>
                        <td class="label">年 (tahun)</td>
                        <td class="label">月 (bulan)</td>
                        <td class="label" colspan="3">資格・免許 (kualifikasi dan lisensi/sertifikasi))</td>
                    </tr>
                    @foreach ($student->certifications as $certif)
                        <tr>
                            <td>{{ $certif->tahun }}</td>
                            <td>{{ $certif->bulan }}</td>
                            <td>{{ $certif->nama_certif }}</td>
                        </tr>
                    @endforeach

                </tbody>
            </table>
        </section>


        <section class="hobbies-section">
            <table>
                <tbody>
                    <tr>
                        <td class=" label">12. 趣味・特技 (hobi/hal yang disukai)</td>
                        <td colspan="6">バドミントンをすることと料理 (tidak ada kolom hobi di table)</td>
                    </tr>
                    <tr>
                        <td class="label">13. サイズ・靴サイズ (CM) (Size)</td>
                        <td colspan="4">身長 (TB): {{ $student->tinggi_badan }} cm / 体重 (BB):
                            {{ $student->berat_badan }} kg / 靴 (ukuran sepatu): {{ $student->ukuran_sepatu }} cm </td>
                        <td class="label"">14. 宗教 (agama):</td>
                        <td> {{ $student->agama }}</td>
                    </tr>
                </tbody>
            </table>


        </section>


        <section class="self-introduction-section">
            <table>
                <tbody>
                    <tr>
                        <td class=" label">15. 長所 (kelebihan)</td>
                        <td colspan="3">{{ $student->kelebihan }}</td>
                    </tr>
                    <tr>
                        <td class="label"> 短所 (kekurangan)</td>
                        <td colspan="3">{{ $student->kekurangan }}</td>
                    </tr>
                    <tr>
                        <td class="label">16. 自己PR (Promosi diri)</td>
                        <td colspan="3">{{ $student->promosi }}
                        </td>
                    </tr>
                    <tr>
                        <td class="label">17. 日本の滞在経験 (pernah tinggal di jepang)</td>
                        <td colspan="">{{ $student->tinggal_jp }}</td>
                        <td>Jika ada Jelaskan</td>
                        <td colspan="">{{ $student->keterangan_tinggal_jp }}</td>
                    </tr>
                </tbody>
            </table>
        </section>

    </div>
</body>

</html>
