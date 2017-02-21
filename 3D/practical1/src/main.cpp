#include "./../include/Viewer.hpp"
#include "../include/log.hpp"
#include "./../include/ShaderProgram.hpp"
#include "./../include/FrameRenderable.hpp"
#include "./../include/CubeRenderable.hpp"
#include "./../include/CylinderRenderable.hpp"
#include "./../include/ConeRenderable.hpp"
#include "./../include/MeshRenderable.hpp"
#include "./../include/ToreRenderable.hpp"
#include "./../include/Io.hpp"
#include <GL/glut.h>
#include <iostream>


static void initialize_scene (Viewer& viewer)
{
std::string vShader = "./../shaders/defaultVertex.glsl";
std::string fShader = "./../shaders/defaultFragment.glsl";
ShaderProgramPtr defaultShader = std::make_shared<ShaderProgram>(vShader, fShader);
viewer.addShaderProgram(defaultShader);
FrameRenderablePtr frame = std::make_shared<FrameRenderable>(defaultShader);
viewer.addRenderable(frame);
}

  static void remplit_scene(Viewer& viewer)
  {
std::string vShader = "./../shaders/flatVertex.glsl";
 std::string fShader = "./../shaders/flatFragment.glsl";
ShaderProgramPtr flatShader = std::make_shared<ShaderProgram>(vShader, fShader);

//CubeRenderablePtr cube = std::make_shared<CubeRenderable>(flatShader);
//viewer.addRenderable(cube);

 //glm::vec3 pt2=glm::vec3(0,0,0);
 //glm::vec3 pt3=glm::vec3(0,0,3);
    //CylinderRenderablePtr cyl=std::make_shared<CylinderRenderable>(flatShader,pt2,pt3,1);
    //viewer.addRenderable(cyl);
ToreRenderablePtr tor=std::make_shared<ToreRenderable>(flatShader,viewer);
   viewer.addRenderable(tor);

//ConeRenderablePtr cyl=std::make_shared<ConeRenderable>(flatShader);
//viewer.addRenderable(cyl);

//MeshRenderablePtr obj=std::make_shared<MeshRenderable>(flatShader,"Suzanne.obj");
//viewer.addRenderable(obj);
//Add the shader to the Viewer
viewer.addShaderProgram(flatShader);

FrameRenderablePtr frame = std::make_shared<FrameRenderable>(flatShader);
viewer.addRenderable(frame);
//Renderable instanciation
//...


  }

int main()
{
int width=1280; //Width of the window (pixel)
int height=720; //Height of the window (pixel)
Viewer viewer(width, height);
//initialize_scene(viewer);
remplit_scene(viewer);

while (viewer.isRunning()) {
    viewer.handleEvent();
    viewer.draw();
    viewer.display();
}
    return EXIT_SUCCESS;
}
