module.exports = (sequelize, dataTypes) => {
    let alias = 'Comentario';
    let cols = {
        id : {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true 
        },
        texto_comentario: {
            type: dataTypes.STRING
        },
        fecha_creacion: {
            type: dataTypes.DATE
        },
        usuario_id : {
            type: dataTypes.INTEGER
        },
        producto_id : {
            type: dataTypes.INTEGER
        },
 
        
    }
    let config = {
        tableName : 'comentarios',
        timestamps: true,
        underscored: true,
    }
    const Comentario = sequelize.define(alias, cols, config);
    Comentario.associate = function(models){
        Comentario.belongsTo(models.Producto,{
            as: 'productos',
            foreignKey: 'producto_id'
        });
        Comentario.belongsTo(models.Usuario,{
            as: 'usuarios',
            foreignKey: 'usuario_id',
        })}
    
    return Comentario;
}