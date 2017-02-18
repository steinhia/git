#include "./../include/ToreRenderable.hpp"
#include "./../include/CylinderRenderable.hpp"
#include "./../include/gl_helper.hpp"
#include "./../include/log.hpp"
#include "./../include/Utils.hpp"
#include "./../include/Viewer.hpp"
#include <math.h>
#include <glm/gtc/type_ptr.hpp>
#include <GL/glew.h>
#include "./../include/Io.hpp"
#include <iostream>

ToreRenderable::ToreRenderable(ShaderProgramPtr shaderProgram,Viewer& viewer) :
    Renderable(shaderProgram),
    m_pBuffer(0), m_cBuffer(0)
{


  int nb_faces_gd=6;
  double R=1;
  double k=2.0*M_PI*R/nb_faces_gd;
  double th_k=0;
  double th_kp1=k;
  glm::vec3 center=glm::vec3(0,0,0);
  glm::vec3 center1=glm::vec3(0,0,1);
  /*  glm::vec3 v1;
  glm::vec3 v2;
  glm::vec4 n;
  glm::vec3 pt1;
  glm::vec3 pt2;
  glm::vec3 pt3;
  glm::vec3 pt4;
  glm::vec3 pt5;
  glm::vec3 pt6;
  CylinderRenderablePtr cyl;
  CylinderRenderablePtr cyl2;
  CylinderRenderablePtr cyl3;
  CylinderRenderablePtr cyl4;
  CylinderRenderablePtr cyl5;
     for (unsigned int i=0; i<nb_faces; i++) {
       std::cout << cos(th_k)<<std::endl;
pt1=glm::vec3(glm::cos(th_k),sin(th_k),0);
pt2=glm::vec3(glm::cos(th_kp1),sin(th_kp1),0);
pt3=glm::vec3(glm::cos(th_kp1+k),sin(th_kp1+k),0);
pt4=glm::vec3(glm::cos(th_k+2*k),sin(th_k+2*k),0);
pt5=glm::vec3(glm::cos(th_kp1+3*k),sin(th_kp1+3*k),0);
pt6=glm::vec3(glm::cos(th_kp1+4*k),sin(th_kp1+4*k),0);
cyl=std::make_shared<CylinderRenderable>(shaderProgram,pt1,pt2,1);
viewer.addRenderable(cyl);
//cyl2=std::make_shared<CylinderRenderable>(shaderProgram,pt2,pt3,1);
//viewer.addRenderable(cyl2);
//cyl3=std::make_shared<CylinderRenderable>(shaderProgram,pt3,pt4,1);
//viewer.addRenderable(cyl3);
//cyl4=std::make_shared<CylinderRenderable>(shaderProgram,pt4,pt5,1);
//viewer.addRenderable(cyl4);
//cyl5=std::make_shared<CylinderRenderable>(shaderProgram,pt5,pt6,1);
//viewer.addRenderable(cyl5); */
  CylinderRenderablePtr cyl;
cyl=std::make_shared<CylinderRenderable>(shaderProgram,center,center1,1);
viewer.addRenderable(cyl);

/*   th_k=th_k+k;
    th_kp1+=k;
    }*/

    glGenBuffers(1, &m_pBuffer); //vertices
    glGenBuffers(1, &m_cBuffer); //colors

    glcheck(glBindBuffer(GL_ARRAY_BUFFER, m_pBuffer));
    glcheck(glBufferData(GL_ARRAY_BUFFER, m_positions.size()*sizeof(glm::vec3), m_positions.data(), GL_STATIC_DRAW));
    glcheck(glBindBuffer(GL_ARRAY_BUFFER, m_cBuffer));
    glcheck(glBufferData(GL_ARRAY_BUFFER, m_colors.size()*sizeof(glm::vec4), m_colors.data(), GL_STATIC_DRAW));

}

ToreRenderable::~ToreRenderable()
{
    glcheck(glDeleteBuffers(1, &m_pBuffer));
    glcheck(glDeleteBuffers(1, &m_cBuffer));
    glcheck(glDeleteBuffers(1, &m_nBuffer));
}

void ToreRenderable::do_draw()
{

    int positionLocation = m_shaderProgram->getAttributeLocation("vPosition");
    int colorLocation = m_shaderProgram->getAttributeLocation("vColor");
    int normalLocation = m_shaderProgram->getAttributeLocation("vNormal");
    int modelLocation = m_shaderProgram->getUniformLocation("modelMat");

    if(modelLocation != ShaderProgram::null_location) {
        glcheck(glUniformMatrix4fv(modelLocation, 1, GL_FALSE, glm::value_ptr(getModelMatrix())));
    }

    if(positionLocation != ShaderProgram::null_location) {
        //Activate location
        glcheck(glEnableVertexAttribArray(positionLocation));
        //Bind buffer
        glcheck(glBindBuffer(GL_ARRAY_BUFFER, m_pBuffer));
        //Specify internal format
        glcheck(glVertexAttribPointer(positionLocation, 3, GL_FLOAT, GL_FALSE, 0, (void*)0));
    }

    if(colorLocation != ShaderProgram::null_location) {
        glcheck(glEnableVertexAttribArray(colorLocation));
        glcheck(glBindBuffer(GL_ARRAY_BUFFER, m_cBuffer));
        glcheck(glVertexAttribPointer(colorLocation, 4, GL_FLOAT, GL_FALSE, 0, (void*)0));
    }

    if(normalLocation != ShaderProgram::null_location) {
        glcheck(glEnableVertexAttribArray(normalLocation));
        glcheck(glBindBuffer(GL_ARRAY_BUFFER, m_nBuffer));
        glcheck(glVertexAttribPointer(normalLocation, 3, GL_FLOAT, GL_FALSE, 0, (void*)0));
    }


    glcheck(glDrawArrays(GL_TRIANGLES,0, m_positions.size()));

    if(positionLocation != ShaderProgram::null_location) {
        glcheck(glDisableVertexAttribArray(positionLocation));
    }
    if(colorLocation != ShaderProgram::null_location) {
        glcheck(glDisableVertexAttribArray(colorLocation));
    }
    if(normalLocation != ShaderProgram::null_location) {
        glcheck(glDisableVertexAttribArray(normalLocation));
    }
    // Here you must:
    // 1. get the model matrix and send it to the shader (as uniform)
    // 2. for each attribute: retrieve its location on the shader,
    //    activate it, bind a buffer, then specify internal format
    // 3. draw the triangles
    // 4. unbind everything

}

void ToreRenderable::do_animate(float time)
{
}
