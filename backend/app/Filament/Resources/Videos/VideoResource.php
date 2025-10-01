<?php

namespace App\Filament\Resources\Videos;

use App\Filament\Resources\Videos\Pages;
use App\Models\Video;
use BackedEnum;
use Filament\Actions;
use Filament\Forms;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Schemas\Components\Utilities\Get;

class VideoResource extends Resource
{
    protected static ?string $model = Video::class;
    protected static BackedEnum|string|null $navigationIcon = 'heroicon-o-video-camera';
    protected static ?string $navigationLabel = 'Manajemen Video';
    protected static ?string $pluralModelLabel = 'Video';

    public static function form(Schema $schema): Schema
    {
        return $schema
            ->schema([
                Forms\Components\TextInput::make('title')
                    ->label('Judul Video')
                    ->required()
                    ->maxLength(255)
                    ->columnSpanFull(),

                Forms\Components\Radio::make('type')
                    ->label('Tipe Video')
                    ->options([
                        'file' => 'Upload File',
                        'youtube' => 'Link YouTube',
                    ])
                    ->default('file')
                    ->reactive(),

                Forms\Components\FileUpload::make('file_path')
                    ->label('File Video')
                    ->disk('public')
                    ->directory('videos')
                    ->acceptedFileTypes(['video/mp4', 'video/webm'])
                    ->requiredIf('type', 'file')
                    ->hidden(fn (Get $get) => $get('type') !== 'file'),

                Forms\Components\TextInput::make('youtube_url')
                    ->label('URL Video YouTube')
                    ->requiredIf('type', 'youtube')
                    ->url()
                    ->rule('regex:/^(https?:\/\/)?(www\.)?(youtube\.com|youtu\.be)\/.+$/')
                    ->hidden(fn (Get $get) => $get('type') !== 'youtube'),

                Forms\Components\Textarea::make('description')
                    ->label('Deskripsi (Opsional)')
                    ->rows(3)
                    ->columnSpanFull(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('title')
                    ->label('Judul')
                    ->searchable(),
                Tables\Columns\TextColumn::make('type')
                    ->label('Tipe')
                    ->badge()
                    ->color(fn (string $state): string => match ($state) {
                        'file' => 'info',
                        'youtube' => 'danger',
                        default => 'gray',
                    })
                    ->formatStateUsing(fn (string $state): string => ucfirst($state)),
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Tanggal Upload')
                    ->dateTime('d M Y'),
            ])
            ->actions([
                Actions\EditAction::make(),
                Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Actions\BulkActionGroup::make([
                    Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }
    
    public static function getPages(): array
    {
        return [
            'index' => Pages\ListVideos::class::route('/'),
            'create' => Pages\CreateVideo::class::route('/create'),
            'edit' => Pages\EditVideo::class::route('/{record}/edit'),
        ];
    }
}
