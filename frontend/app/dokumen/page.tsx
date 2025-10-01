"use client";

import React, { useEffect, useState, useCallback } from 'react';
import { Download, Search } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';

interface Kategori {
    id: number;
    nama_kategori: string;
}

interface KategoriDokumenInfo {
    id: number;
    nama_kategori: string;
}

interface Dokumen {
    id: number;
    title: string;
    file_url: string;
    created_at: string;
    tahun: number; 
    kategori_dokumen: KategoriDokumenInfo;
}

const API_BASE_URL = "http://127.0.0.1:8000/api";

export default function DokumenPage() {
    const [documents, setDocuments] = useState<Dokumen[]>([]);
    const [categories, setCategories] = useState<Kategori[]>([]);
    const [selectedCategoryId, setSelectedCategoryId] = useState<number | null>(null); 
    const [searchTerm, setSearchTerm] = useState<string>("");
    const [loading, setLoading] = useState(true);
    const [currentPage, setCurrentPage] = useState(1);
    const [totalPages, setTotalPages] = useState(1);


    useEffect(() => {
        const fetchCategoriesAndDocuments = async () => {
            setLoading(true);
            try {
                if (categories.length === 0) {
                    const categoriesResponse = await fetch(`${API_BASE_URL}/dokumen-kategori`);
                    const categoriesResult = await categoriesResponse.json();
                    setCategories(categoriesResult.data);
                }

                const params = new URLSearchParams();
                if (selectedCategoryId) {
                    params.append('category_id', selectedCategoryId.toString());
                }
                if (searchTerm) {
                    params.append('search', searchTerm);
                }
                params.append('page', currentPage.toString());


                const documentsResponse = await fetch(`${API_BASE_URL}/dokumen?${params.toString()}`);
                const documentsResult = await documentsResponse.json();
                
                if (documentsResult.success) {
                    setDocuments(documentsResult.data.data);
                    setTotalPages(documentsResult.data.last_page);
                }

            } catch (error) {
                console.error("Gagal mengambil data:", error);
                setDocuments([]);
                setCategories([]);
            } finally {
                setLoading(false);
            }
        };
        fetchCategoriesAndDocuments();
    }, [selectedCategoryId, searchTerm, currentPage]);

    const formatDate = (dateString: string) => {
        const options: Intl.DateTimeFormatOptions = { day: 'numeric', month: 'long', year: 'numeric' };
        return new Date(dateString).toLocaleDateString('id-ID', options);
    };

    const renderHeader = () => (
        <>
            <header className="bg-white shadow-md">
                <div className="max-w-7xl mx-auto px-4 py-4 flex items-center">
                    <div className="flex items-center gap-4">
                        <img src="/logo-bkad-kota-bogor.png" alt="Logo BKAD" className="w-12 h-12 object-cover rounded-full" />
                        <div className="text-blue-900">
                            <h1 className="text-xl font-bold">WEBSITE BKAD</h1>
                            <p className="text-sm">KOTA BOGOR</p>
                        </div>
                    </div>
                </div>
            </header>
            <div className="bg-blue-600 text-white py-2 px-4">
                <div className="max-w-7xl mx-auto flex items-center gap-2">
                    <a href="/" className="flex items-center gap-1 text-sm hover:underline">
                        <span>🏠 HOME</span>
                    </a>
                    <span className="text-sm">/</span>
                    <span className="text-sm font-bold">DOKUMEN</span>
                </div>
            </div>
            <div className="bg-white p-6 md:p-12 shadow-md">
                <div className="max-w-7xl mx-auto flex justify-between items-center">
                    <div>
                        <h1 className="text-3xl font-bold text-gray-800">DAFTAR DOKUMEN</h1>
                        <p className="text-gray-500">Dokumen yang tersedia untuk diunduh</p>
                    </div>
                    <img src="/icons/document-icon-illustration.png" alt="SOP Icon" className="w-24 h-24 object-contain hidden md:block" />
                </div>
            </div>
        </>
    );

    const renderContent = () => (
        <div className="max-w-7xl mx-auto py-8 px-4">
            <div className="bg-white p-6 rounded-lg shadow-md">
                <div className="flex flex-wrap justify-center gap-3 mb-10">
                    <button
                        onClick={() => setSelectedCategoryId(null)}
                        className={`px-4 py-2 text-sm font-medium rounded-full transition-colors ${selectedCategoryId === null ? 'bg-blue-600 text-white shadow-md' : 'bg-white hover:bg-blue-50 text-gray-700 border'}`}
                    >
                        Semua Kategori
                    </button>
                    {categories.map((category) => (
                        <button
                            key={category.id}
                            onClick={() => setSelectedCategoryId(category.id)}
                            className={`px-4 py-2 text-sm font-medium rounded-full transition-colors ${selectedCategoryId === category.id ? 'bg-blue-600 text-white shadow-md' : 'bg-white hover:bg-blue-50 text-gray-700 border'}`}
                        >
                            {category.nama_kategori}
                        </button>
                    ))}
                </div>

                <div className="flex justify-between items-center mb-6">
                    <div className="flex-1">
                        <a href="/">
                            <Button variant="outline" className="border-blue-600 text-blue-600 hover:bg-blue-50 hover:text-blue-700">Kembali</Button>
                        </a>
                    </div>
                    <div className="relative w-full max-w-xs">
                        <Input 
                            type="text" 
                            placeholder="Cari judul dokumen..." 
                            className="pl-10"
                            onChange={(e) => setSearchTerm(e.target.value)}
                        />
                        <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-5 w-5 text-gray-400" />
                    </div>
                </div>

                <div className="border rounded-lg overflow-hidden">
                    <div className="bg-blue-600 text-white rounded-t-lg">
                        <div className="grid grid-cols-[50px_1fr_2fr_1fr_1.5fr_1fr] px-6 py-3 text-xs font-medium uppercase tracking-wider">
                            <div className="text-left">No</div>
                            <div className="text-left hidden md:block">Kategori</div>
                            <div className="text-left">Judul Dokumen</div>
                            <div className="text-left">Tahun</div>
                            <div className="text-left">Tanggal Upload</div>
                            <div className="text-center">Aksi</div>
                        </div>
                    </div>

                    <div className="divide-y divide-gray-200">
                        {loading ? (
                            <p className="text-center p-8 text-gray-500">Memuat data...</p>
                        ) : documents.length > 0 ? (
                            documents.map((doc, index) => (
                                <div key={doc.id} className="grid grid-cols-[50px_1fr_2fr_1fr_1.5fr_1fr] text-sm items-center px-6 py-4 hover:bg-gray-50">
                                    <div className="font-medium text-gray-900">{index + 1 + (currentPage - 1) * 10}</div>
                                    <div className="text-gray-600 hidden md:block">
                                        <span className="px-2 py-1 text-xs font-semibold text-blue-800 bg-blue-100 rounded-full">{doc.kategori_dokumen.nama_kategori}</span>
                                    </div>
                                    <div className="text-gray-800 font-medium">{doc.title}</div>
                                    <div className="text-gray-800">{doc.tahun}</div> {/* <-- DATA TAHUN DITAMPILKAN */}
                                    <div className="text-gray-600">{formatDate(doc.created_at)}</div>
                                    <div className="text-center">
                                        <a href={doc.file_url} target="_blank" rel="noopener noreferrer">
                                            <Button size="sm" className="bg-blue-500 hover:bg-blue-600 text-white">
                                                <Download size={16} />
                                            </Button>
                                        </a>
                                    </div>
                                </div>
                            ))
                        ) : (
                            <p className="text-center p-8 text-gray-500">Tidak ada dokumen yang ditemukan.</p>
                        )}
                    </div>
                </div>

                <div className="mt-6 flex justify-between items-center text-sm text-gray-600">
                    <Button onClick={() => setCurrentPage(p => Math.max(1, p - 1))} disabled={currentPage === 1}>Previous</Button>
                     <span>Halaman {currentPage} dari {totalPages}</span>
                    <Button onClick={() => setCurrentPage(p => Math.min(totalPages, p + 1))} disabled={currentPage === totalPages}>Next</Button>
                </div>
            </div>
        </div>
    );

    return (
        <main className="bg-gray-100 min-h-screen">
            {renderHeader()}
            {renderContent()}
        </main>
    );
}

