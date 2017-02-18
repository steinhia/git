#version 400
uniform mat4 projMat, viewMat, modelMat;
in vec3 vPosition;
in vec4 vColor;

// design choice: colors are always vec4
out vec4 fragmentColor;

void main()
{
    // Transform coordinates from local space to clipped space
    gl_Position = projMat*viewMat*modelMat*vec4(vPosition, 1.0f);
    //fragmentColor = vec4(1,0,0,1); // RGBA color defined in [0,1]
    fragmentColor = vColor;
}