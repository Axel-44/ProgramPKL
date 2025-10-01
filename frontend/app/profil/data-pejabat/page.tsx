"use client";

import React, { useState } from 'react';
import Image from 'next/image';
import Link from 'next/link';
import { Poppins } from 'next/font/google';

// Impor komponen baru FullWidthBanner
import { FullWidthBanner } from '@/components/FullWidthBanner';

// Impor komponen ProfileModal
import ProfileModal from '@/src/components/ProfilModal';

// Inisialisasi font Poppins yang hilang dari tangkapan layar
const poppins = Poppins({
  subsets: ['latin'],
  weight: ['400', '600', '700'],
});

export default function DataPejabatPage() {
  const [isModalOpen, setIsModalOpen] = useState(false);

  const handleProfileClick = (e: React.MouseEvent) => {
    e.preventDefault();
    setIsModalOpen(true);
  };

  return (
    <main className={`bg-gray-100 min-h-screen ${poppins.className}`}>
      {/* Gunakan komponen banner full-width di sini */}
      <FullWidthBanner />

      {/* BREADCRUMB */}
      <div className="bg-blue-600 text-white py-2 px-8">
        <div className="max-w-7xl mx-auto flex items-center gap-2">
          {/* Menggunakan komponen Link */}
          <Link href="/" className="flex items-center gap-1 text-sm hover:underline">
            <span>🏠 HOME</span>
          </Link>
          <span className="text-sm">/</span>
          <div onClick={handleProfileClick} className="cursor-pointer text-sm hover:underline">
            <span>PROFIL</span>
          </div>
          <span className="text-sm">/</span>
          <span className="text-sm font-bold">DATA PEJABAT</span>
        </div>
      </div>

      {/* JUDUL HALAMAN */}
      <div className="container mx-auto py-8 text-center">
        <h1 className="text-3xl font-bold text-blue-900">
          DATA PEJABAT <span className="text-blue-600">BKAD KOTA BOGOR</span>
        </h1>
        <div className="w-48 h-1 bg-blue-600 mx-auto mt-2" />
      </div>

      {/* Konten Halaman DATA PEJABAT */}
      <div className="container mx-auto py-12 px-4 flex flex-col items-center justify-center">
        <div className="w-full max-w-4xl rounded-lg overflow-hidden shadow-xl transform transition-transform hover:scale-105">
          {/* Menggunakan komponen Image */}
          <Image
            src="/images/kepala sub bidang.png"
            alt="Kepala Sub Bidang BKAD Kota Bogor"
            width={1200}
            height={800}
            className="object-contain w-full h-auto"
            priority
          />
        </div>
      </div>

      {/* Render komponen ProfileModal */}
      <ProfileModal isOpen={isModalOpen} onClose={() => setIsModalOpen(false)} />
    </main>
  );
}