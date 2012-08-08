varying vec4 vertColor;

uniform mat3 transformation;

void main() {
	vertColor = gl_Color;
	
	gl_Position = gl_ModelViewProjectionMatrix * vec4((transformation * vec3(gl_Vertex.xy, 1.0)).xy, 0.0, 1.0);
	
	gl_TexCoord[0] = gl_MultiTexCoord0;
}