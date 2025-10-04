"use client";

import React, { useState } from 'react';
import Image from 'next/image';
import Link from 'next/link';
import ProfileModal from '@/src/components/ProfilModal'; // Pastikan path ini benar

// Definisikan tipe data untuk satu pejabat
interface Pejabat {
    id: number;
    nama: string;
    jabatan: string;
    gambar_url: string | null;
}

interface DataPejabatViewProps {
    pejabatList: Pejabat[];
}

export function DataPejabatView({ pejabatList }: DataPejabatViewProps) {
    const [isModalOpen, setIsModalOpen] = useState(false);

    const handleProfileClick = (e: React.MouseEvent) => {
        e.preventDefault();
        setIsModalOpen(true);
    };

    return (
        <>
            <div className="bg-blue-600 text-white py-2 px-8">
                <div className="max-w-7xl mx-auto flex items-center gap-2">
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

            <div className="container mx-auto py-8 text-center">
                <h1 className="text-3xl font-bold text-blue-900">
                    DATA PEJABAT <span className="text-blue-600">BKAD KOTA BOGOR</span>
                </h1>
                <div className="w-48 h-1 bg-blue-600 mx-auto mt-2" />
            </div>
            <div className="container mx-auto py-12 px-4">
                {(!pejabatList || pejabatList.length === 0) ? (
                    <p className="text-center p-8">Tidak ada data pejabat yang ditemukan.</p>
                ) : (
                    <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-8">
                        {pejabatList.map((pejabat) => (
                            <div key={pejabat.id} className="bg-white rounded-lg shadow-lg overflow-hidden group transform hover:-translate-y-2 transition-transform duration-300">
                                <div className="relative w-full h-80">
                                    <Image
                                        src={pejabat.gambar_url || `https://via.placeholder.com/300/cccccc/ffffff?text=${pejabat.nama.charAt(0)}`}
                                        alt={pejabat.nama}
                                        fill
                                        className="object-cover group-hover:scale-105 transition-transform duration-300"
                                    />
                                </div>
                                <div className="p-4 text-center">
                                    <h3 className="font-bold text-lg text-blue-900 truncate" title={pejabat.nama}>{pejabat.nama}</h3>
                                    <p className="text-sm text-gray-600 mt-1 h-10 line-clamp-2" title={pejabat.jabatan}>{pejabat.jabatan}</p>
                                </div>
                            </div>
                        ))}
                    </div>
                )}
            </div>
            
            <ProfileModal isOpen={isModalOpen} onClose={() => setIsModalOpen(false)} />
        </>
    );
}