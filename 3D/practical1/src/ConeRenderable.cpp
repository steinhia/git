#include "./../include/ConeRenderable.hpp"
#include "./../include/gl_helper.hpp"
#include "./../include/log.hpp"
#include "./../include/Utils.hpp"
#include <math.h>
#include <glm/gtc/type_ptr.hpp>
#include <GL/glew.h>

ConeRenderable::ConeRenderable(ShaderProgramPtr shaderProgram) :
    Renderable(shaderProgram),
    m_pBuffer(0), m_cBuffer(0)
{



  int nb_faces=10;
  double k=2.0*M_PI/nb_faces;
  double th_k=0;
  double th_kp1=k;
  glm::vec3 center=glm::vec3(0,0,0);
  glm::vec3 center1=glm::vec3(0,0,1);

     for (unsigned int i=0; i<nb_faces; i++) {
       glm::vec3 pt1=glm::vec3(glm::cos(th_k),sin(th_k),0);
       glm::vec3 pt2=glm::vec3(glm::cos(th_kp1),sin(th_kp1),0);
     m_positions.push_back(pt1);
    m_positions.push_back(pt2);
    m_positions.push_back(center1);


   m_positions.push_back(pt1);
    m_positions.push_back(pt2);
    m_positions.push_back(center);




       glm::vec4 color = randomColor();
    m_colors.push_back(color);
    m_colors.push_back(color);
    m_colors.push_back(color);
    m_colors.push_back(color);
    m_colors.push_back(color);
    m_colors.push_back(color);

    th_k=th_k+k;
    th_kp1+=k;
     }


    glGenBuffers(1, &m_pBuffer); //vertices
    glGenBuffers(1, &m_cBuffer); //colors

    glcheck(glBindBuffer(GL_ARRAY_BUFFER, m_pBuffer));
    glcheck(glBufferData(GL_ARRAY_BUFFER, m_positions.size()*sizeof(glm::vec3), m_positions.data(), GL_STATIC_DRAW));
    glcheck(glBindBuffer(GL_ARRAY_BUFFER, m_cBuffer));
    glcheck(glBufferData(GL_ARRAY_BUFFER, m_colors.size()*sizeof(glm::vec4), m_colors.data(), GL_STATIC_DRAW));
    glcheck(glBindBuffer(GL_ARRAY_BUFFER, m_nBuffer));
    glcheck(glBufferData(GL_ARRAY_BUFFER, m_normals.size()*sizeof(glm::vec3), m_normals.data(), GL_STATIC_DRAW));

    // Here you must:
    // 1. define the positions and colors of all your vertices
    //    (you might stored them in m_positions and m_colors)
    // 2. generate gl buffers,
    // 3. for each of them, bind then send data
    //
    // No code is provided, let's see if you're getting
    // more comfortable (or not) with these different steps
    //
    // For step 1, ask yourself how many vertices you want, are they
    // shared or not by multiple triangles, how to compute their position, ...
    // Indexing is more difficult, you may start with direct generation first

}

ConeRenderable::~ConeRenderable()
{
    glcheck(glDeleteBuffers(1, &m_pBuffer));
    glcheck(glDeleteBuffers(1, &m_cBuffer));
    glcheck(glDeleteBuffers(1, &m_nBuffer));
}

void ConeRenderable::do_draw()
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

void ConeRenderable::do_animate(float time)
{
}
