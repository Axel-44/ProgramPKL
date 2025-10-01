"use client";

import React from 'react';
import Image from 'next/image';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import Link from 'next/link';

const instagramPhotos = [
  { id: 1, src: "/images/ig-placeholder-1.jpg", alt: "Foto Instagram 1" },
  { id: 2, src: "/images/ig-placeholder-2.jpg", alt: "Foto Instagram 2" },
  { id: 3, src: "/images/ig-placeholder-3.jpg", alt: "Foto Instagram 3" },
];

export function InstagramWidget() {
  return (
    <Card className="shadow-md">
      <CardHeader>
        <CardTitle className="text-lg">Instagram</CardTitle>
      </CardHeader>
      <CardContent>
        <div className="grid grid-cols-3 gap-2">
          {instagramPhotos.map((photo) => (
            <div key={photo.id} className="relative w-full h-24 overflow-hidden rounded-md">
              <Image src={photo.src} alt={photo.alt} fill className="object-cover" />
            </div>
          ))}
        </div>
        <div className="mt-4 text-center">
          <Link href="https://www.instagram.com/bkadkotabogor" target="_blank" rel="noopener noreferrer" className="text-blue-600 hover:underline">
            Kunjungi Profil
          </Link>
        </div>
      </CardContent>
    </Card>
  );
}