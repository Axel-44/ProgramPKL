"use client";

import React, { useState } from 'react';
import Link from 'next/link';
import { Poppins } from 'next/font/google';

// Mengubah impor HeroSection menjadi FullWidthBanner
import { FullWidthBanner } from '@/components/FullWidthBanner';

// Impor komponen pop-up profil
import ProfileModal from '@/src/components/ProfilModal';

const poppins = Poppins({
  subsets: ['latin'],
  weight: ['400', '600', '700'],
});

export default function VisiMisiPage() {
    const [isProfileModalOpen, setIsProfileModalOpen] = useState(false);

    const handleOpenProfileModal = (e: React.MouseEvent) => {
        e.preventDefault();
        setIsProfileModalOpen(true);
    };

    const handleCloseProfileModal = () => {
        setIsProfileModalOpen(false);
    };

    return (
        <main className={`bg-gray-100 min-h-screen ${poppins.className}`}>
            {/* Mengganti HeroSection dengan FullWidthBanner */}
            <FullWidthBanner />

            {/* Breadcrumb Section */}
            <div className="bg-blue-600 text-white py-2 px-8">
                <div className="max-w-7xl mx-auto flex items-center gap-2">
                    <Link href="/" className="text-sm hover:underline">
                        <span>🏠 HOME</span>
                    </Link>
                    <span className="text-sm">/</span>
                    <div onClick={handleOpenProfileModal} className="cursor-pointer text-sm hover:underline">
                        <span>PROFIL</span>
                    </div>
                    <span className="text-sm">/</span>
                    <span className="text-sm font-bold">VISI DAN MISI</span>
                </div>
            </div>

            {/* Content Section */}
            <div className="container mx-auto py-12 px-4">
                <h1 className="text-3xl md:text-4xl font-serif font-bold text-center text-blue-900 mb-8">
                    VISI DAN MISI <span className="text-blue-600">BKAD Kota Bogor</span>
                </h1>
                
                <div className="bg-white p-6 md:p-10 rounded-lg shadow-md border-t-4 border-blue-500 mb-8">
                    <h2 className="text-2xl font-bold mb-4 text-blue-800">VISI BKAD</h2>
                    <p className="text-gray-700 leading-relaxed">
                        "Terwujudnya Pengelolaan Keuangan dan Aset Daerah yang Profesional, Transparan, dan Akuntabel untuk Mendukung Tata Kelola Pemerintahan yang Baik."
                    </p>
                </div>

                <div className="bg-white p-6 md:p-10 rounded-lg shadow-md border-t-4 border-blue-500">
                    <h2 className="text-2xl font-bold mb-4 text-blue-800">MISI BKAD</h2>
                    <ul className="list-disc list-inside text-gray-700 leading-relaxed space-y-2">
                        <li>Misi pertama:- Meningkatkan kualitas perencanaan dan pengelolaan keuangan daerah secara efektif dan efisien.</li>
                        <li>Misi kedua:- Mewujudkan pengelolaan aset daerah yang tertib, transparan, dan akuntabel.</li>
                        <li>Misi ketiga:- Meningkatkan kapasitas SDM dan sistem informasi keuangan untuk mendukung pelayanan publik.</li>
                        <li>Misi keempat:- Mendorong partisipasi masyarakat dan pemangku kepentingan dalam pengawasan pengelolaan keuangan dan aset.</li>
                    </ul>
                </div>
            </div>

            <ProfileModal isOpen={isProfileModalOpen} onClose={handleCloseProfileModal} />
        </main>
    );
}