const productos = {

    productos: [
    
        {
            id: "1",
            nombre: "Motomel Pitbull 200",
            precio: "306.678",
            descripcion: "Cuatriciclo ideal para jovenes. Apto para cualquier tipo de superficie.",
            imagen: "https://http2.mlstatic.com/D_NQ_NP_2X_684728-MLA40811951173_022020-F.webp"      
        },
        {
            id: "2",
            nombre: "Zanella G-Force 250 Parrillero",
            precio: "630.999",
            descripcion: "Cuatriciclo familiar para usar en la playa. Mucha potencia y comodidad.",
            imagen: "https://http2.mlstatic.com/D_NQ_NP_2X_683323-MLA44762443092_012021-F.webp"      
        },
        {
            id: "3",
            nombre: "UTV Gamma Z-Force 550",
            precio: "987.990",
            descripcion: "UTV esencial para unas vacaciones en familia. Todo terreno y con mucha potencia.",
            imagen: "http://www.gammacuatriciclos.com.ar/admin2.0/portada/ZFORCE_625_G.png"      
        },
        {
            id: "4",
            nombre: "UTV Maverick Polaris Rzr",
            precio: "870.987",
            descripcion: "Disfruta de la velocidad con este Polaris Rzr. Unico en su clase.",
            imagen: "https://http2.mlstatic.com/D_NQ_NP_2X_710180-MLA43176542858_082020-F.webp"      
        },
        {
            id: "5",
            nombre: "Honda CRF 2021",
            precio: "690.890",
            descripcion: "Si queres velocidad esta es la moto ideal.",
            imagen: "https://www.moto1pro.com/sites/default/files/fotosprincipales/01_304137_2021_honda_crf450r.jpg"      
        },
        {
            id: "6",
            nombre: "Beta Racing 250X",
            precio: "247.450",
            descripcion: "Moto de carreras para que puedas competir a otra velocidad",
            imagen: "https://www.betamotor.com/wp-content/uploads/2019/05/RR4T_350_my21_01-1030x623.jpg"      
        },
        {
            id: "7",
            nombre: "Yamaha Raptor 700",
            precio: "787.950",
            descripcion: "Cuatriciclo diseñado para disfrutar de los medanos",
            imagen: "https://pictures.topspeed.com/IMG/crop_webp/200707/2008-yamaha-raptor-700r-11_800x0.webp"      
        },
        {
            id: "8",
            nombre: "Yamaha YZF R1 M",
            precio: "937.945",
            descripcion: "La mejor moto para disfrutar de la velocidad en la calle",
            imagen: "https://www.motofichas.com/images/phocagallery/Yamaha_Motor_Corporation/yzf-r1-m-2020/01-yamaha-yzf-r1-2020-perfil-azul.jpg"      
        },

      ],
      porId: function (id) {
        let respuesta = []
        for (let i = 0; i < productos.productos.length; i++) {
            if (productos.productos[i].id == id) {
                respuesta.push(productos.productos[i])
            }
        }
        
        return respuesta        
    },
    /*porGenero: function (genero) {
        let respuesta = []
        for (let i = 0; i < bandas.bandas.length; i++) {
            if (bandas.bandas[i].genero == genero.toLowerCase()) {
                respuesta.push(bandas.bandas[i])
            }
        }
    
        return respuesta
        
    },
    }*/
    }    
    
    
    
    module.exports = productos