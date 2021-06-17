module.exports = (sequelize, dataTypes) => {
    let alias = 'Comentario';
    let cols = {
        id : {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true 
        },
        nombre: {
            type : dataTypes.STRING
        },
        texto_comentario: {
            type: dataTypes.STRING
        },
        fecha_creacion: {
            type: dataTypes.DATE
        },
 
        
    }
    let config = {
        tableName : 'comentarios',
        timestamps: true,
        underscored: true,
    }
    const Comentario = sequelize.define(alias, cols, config);
    /*Categoria.associate = function(models){
        Categoria.hasMany(models.Producto,{
            as: 'productos',
            foreignKey: 'producto_id'
        })}*/
    
    return Comentario;
}