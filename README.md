# Pigment API

Pigment API is a comprehensive RESTful API that allows users to create and manage watercolor palettes with intelligent recommendations, detailed pigment information, and brand management. The API provides expert guidance on pigment mixing, compatibility advice, and curated palette suggestions to help watercolor artists build their ideal palette.

## 🎨 Features

### Core Functionality
- **User Management** - Secure authentication and user profiles
- **Palette Creation** - Build and manage custom watercolor palettes
- **Paint Database** - Comprehensive database of watercolor paints with detailed properties
- **Pigment Information** - Detailed pigment properties including mixing behavior and compatibility
- **Brand Management** - Track paint manufacturers and their products

### Advanced Features
- **Intelligent Recommendations** - AI-powered suggestions for palette completion
- **Pigment Compatibility** - Expert advice on which pigments mix well together
- **Featured Palettes** - Curated palettes from professional watercolor artists
- **Common Palettes** - Industry-standard palette configurations (Split Primary, Earth Tones, etc.)
- **Mixing Advice** - Detailed guidance on pigment behavior and characteristics

### Social Features
- **Posts & Comments** - Share and discuss artwork and techniques
- **Follow System** - Follow other artists and see their work
- **Palette Sharing** - Share custom palettes with the community

## 🚀 API Endpoints

### Brand Management
- `GET /api/v1/brands` - List all watercolor brands
- `GET /api/v1/brands/:id` - Get brand details with associated paints
- `POST /api/v1/brands` - Create new brand
- `PUT/PATCH /api/v1/brands/:id` - Update brand information

### Enhanced Paint API
- `GET /api/v1/paints` - List all paints with brand and pigment details
- `GET /api/v1/paints?brand_id=1` - Filter paints by brand
- `GET /api/v1/paints?name=ultramarine` - Search paints by name

### Enhanced Pigment API
- `GET /api/v1/pigments` - List all pigments with detailed properties
- `GET /api/v1/pigments?color_temperature=Warm` - Filter by color temperature
- `GET /api/v1/pigments/:id` - Get detailed pigment information

### Recommendation System
- `GET /api/v1/recommendations/palette_suggestions?palette_id=1` - Get suggestions to complete a palette
- `GET /api/v1/recommendations/pigment_advice?pigment_id=1` - Get mixing advice for specific pigments
- `GET /api/v1/recommendations/compatible_pigments?pigment_id=1` - Find compatible pigments
- `GET /api/v1/recommendations/featured_palettes` - Get curated artist palettes
- `GET /api/v1/recommendations/common_palettes` - Get standard palette recommendations

### Existing APIs
- User management (`/api/v1/users/*`)
- Palettes (`/api/v1/palettes`)
- Social features (`/api/v1/posts`, `/api/v1/comments`, `/api/v1/likes`, `/api/v1/follows`)

## 📊 Data Models

### Enhanced Models
- **Brand** - Watercolor paint manufacturers (Winsor & Newton, Daniel Smith, etc.)
- **Pigment** - Detailed pigment information with mixing properties and advice
- **Paint** - Individual paint products with brand associations
- **Palette** - User-created color collections
- **User** - Artist accounts with authentication

### Key Relationships
- Brands → Paints (one-to-many)
- Paints → Pigments (many-to-many) 
- Users → Palettes (one-to-many)
- Palettes → Paints (many-to-many)
- Pigments → ColorFamilies (many-to-many)

## 🎯 Use Cases

### For Watercolor Artists
- Build custom palettes with expert guidance
- Get recommendations for missing colors
- Learn about pigment properties and mixing behavior
- Discover new paints from different brands
- Access curated palettes from professional artists

### For Art Educators
- Teach students about pigment properties
- Recommend standard palette configurations
- Share expert mixing advice and compatibility guidance

### For Paint Retailers
- Showcase product catalogs with detailed specifications
- Provide customers with mixing recommendations
- Feature popular palette combinations

## 🔧 Technical Details

### Database Schema
- PostgreSQL with comprehensive indexing
- Foreign key relationships maintaining data integrity
- Optimized queries for recommendation algorithms

### API Design
- RESTful endpoints with consistent JSON responses
- Comprehensive error handling and validation
- Authentication using secure token-based system
- Detailed API documentation with example responses

### Performance
- Efficient database queries with eager loading
- Optimized recommendation algorithms
- Proper indexing for fast search and filtering

## 📚 Documentation

- [API Enhancements Guide](API_ENHANCEMENTS.md) - Detailed feature documentation
- [Testing Guide](TESTING_GUIDE.md) - Manual testing instructions
- [Swagger Documentation](swagger/v1/swagger.yaml) - Interactive API explorer

## 🎨 Perfect for Watercolor Enthusiasts

Whether you're a beginner learning about color mixing or a professional artist looking for the perfect palette, the Pigment API provides the tools and knowledge you need to make informed decisions about your watercolor paints. 
