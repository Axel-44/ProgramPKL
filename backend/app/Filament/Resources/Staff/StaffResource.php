<?php

namespace App\Filament\Resources\Staff;

use App\Filament\Resources\Staff\Pages;
use App\Models\Staff;
use BackedEnum;
use Filament\Actions;
use Filament\Forms;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Tables;
use Filament\Tables\Table;

class StaffResource extends Resource
{
    protected static ?string $model = Staff::class;

    protected static BackedEnum|string|null $navigationIcon = 'heroicon-o-users';

    protected static ?string $navigationLabel = 'Daftar Staff';

    protected static ?string $pluralModelLabel = 'Staff';

    public static function form(Schema $schema): Schema
    {
        return $schema
            ->schema([
                Forms\Components\FileUpload::make('gambar')
                    ->label('Foto Staff')
                    ->image()                    
                    ->disk('public') 
                    ->directory('staff-photos')
                    ->imageEditor()
                    ->columnSpanFull(), 

                Forms\Components\TextInput::make('nama')
                    ->required()
                    ->maxLength(255),

                Forms\Components\Radio::make('jenis_kelamin')
                    ->label('Jenis Kelamin')
                    ->options([
                        'Laki-laki' => 'Laki-laki',
                        'Perempuan' => 'Perempuan',
                    ])
                    ->required(),

                Forms\Components\Select::make('jenis')
                    ->label('Jenis') 
                    ->options([
                        'Struktural' => 'Struktural',
                        'JFT' => 'JFT',
                        'Pelaksana' => 'Pelaksana',
                    ])
                    ->required(),
                
                Forms\Components\TextInput::make('jabatan')
                    ->label('Jabatan')
                    ->required()
                    ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('gambar')
                    ->label('Foto')
                    ->disk('public')
                    ->circular(),
                Tables\Columns\TextColumn::make('nama')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('jabatan')
                    ->label('Jabatan')
                    ->searchable(),
                Tables\Columns\TextColumn::make('jenis')
                    ->label('Jenis')
                    ->badge(),
                Tables\Columns\TextColumn::make('jenis_kelamin')
                    ->label('Jenis Kelamin')
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                Tables\Filters\SelectFilter::make('jenis')
                    ->options([
                        'Struktural' => 'Struktural',
                        'JFT' => 'JFT',
                        'Pelaksana' => 'Pelaksana',
                    ])
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
            'index' => Pages\ListStaff::class::route('/'),
            'create' => Pages\CreateStaff::class::route('/create'),
            'edit' => Pages\EditStaff::class::route('/{record}/edit'),
        ];
    }    
}
