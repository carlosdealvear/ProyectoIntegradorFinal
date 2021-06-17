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
            

        
    }
    let config = {
        tableName : 'categorias',
        timestamps: false,
        onderscore: true
    }
    const Categoria = sequelize.define(alias, cols, config);
    /*Categoria.associate = function(models){
        Categoria.hasMany(models.Producto,{
            as: 'productos',
            foreignKey: 'producto_id'
        })
    }*/
    return Categoria;
}