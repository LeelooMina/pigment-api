
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



ColorFamily.create(name: "Red", swatch_url: "#ff0000")


ColorFamily.create(name: "Orange", swatch_url: "#ffa500")
ColorFamily.create(name: "Yellow", swatch_url: "#ffff00")

ColorFamily.create(name: "Green", swatch_url: "#008000")

ColorFamily.create(name: "Blue", swatch_url: "#0000ff")

ColorFamily.create(name: "Violet", swatch_url: "#800080")

ColorFamily.create(name: "Brown", swatch_url: "#a52a2a")
ColorFamily.create(name: "Gray", swatch_url: "#808080")

ColorFamily.create(name: "Black", swatch_url: "#000000")
ColorFamily.create(name: "White", swatch_url: "#ffffff")




yellow_family = ColorFamily.find_by(name: "Yellow")

orange_family = ColorFamily.find_by(name: "Orange")


red_family = ColorFamily.find_by(name: "Red")


blue_family = ColorFamily.find_by(name: "Blue")
violet_family = ColorFamily.find_by(name: "Violet")

green_family = ColorFamily.find_by(name: "Green")
brown_family = ColorFamily.find_by(name: "Brown")
white_family = ColorFamily.find_by(name: "White")
gray_family = ColorFamily.find_by(name: "Gray")

black_family = ColorFamily.find_by(name: "Black")

User.create(
    first_name: "Crystal",
    last_name: "Campbell",
    email: "blankpage@gmail.com",
    username: "Leeloo",
    phone: "1234567890",
    password: "password",
    password_confirmation: "password"
)


# Create 50 posts with random data
50.times do
  Post.create(
    user_id: rand(1..10),
    title: Faker::Lorem.sentence(word_count: 5),
    content: Faker::Lorem.paragraph,
    img_url: Faker::LoremFlickr.image(size: "300x300"),
    username: Faker::Internet.username(specifier: 4..8)
  )
end





# Pigments

# Green-Yellow
Paint.create(pigment: "Hansa Yellow Light", name: "PY3", transparent: "Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: green_family.id)

Paint.create(pigment: "Cadmium Lemon", name: "PY35", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: green_family.id)

Paint.create(pigment: "Copper Azomethine Green", name: "PY129", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: green_family.id)

Paint.create(pigment: "Benzimidazolone Yellow [Lemon]", name: "PY175", transparent: "Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: green_family.id)

Paint.create(pigment: "Bismuth Yellow", name: "PY184", transparent: "Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: green_family.id)

Paint.create(pigment: "Nickel Azomethine Green", name: "PG10", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: green_family.id)

# Yellow 

Paint.create(pigment: "Arylide Yellow G", name: "PY1", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: yellow_family.id)
Paint.create(pigment: "Chrome Yellow", name: "PY34", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: yellow_family.id)
Paint.create(pigment: "Cadmium Yellow Pale", name: "PY35", transparent: "Opaque", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: yellow_family.id)
Paint.create(pigment: "Aureolin", name: "PY40", transparent: "Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: yellow_family.id)
Paint.create(pigment: "Nickel Titanate Yellow", name: "PY53", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: yellow_family.id)
Paint.create(pigment: "Hansa Brilliant Yellow", name: "PY74", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: yellow_family.id)
Paint.create(pigment: "Hansa Yellow Medium", name: "PY97", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: yellow_family.id)
Paint.create(pigment: "Copper Azomethine Green", name: "PY117", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Medium", granulating: "No", available: true, color_family_id: yellow_family.id)
Paint.create(pigment: "Benzimidazolone Yellow [Middle]", name: "PY120", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: yellow_family.id)
Paint.create(pigment: "Copper Azomethine Green", name: "PY129", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Medium", granulating: "No", available: true, color_family_id: yellow_family.id)
Paint.create(pigment: "Quinophthalone Yellow", name: "PY138", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: yellow_family.id)
Paint.create(pigment: "Benzimidazolone Yellow [Pale]", name: "PY151", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: yellow_family.id)
Paint.create(pigment: "Benzimidazolone Yellow [Pale]", name: "PY154", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: yellow_family.id)
Paint.create(pigment: "Zirconium Praesodymium Silicate", name: "PY159", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: yellow_family.id)


# Orange Yellow
Paint.create(pigment: "Hansa Yellow Deep", name: "PY65", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: orange_family.id)
Paint.create(pigment: "Diarylide Yellow HR", name: "PY83", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: orange_family.id)
Paint.create(pigment: "Anthrapyrimidine Yellow", name: "PY108", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: orange_family.id)
Paint.create(pigment: "Nickel Azomethine Yellow", name: "PY150", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: orange_family.id)
Paint.create(pigment: "Nickel Dioxine Yellow", name: "PY153", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: orange_family.id)

# Yellow Orange

Paint.create(pigment: "Cadmium Yellow Orange", name: "PO20", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: yellow_family.id)
Paint.create(pigment: "Cadmium Yellow Deep", name: "PY35", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: yellow_family.id)
Paint.create(pigment: "Isoindolinone Yellow R", name: "PY110", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: yellow_family.id)
Paint.create(pigment: "Isoindoline Yellow", name: "PY139", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: yellow_family.id)
Paint.create(pigment: "Indian Yellow", name: "PY153+PO62", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: yellow_family.id)

# Orange 

Paint.create(pigment: "Cadmium Orange", name: "PO20", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: orange_family.id)
Paint.create(pigment: "Benzimidazolone Orange", name: "PO62", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: orange_family.id)

# Red-orange
Paint.create(pigment: "Beta Naphthol Scarlet", name: "PO5", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: red_family.id)
Paint.create(pigment: "Cadmium Red Orange", name: "PO20", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: orange_family.id)
Paint.create(pigment: "Disazopyrazolone Orange", name: "PO34", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: orange_family.id)
Paint.create(pigment: "Benzimidazolone Scarlet", name: "PO36", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: red_family.id)
Paint.create(pigment: "Perinone Orange", name: "PO43", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: orange_family.id)
Paint.create(pigment: "Pyrazoloquinazolone Orange", name: "PO67", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: orange_family.id)
Paint.create(pigment: "Isoindoline Orange", name: "PO69", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: orange_family.id)
Paint.create(pigment: "Pyrrole Orange", name: "PO71", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: orange_family.id)
Paint.create(pigment: "Pyrrole Orange", name: "PO73", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: orange_family.id)
Paint.create(pigment: "Cadmium Red Orange", name: "PR108", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: orange_family.id)

# Orange-red

Paint.create(pigment: "Cadmium Scarlet", name: "PR108", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: red_family.id)
Paint.create(pigment: "Naphthol AS-D Red", name: "PR112", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: red_family.id)



Paint.create(pigment: "Pyrrole Scarlet", name: "PR255", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: 1)



# Red


Paint.create(pigment: "Cadmium Red*", name: "PR108", transparent: "Opaque", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: red_family.id)
Paint.create(pigment: "Perylene Scarlet*", name: "PR149", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: red_family.id)
Paint.create(pigment: "Naphthol AS Red*", name: "PR170", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Moderate", granulating: "No", available: true, color_family_id: red_family.id)
Paint.create(pigment: "Quinacridone Red", name: "PR209", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: red_family.id)
Paint.create(pigment: "Disazo Condensation Red*", name: "PR214", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: red_family.id)
Paint.create(pigment: "Pyrrole Red", name: "PR254", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: red_family.id)

Paint.create(pigment: "Isoindoline Scarlet*", name: "PR260", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: red_family.id)



# Deep Red
Paint.create(pigment: "Naphthol AS Carmine*", name: "PR23", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: red_family.id)
Paint.create(pigment: "Alizarin Crimson", name: "PR83", transparent: "Semi-Transparent", lightfast: "ASTM III", staining: "High", granulating: "No", available: true, color_family_id: red_family.id)
Paint.create(pigment: "Cadmium Red Deep*", name: "PR108", transparent: "Opaque", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: red_family.id)
Paint.create(pigment: "Naphthol AS Red*", name: "PR170", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: red_family.id)
Paint.create(pigment: "Benzimidazolone Carmine", name: "PR176", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: red_family.id)
Paint.create(pigment: "Anthraquinone Red", name: "PR177", transparent: "Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: red_family.id)
Paint.create(pigment: "Perylene Red", name: "PR178", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: red_family.id)
Paint.create(pigment: "Perylene Maroon", name: "PR179", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: red_family.id)
Paint.create(pigment: "Pyranthrone Red Deep", name: "PR216", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: red_family.id)
Paint.create(pigment: "Pyrrole Crimson", name: "PR264", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: red_family.id)
Paint.create(pigment: "Quinacridone Red", name: "PV19", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: red_family.id)
Paint.create(pigment: "Perylene Violet", name: "PV29", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: red_family.id)



# Violet Red (Magenta)

Paint.create(pigment: "Quinacridone Magenta", name: "PR122", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: violet_family.id)
Paint.create(pigment: "Benzimidazolone Maroon", name: "PR171", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: violet_family.id)
Paint.create(pigment: "Quinacridone Magenta", name: "PR202", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: violet_family.id)
Paint.create(pigment: "Quinacridone Violet", name: "PV19", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: violet_family.id)
Paint.create(pigment: "Quinacridone Rose", name: "PV19", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: violet_family.id)
Paint.create(pigment: "Benzimidazolone Bordeaux", name: "PV32", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: violet_family.id)
Paint.create(pigment: "Quinacridone Pink", name: "PV42", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: violet_family.id)

# Red Violet

Paint.create(pigment: "Cobalt Violet Deep", name: "PV14", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: violet_family.id)
Paint.create(pigment: "Ultramarine Red", name: "PV15", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: violet_family.id)
Paint.create(pigment: "Manganese Violet", name: "PV16", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: violet_family.id)
Paint.create(pigment: "Cobalt Violet Light", name: "PV49", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: violet_family.id)
Paint.create(pigment: "Ultramarine Pink", name: "PR259", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: violet_family.id)
Paint.create(pigment: "Cobalt Violet Deep", name: "PV14", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: violet_family.id)
Paint.create(pigment: "Ultramarine Violet [RS]", name: "PV15", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: violet_family.id)

Paint.create(pigment: "PV23", name: "Dioxazine Violet", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: violet_family.id)

Paint.create(pigment: "Indanthrone Blue", name: "PB60", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "Yes", available: true, color_family_id: violet_family.id)





# Violet Blue

Paint.create(pigment: "PB29", name: "Ultramarine Blue", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: blue_family.id)
Paint.create(pigment: "PB29", name: "French Ultramarine", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: blue_family.id)
Paint.create(pigment: "PB29", name: "Ultramarine Blue Deep", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: blue_family.id)
Paint.create(pigment: "PB29", name: "Ultramarine Blue GS", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: blue_family.id)
Paint.create(pigment: "PB72", name: "Cobalt Blue Deep", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: blue_family.id)
Paint.create(pigment: "PB73", name: "Cobalt Blue Deep", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: blue_family.id)
Paint.create(pigment: "PB74", name: "Cobalt Blue Deep", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: blue_family.id)

# Blue

Paint.create(pigment: "PB15:1", name: "Phthalocyanine Blue RS", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: blue_family.id)
Paint.create(pigment: "PB15:3", name: "Phthalocyanine Blue", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: blue_family.id)
Paint.create(pigment: "PB15:3", name: "Phthalocyanine Blue GS", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: blue_family.id)
Paint.create(pigment: "PB27", name: "Iron [Prussian] Blue", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: blue_family.id)
Paint.create(pigment: "PB28", name: "Cobalt Blue", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: blue_family.id)
Paint.create(pigment: "PB35", name: "Cerulean Blue RS", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: blue_family.id)



# Green Blue

Paint.create(pigment: "Phthalocyanine Green + Phthalocyanine Blue", name: "PB15:3+PG7", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "Yes", available: true, color_family_id: blue_family.id)
Paint.create(pigment: "Phthalocyanine Blue Green Shade", name: "PB16", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: blue_family.id)
Paint.create(pigment: "Phthalocyanine Cyan", name: "PB17", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: blue_family.id)
Paint.create(pigment: "Manganese Blue Hue", name: "PB33", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "Yes", available: true, color_family_id: blue_family.id)
Paint.create(pigment: "Cerulean Blue Green Shade", name: "PB36", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: blue_family.id)
Paint.create(pigment: "Cobalt Turquoise", name: "PB36", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: blue_family.id)
Paint.create(pigment: "Cobalt Teal Blue", name: "PG50", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: blue_family.id)

# Blue Green
Paint.create(pigment: "Phthalocyanine Green", name: "PG7", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: green_family.id)
Paint.create(pigment: "Viridian", name: "PG18", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: green_family.id)
Paint.create(pigment: "Cobalt Zinc Oxide Green", name: "PG19", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: green_family.id)
Paint.create(pigment: "Cobalt Chromate Green", name: "PG26", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: green_family.id)
Paint.create(pigment: "Cobalt Titanate [BS]", name: "PG50", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: green_family.id)


# Green
Paint.create(pigment: "Phthalocyanine Green + Arylide Yellow", name: "PG7+PY3", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: green_family.id)
Paint.create(pigment: "Phthalocyanine Green Yellow Shade", name: "PG36", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: green_family.id)

Paint.create(pigment: "Cobalt Titanate [YS]", name: "PG50", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: green_family.id)

# Yellow-Green

Paint.create(pigment: "Hooker's Green", name: "PG7+PY150", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: green_family.id)
Paint.create(pigment: "Terre Verte", name: "PG23", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "Yes", available: true, color_family_id: green_family.id)
Paint.create(pigment: "Phthalo Yellow Green", name: "PG7+PY3", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "High", granulating: "No", available: true, color_family_id: green_family.id)
Paint.create(pigment: "Hooker's Green", name: "PG8", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: green_family.id)
Paint.create(pigment: "Chromium Oxide Green", name: "PG17", transparent: "Opaque", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: green_family.id)
Paint.create(pigment: "Hooker's Green", name: "PG36+PO49", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: 3)
Paint.create(pigment: "Permanent Green Light", name: "PG36+PY175", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: green_family.id)
Paint.create(pigment: "Sap Green", name: "PG7+PO49", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: green_family.id)
Paint.create(pigment: "Green Blue", name: "PB15:3+PG7", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "Yes", available: true, color_family_id: green_family.id)

# Earth Yellow

Paint.create(pigment: "Raw Sienna", name: "PBr7", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: brown_family.id)
Paint.create(pigment: "Chrome Titanate Yellow", name: "PBr24", transparent: "Opaque", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: brown_family.id)
Paint.create(pigment: "Quinacridone Gold", name: "PO49", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: brown_family.id)

Paint.create(pigment: "Gold Ochre", name: "PY42", transparent: "Semi-Transparent", lightfast: "ASTM III", staining: "Low", granulating: "Yes", available: true, color_family_id: brown_family.id)


Paint.create(pigment: "Yellow Ochre", name: "PY43", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "Yes", available: true, color_family_id: brown_family.id)

# Eath Orange

Paint.create(pigment: "Burnt Sienna", name: "PBr7", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: brown_family.id)

Paint.create(pigment: "Burnt Sienna", name: "PR101", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: brown_family.id)

Paint.create(pigment: "Magnesium Ferrite", name: "PBr11", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: brown_family.id)

Paint.create(pigment: "Quinacridone Orange", name: "PO48", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: brown_family.id)

Paint.create(pigment: "Quinacridone Sienna", name: "PO49+PR209", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: brown_family.id)

Paint.create(pigment: "Burnt Yellow Ochre", name: "PR102", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: brown_family.id)

Paint.create(pigment: "Zinc Magnesium Ferrite", name: "PY119", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: brown_family.id)

# Earth Red

Paint.create(pigment: "Methine Nickel Complex", name: "PO65", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: brown_family.id)
Paint.create(pigment: "Benzimidazolone Red", name: "PR175", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: brown_family.id)
Paint.create(pigment: "Quinacridone Maroon", name: "PR206", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: brown_family.id)
Paint.create(pigment: "Chrome Aluminum Stannate", name: "PR233", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: brown_family.id)

# Brown 
Paint.create(pigment: "Raw Umber", name: "PBr7", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "Yes", available: true, color_family_id: brown_family.id)
Paint.create(pigment: "Burnt Umber", name: "PBr7", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "Yes", available: true, color_family_id: brown_family.id)
Paint.create(pigment: "Benzimidazolone Brown", name: "PBr25", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: brown_family.id)
Paint.create(pigment: "Zinc Iron Chromite", name: "PBr33", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: brown_family.id)
Paint.create(pigment: "Disazo Condensation Brown", name: "PBr41", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: brown_family.id)
Paint.create(pigment: "Transparent Brown Oxide", name: "PR101", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: brown_family.id)
Paint.create(pigment: "Caput Mortuum", name: "PR101", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: brown_family.id)

# White
Paint.create(pigment: "Zinc White", name: "PW4", transparent: "Opaque", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: white_family.id)
Paint.create(pigment: "Titanium White", name: "PW6", transparent: "Opaque", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: white_family.id)


# Gray
Paint.create(pigment: "Powdered Graphite", name: "PBk10", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: gray_family.id)
Paint.create(pigment: "Davy's Gray", name: "PBk19+PW4+PBk6", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: gray_family.id)

# Dark Shade
Paint.create(pigment: "Indigo", name: "PBk6+PB60", transparent: "Semi-Transparent", lightfast: "ASTM II", staining: "Low", granulating: "No", available: true, color_family_id: gray_family.id)
Paint.create(pigment: "Neutral Tint", name: "PBk6+PB15+PV19", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: gray_family.id)
Paint.create(pigment: "Payne's Gray", name: "PBk6+PB29", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: gray_family.id)
Paint.create(pigment: "Sepia", name: "PBr7+PBk7", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true, color_family_id: gray_family.id)
Paint.create(pigment: "Perylene Black", name: "PBk31", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true,  color_family_id: gray_family.id)

# Black
Paint.create(pigment: "Lamp Black", name: "PBk6", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true,  color_family_id: black_family.id)
Paint.create(pigment: "Furnace Black", name: "PBk7", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true,  color_family_id: black_family.id)
Paint.create(pigment: "Vine Black", name: "PBk8", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true,  color_family_id: black_family.id)


Paint.create(pigment: "PBk9", name: "Ivory Black", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "No", available: true,  color_family_id: black_family.id)

Paint.create(pigment: "PBk11", name: "Black Iron Oxide", transparent: "Semi-Transparent", lightfast: "ASTM I", staining: "Low", granulating: "Yes", available: true, color_family_id: black_family.id)


Palette.create(name: "Summer Sunset", description: "A warm, vibrant palette inspired by summer sunsets", user_id: 1)
Palette.create(name: "Pastel Dreams", description: "A soft and dreamy palette featuring pastel colors", user_id: 1)
Palette.create(name: "Midnight Magic", description: "A dark and moody palette featuring rich jewel tones", user_id: 1)
Palette.create(name: "Autumn Leaves", description: "A cozy palette inspired by the colors of autumn leaves", user_id: 1)
Palette.create(name: "Ocean Breeze", description: "A cool and refreshing palette inspired by the ocean", user_id: 1)
Palette.create(name: "Ocean Breeze", description: "A cool and refreshing palette inspired by the ocean", user_id: 1)



Palette.all[0].paints << Paint.all[0..3]
Palette.all[1].paints << Paint.all[4..7]
Palette.all[2].paints << Paint.all[8..11]
Palette.all[3].paints << Paint.all[0..10]
Palette.all[4].paints << Paint.all[1..11]
Palette.all[5].paints << Paint.all[0..5]
