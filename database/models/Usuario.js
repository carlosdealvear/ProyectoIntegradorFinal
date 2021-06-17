module.exports = (sequelize, dataTypes) => {
    let alias = 'Usuario';
    let cols = {
        id : {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true 
        },
        nombre: {
            type : dataTypes.STRING
        },
        apellido: {
            type: dataTypes.STRING
        },
        fecha_de_nacimiento: {
            type: dataTypes.DATE
        },
        email: {
            type: dataTypes.STRING
        },
        telefono: {
            type: dataTypes.STRING
        },
        password : {
            type: dataTypes.STRING
        }
 
        
    }
    let config = {
        tableName : 'usuarios',
        timestamps: true,
        underscored: true,
    }
    const Usuario = sequelize.define(alias, cols, config);
    /*Categoria.associate = function(models){
        Categoria.hasMany(models.Producto,{
            as: 'productos',
            foreignKey: 'producto_id'
        })
    }*/
    return Usuario;
}

