module.exports = (sequelize, dataTypes) => {
    let alias = 'Producto';
    let cols = {
        id : {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true 
        },
        nombre: {
            type : dataTypes.STRING
        },
        precio: {
            type : dataTypes.DECIMAL
        },
        fecha_de_publicacion: {
            type : dataTypes.DATE
        },
        url : {
            type: dataTypes.STRING
        }
        

        
    }
    let config = {
        tableName : 'productos',
        timestamps: false,
        underscored: true
    }
    const Producto = sequelize.define(alias, cols, config);
    /*Producto.associate = function(models){
        Producto.belongsTo(models.Categoria, {
            as : 'categorias',
            foreignKey: 'categoria_id' 
        })}*/

    return Producto;
}
   