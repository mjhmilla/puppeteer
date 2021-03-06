/* 
 * Puppeteer - A Motion Capture Mapping Tool
 * Copyright (c) 2013-2016 Martin Felis <martin.felis@iwr.uni-heidelberg.de>.
 * All rights reserved.
 * 
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 * 
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 * IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
 * CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
 * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE* 
 */

#ifndef _MESHVBO_H
#define _MESHVBO_H

#include <vector>
#include <iostream>
#include <cstddef>
#include <limits>

#include "SimpleMath/SimpleMath.h"
#include "SimpleMath/SimpleMathGL.h"

typedef ptrdiff_t GLsizeiptr;

struct MaterialLib {
};

struct Material {
	std::string name;
	Vector3f color_ambient;
	Vector3f color_diffuse;
	Vector3f color_specular;
	float transparency;
	int illum;

	std::string map_ambient;
	std::string map_diffuse;
	std::string map_specular;
	std::string map_bump;

	unsigned int texture_ambient;
	unsigned int texture_diffuse;
	unsigned int texture_specular;
	unsigned int texture_bump;
};

/** \brief Loads Wavefront VBO files and prepares them for use in
 * OpenGL.
 */
struct MeshVBO {
	MeshVBO() :
		vbo_id(0),
		started(false),
		smooth_shading(true),
		buffer_size (0),
		normal_offset (0),
		color_offset (0),
		bbox_min (std::numeric_limits<float>::max(),
				std::numeric_limits<float>::max(),
				std::numeric_limits<float>::max()),
		bbox_max (-std::numeric_limits<float>::max(),
				-std::numeric_limits<float>::max(),
				-std::numeric_limits<float>::max())
	{}
	MeshVBO (const MeshVBO& mesh);
	MeshVBO& operator= (const MeshVBO& mesh);
	~MeshVBO() {
		if (vbo_id != 0) {
			delete_vbo();
		}
	}

	void begin();
	void end();

	void addVertex4f (float x, float y, float z, float w);
	void addVertex4fv (const float vert[4]);
	void addVertex3f (float x, float y, float z);
	void addVertex3fv (const float vert[3]);
	void addNormal (float x, float y, float z);
	void addNormalfv (const float norm[3]);
	void addColor4f (float x, float y, float z, float a);
	void addColor4fv (const float color[4]);
	void addColor3f (float x, float y, float z);
	void addColor3fv (const float color[3]);

	unsigned int generate_vbo();
	void delete_vbo();
	void debug_vbo();

	void draw(unsigned int mode);

	unsigned int vbo_id;
	bool started;
	bool smooth_shading;

	GLsizeiptr buffer_size;
	GLsizeiptr normal_offset;
	GLsizeiptr color_offset;
	
	Vector3f bbox_min;
	Vector3f bbox_max;

	std::vector<Vector4f> vertices;
	std::vector<Vector3f> normals;
	std::vector<Vector4f> colors;

	void join (const Matrix44f &transformation, const MeshVBO &other);
	void center ();
	bool loadOBJ (const char* filename, const char* object_name = NULL, bool strict = false);
};

MeshVBO CreateUVSphere (unsigned int rows, unsigned int segments);

MeshVBO CreateCuboid (float width, float height, float depth);

MeshVBO CreateGrid (unsigned int cells_u, unsigned int cells_v, const Vector3f &normal, Vector3f color1, Vector3f color2);

inline MeshVBO CreateCube () {
	return CreateCuboid (1.f, 1.f, 1.f);
}

MeshVBO CreateCylinder (unsigned int segments);

MeshVBO CreateCapsule (unsigned int rows, unsigned int segments, float length_z, float radius);

#endif
