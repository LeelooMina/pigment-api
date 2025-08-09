# API Testing Documentation

## Manual Testing of New Endpoints

### 1. Brand Management
```bash
# List all brands
curl -X GET http://localhost:3000/api/v1/brands

# Get specific brand with paints
curl -X GET http://localhost:3000/api/v1/brands/1

# Create new brand
curl -X POST http://localhost:3000/api/v1/brands \
  -H "Content-Type: application/json" \
  -d '{"brand":{"name":"Test Brand","description":"Test description","website":"https://test.com","country":"USA"}}'
```

### 2. Enhanced Pigment API
```bash
# List pigments with new properties
curl -X GET http://localhost:3000/api/v1/pigments

# Filter by color temperature
curl -X GET "http://localhost:3000/api/v1/pigments?color_temperature=Warm"

# Get specific pigment with full details
curl -X GET http://localhost:3000/api/v1/pigments/1
```

### 3. Enhanced Paint API
```bash
# List paints with brand and pigment information
curl -X GET http://localhost:3000/api/v1/paints

# Filter paints by brand
curl -X GET "http://localhost:3000/api/v1/paints?brand_id=1"

# Search paints by name (case-insensitive)
curl -X GET "http://localhost:3000/api/v1/paints?name=ultramarine"
```

### 4. Recommendation System
```bash
# Get palette suggestions for existing palette
curl -X GET "http://localhost:3000/api/v1/recommendations/palette_suggestions?palette_id=1"

# Get pigment mixing advice
curl -X GET "http://localhost:3000/api/v1/recommendations/pigment_advice?pigment_id=1"

# Find compatible pigments
curl -X GET "http://localhost:3000/api/v1/recommendations/compatible_pigments?pigment_id=1"

# Get featured artist palettes
curl -X GET http://localhost:3000/api/v1/recommendations/featured_palettes

# Get common recommended palettes
curl -X GET http://localhost:3000/api/v1/recommendations/common_palettes
```

## Expected Response Structure

### Enhanced Paint Response
```json
{
  "id": 1,
  "name": "French Ultramarine",
  "pigment": "PB29",
  "transparent": "Semi-Transparent",
  "lightfast": "ASTM I",
  "staining": "Low",
  "granulating": "Yes",
  "available": true,
  "brand": {
    "id": 1,
    "name": "Winsor & Newton",
    "country": "UK"
  },
  "color_family": {
    "id": 5,
    "name": "Blue",
    "swatch_url": "#0000ff"
  },
  "pigments": [
    {
      "id": 1,
      "name": "PB29",
      "description": "Ultramarine Blue",
      "color_temperature": "Warm",
      "mixing_behavior": "Excellent mixing pigment..."
    }
  ]
}
```

### Palette Recommendations Response
```json
{
  "palette": {
    "id": 1,
    "name": "My Palette",
    "paints": [...]
  },
  "suggestions": [
    {
      "id": 2,
      "name": "PY3",
      "color_temperature": "Cool",
      "recommended_for": "Mixing bright greens...",
      "paints": [...]
    }
  ]
}
```

## Testing Checklist
- [ ] All CRUD operations work for brands
- [ ] Enhanced pigment properties are returned
- [ ] Paint-brand associations work correctly
- [ ] Palette recommendations provide meaningful suggestions
- [ ] Pigment compatibility advice is helpful
- [ ] Featured palettes are curated appropriately
- [ ] Common palette recommendations are practical
- [ ] API responses include related data efficiently
- [ ] Error handling works for invalid requests
- [ ] Authentication requirements are respected