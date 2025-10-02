// frontend/app/profil/data-pejabat/page.tsx

"use client";

import React, { useState, useEffect } from 'react';
import Image from 'next/image';
import { Card, CardContent } from '@/components/ui/card';
import { Skeleton } from '@/components/ui/skeleton';


interface Pejabat {
  id: number;
  nama: string;
  jabatan: string;
  foto: string;
}

const API_URL = "http://127.0.0.1:8000/api/struktur-organisasi";
const STORAGE_URL = "http://127.0.0.1:8000/storage/";

const DataPejabatPage = () => {
  const [pejabat, setPejabat] = useState<Pejabat[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchPejabat = async () => {
      try {
        const response = await fetch(API_URL);
        if (!response.ok) {
          throw new Error('Gagal mengambil data dari server');
        }
        const data = await response.json();
        
        // --- INI BAGIAN PENTING UNTUK DEBUGGING ---
        console.log("Data mentah dari API:", data.data); 
        // -----------------------------------------

        setPejabat(data.data);
      } catch (err: any) {
        setError(err.message);
      } finally {
        setLoading(false);
      }
    };

    fetchPejabat();
  }, []);

  // Logika filter yang telah diperbaiki
  const kepalaBadan = pejabat.filter(p => p.jabatan.toLowerCase().includes('kepala badan'));
  const sekretaris = pejabat.filter(p => p.jabatan.toLowerCase().includes('sekretaris'));
  const kepalaBidang = pejabat.filter(p => 
    p.jabatan.toLowerCase().includes('kepala bidang') && 
    !p.jabatan.toLowerCase().includes('kepala sub bidang')
  );
  const kepalaSubBidang = pejabat.filter(p => p.jabatan.toLowerCase().includes('kepala sub bidang'));

  // Komponen untuk menampilkan card pejabat
  const PejabatCard = ({ orang }: { orang: Pejabat }) => (
    <Card className="overflow-hidden text-center h-full flex flex-col">
      <div className="relative w-full aspect-[4/5] bg-gray-100">
        <Image
          src={`${STORAGE_URL}${orang.foto}`}
          alt={`Foto ${orang.nama}`}
          fill
          className="object-cover object-top"
          sizes="(max-width: 768px) 100vw, (max-width: 1200px) 50vw, 33vw"
        />
      </div>
      <CardContent className="p-4 flex flex-col flex-grow justify-center">
        <h3 className="font-bold text-base md:text-lg leading-tight">{orang.nama}</h3>
        <p className="text-xs md:text-sm text-gray-600 mt-1">{orang.jabatan}</p>
      </CardContent>
    </Card>
  );
  
    // Komponen untuk skeleton loading (tidak berubah)
  const LoadingSkeleton = () => (
    <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
      {Array.from({ length: 3 }).map((_, index) => (
        <Card key={index} className="overflow-hidden">
          <Skeleton className="w-full aspect-[4/5]" />
          <CardContent className="p-4">
            <Skeleton className="h-6 w-3/4 mx-auto mb-2" />
            <Skeleton className="h-4 w-full mx-auto" />
          </CardContent>
        </Card>
      ))}
    </div>
  );

  // Fungsi untuk merender setiap seksi jabatan (tidak berubah)
  const renderSection = (title: string, data: Pejabat[]) => (
    <section className="mb-12">
      <h2 className="text-2xl font-bold text-center mb-6 border-b-2 border-gray-200 pb-2">{title}</h2>
      {data.length > 0 ? (
        <div className={`grid grid-cols-1 ${data.length > 1 ? 'md:grid-cols-2 lg:grid-cols-3' : 'max-w-sm mx-auto'} gap-6`}>
          {data.map(p => <PejabatCard key={p.id} orang={p} />)}
        </div>
      ) : (
        <p className="text-center text-gray-500">Data tidak ditemukan.</p>
      )}
    </section>
  );

  return (
    <div className="container mx-auto py-12 px-4">
      <h1 className="text-4xl font-bold text-center mb-10">Data Pejabat BKAD Kota Bogor</h1>
      
      {loading ? (
        <div>
          <section className="mb-12">
            <h2 className="text-2xl font-bold text-center mb-6"><Skeleton className="h-8 w-64 mx-auto" /></h2>
            <div className="max-w-sm mx-auto">
               <Card className="overflow-hidden">
                <Skeleton className="w-full aspect-[4/5]" />
                <CardContent className="p-4">
                  <Skeleton className="h-6 w-3/4 mx-auto mb-2" />
                  <Skeleton className="h-4 w-full mx-auto" />
                </CardContent>
              </Card>
            </div>
          </section>
          <section className="mb-12">
             <h2 className="text-2xl font-bold text-center mb-6"><Skeleton className="h-8 w-64 mx-auto" /></h2>
            <LoadingSkeleton />
          </section>
        </div>
      ) : error ? (
        <p className="text-center text-red-500">{error}</p>
      ) : (
        <>
          {renderSection("KEPALA BADAN", kepalaBadan)}
          {renderSection("SEKRETARIS", sekretaris)}
          {renderSection("KEPALA BIDANG", kepalaBidang)}
          {renderSection("KEPALA SUB BIDANG", kepalaSubBidang)}
        </>
      )}
    </div>
  );
};

export default DataPejabatPage;