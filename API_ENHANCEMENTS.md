# Pigment API - Enhanced Watercolor Palette Management

## Overview
The Pigment API provides comprehensive functionality for building and managing watercolor palettes with detailed pigment information, brand data, and intelligent recommendations.

## New Features Added

### 1. Brand Management
- **GET /api/v1/brands** - List all watercolor paint brands
- **GET /api/v1/brands/:id** - Get specific brand with associated paints
- **POST /api/v1/brands** - Create new brand
- **PUT/PATCH /api/v1/brands/:id** - Update brand information
- **DELETE /api/v1/brands/:id** - Delete brand

### 2. Enhanced Pigment Information
Pigments now include detailed properties for better advice:
- Toxicity level (Low, Medium, High)
- Mixing behavior and recommendations
- Color temperature (Warm, Cool, Neutral)
- Opacity levels
- Granulation properties
- Lightfastness ratings
- Staining power
- Common alternative names

### 3. Intelligent Recommendations System

#### Palette Suggestions
- **GET /api/v1/recommendations/palette_suggestions?palette_id=1**
  - Analyzes existing palette colors
  - Suggests complementary pigments
  - Identifies missing primary/secondary colors

#### Pigment Compatibility
- **GET /api/v1/recommendations/pigment_advice?pigment_id=1**
  - Detailed mixing advice for specific pigments
  - Lists compatible pigments
  - Warns about problematic combinations

- **GET /api/v1/recommendations/compatible_pigments?pigment_id=1**
  - Returns pigments that mix well with the specified pigment

#### Featured & Recommended Palettes
- **GET /api/v1/recommendations/featured_palettes**
  - Curated palettes from watercolor artists
  - Community-featured palettes

- **GET /api/v1/recommendations/common_palettes**
  - Common palette recommendations (Split Primary, Earth Tones, Beginner's)
  - Professional palette configurations

### 4. Enhanced Existing Endpoints

#### Paints API
- **GET /api/v1/paints** now includes brand and detailed pigment information
- Filter by brand: `GET /api/v1/paints?brand_id=1`
- Enhanced search with case-insensitive matching

#### Pigments API
- **GET /api/v1/pigments** includes all new advisory properties
- Filter by color temperature: `GET /api/v1/pigments?color_temperature=Warm`

## Example API Responses

### Brand with Paints
```json
{
  "id": 1,
  "name": "Winsor & Newton",
  "description": "Professional watercolor paints since 1832",
  "country": "UK",
  "website": "https://www.winsornewton.com",
  "paints": [
    {
      "id": 1,
      "name": "Cadmium Red Medium",
      "pigment": "PR108",
      "pigments": [...]
    }
  ]
}
```

### Pigment Advice
```json
{
  "pigment": {
    "id": 1,
    "name": "PB29",
    "common_names": "French Ultramarine, Ultramarine Blue",
    "color_temperature": "Warm",
    "mixing_behavior": "Excellent mixing pigment, creates beautiful purples..."
  },
  "mixing_advice": "Excellent mixing pigment...",
  "recommended_for": "Sky washes, mixing violets and grays...",
  "compatible_pigments": [...]
}
```

### Common Palettes
```json
{
  "palettes": [
    {
      "name": "Split Primary Palette",
      "description": "Essential warm and cool primaries for versatile mixing",
      "colors": ["Ultramarine Blue", "Prussian Blue", "Cadmium Red", "Alizarin Crimson", "Cadmium Yellow", "Hansa Yellow"]
    }
  ]
}
```

## Database Enhancements
- Added `brands` table with paint manufacturer information
- Enhanced `pigments` table with 10 additional advisory properties
- Added foreign key relationship between paints and brands
- Maintained backward compatibility with existing data

## Features Supporting the Requirements
1. ✅ **Build watercolor palettes** - Enhanced existing palette system
2. ✅ **Pigment advice and information** - Detailed pigment properties and mixing advice
3. ✅ **Brand and color information** - New brands system with paint relationships
4. ✅ **Recommended palettes from artists** - Featured palettes system
5. ✅ **Common recommended palettes** - Built-in palette recommendations
6. ✅ **Color compatibility advice** - Pigment compatibility system
7. ✅ **Palette recommendations** - Intelligent suggestion system for existing palettes