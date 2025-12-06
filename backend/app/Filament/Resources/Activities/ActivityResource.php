<?php

namespace App\Filament\Resources\Activities;


use App\Filament\Resources\Activities\ActivityResource\Pages;
use Filament\Schemas\Schema; 
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Spatie\Activitylog\Models\Activity;

class ActivityResource extends Resource
{
    protected static ?string $model = Activity::class;

    
    public static function getNavigationGroup(): ?string
    {
        return 'Logs';
    }

    public static function getNavigationIcon(): ?string
    {
        return 'heroicon-o-clipboard-document';
    }


    protected static bool $shouldRegisterNavigation = false;


    public static function form(Schema $schema): Schema
    {
        return $schema;
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('created_at')
                    ->label('Waktu')
                    ->dateTime('d-m-Y H:i:s')
                    ->sortable(),

                Tables\Columns\TextColumn::make('description')
                    ->label('Aktivitas')
                    ->searchable(),

                Tables\Columns\TextColumn::make('causer.name')
                    ->label('User')
                    ->searchable(),
            ])
            ->defaultSort('created_at', 'desc');
    }

    public static function getRelations(): array
    {
        return [];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListActivities::route('/'),
        ];
    }

    public static function canCreate(): bool
    {
        return false;
    }
}