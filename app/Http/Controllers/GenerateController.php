<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\generateData;
use Barryvdh\DomPDF\Facade\Pdf;

class GenerateController extends Controller
{
    public function exportPDF()
    {
        $data = generateData::all();

        // Kalau isi kolom 'data' adalah JSON string berisi jadwal per jam/per kelas
        $parsedData = $data->map(function ($item) {
            return json_decode($item->data, true);
        });

        return Pdf::loadView('generate.jadwal_pdf', [
            'parsedData' => $parsedData
        ])->setPaper('a4', 'landscape')
          ->download('jadwal.pdf');
    }
}