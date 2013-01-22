
// ink shader for maps
// to use, add "cel" to shaderlist.txt
// add a "_celshader" key to worldspawn entity with a value of "cel/ink"

textures/cel/ink
{
	qer_editorimage gfx/colors/black.tga
	
	q3map_notjunc
	q3map_nonplanar
	q3map_bounce 0.0
	q3map_shadeangle 120
	q3map_texturesize 1 1
	q3map_invert
	q3map_offset -2.0
	
	surfaceparm nolightmap
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm nomarks
	
	sort 16
	
	{
		map gfx/colors/black.tga
		rgbGen identity
	}
}

//
// q3map debug shaders - ydnar
//

// enable with -debugsurfaces switch
debugsurfaces
{
	surfaceparm trans
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm noimpact
	surfaceparm nomarks
	sort opaque
	{
		map *default
		rgbGen vertex
	}
}

// enable with -debugportals switch
debugportals
{
	surfaceparm trans
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm noimpact
	surfaceparm nomarks
	sort additive
	cull none
	{
		map $whiteimage
		blendFunc GL_SRC_ALPHA GL_ONE
		rgbGen vertex
	}
}

