# 📋 ESTÁNDAR DE DISEÑO PARA REPORTES - SIPREST

## 🎯 Objetivo
Establecer un diseño consistente y profesional para todos los reportes del sistema SIPREST, con elementos redondeados, gradientes modernos y una experiencia de usuario mejorada.

## 🎨 Características del Estándar

### 1. **Archivo CSS Estándar**
- **Ubicación**: `vistas/assets/css/sistema-estandar.css`
- **Incluir en todos los reportes**: `<link rel="stylesheet" href="vistas/assets/css/sistema-estandar.css">`

### 2. **Elementos Redondeados**
- **Botones**: Border-radius de 12px con efectos hover
- **Inputs**: Border-radius de 12px con animaciones de focus
- **Cards**: Border-radius de 16px con sombras suaves
- **Tablas**: Esquinas redondeadas con overflow hidden

### 3. **Colores y Gradientes**
- **Primario**: Azul (#007bff) con gradiente
- **Éxito**: Verde (#28a745) con gradiente
- **Advertencia**: Amarillo (#ffc107) con gradiente
- **Peligro**: Rojo (#dc3545) con gradiente
- **Información**: Cian (#17a2b8) con gradiente

## 🎨 Colores por Tipo de Reporte

| Tipo de Reporte | Color Principal | Clase CSS |
|------------------|-----------------|-----------|
| Préstamos por Cliente | Azul | `primary` |
| Cuotas Pagadas | Azul | `primary` |
| Recuperación | Verde | `success` |
| Mora | Amarillo | `warning` |
| Caja | Cian | `info` |
| Anulaciones | Rojo | `danger` |

## 📱 Responsividad

- **Móviles**: Filtros en columnas completas
- **Tablets**: Filtros en 2 columnas
- **Desktop**: Filtros en 4 columnas
- **Tablas**: Responsive con scroll horizontal en móviles

## 🔧 Funcionalidades Estándar

### 1. **Filtros**
- Fechas inicial y final
- Selector de moneda
- Botón buscar
- Botón limpiar filtros

### 2. **Tabla**
- Ordenamiento por columnas
- Búsqueda global
- Paginación
- Exportación (Excel, PDF, Imprimir)
- Selección de filas

### 3. **Validaciones**
- Fechas requeridas
- Fecha inicial no mayor que final
- Mensajes de error amigables

## 📋 Reportes Actualizados

✅ **Reporte de Préstamos por Cliente** - Completamente actualizado
✅ **Reporte de Recuperación** - Completamente actualizado  
✅ **Reporte de Cuotas Pagadas** - Completamente actualizado
✅ **Reporte de Mora** - Completamente actualizado

## 🚀 Próximos Pasos

1. Aplicar estándar a reportes restantes
2. Actualizar formularios principales
3. Estandarizar modales y popups
4. Implementar animaciones adicionales

---

**Nota**: Este estándar garantiza una experiencia de usuario consistente y profesional en todo el sistema SIPREST.
