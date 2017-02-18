#include "../include/ShaderProgram.hpp"
#include "../include/Viewer.hpp"

#include "../include/FrameRenderable.hpp"
#include "../teachers/CubeRenderable.hpp"
#include "../teachers/CylinderRenderable.hpp"


void initialize_practical_03_scene(Viewer& viewer)
{

    // create all shaders of this scene, then add them to the viewer
    ShaderProgramPtr flatShader
        = std::make_shared<ShaderProgram>("../shaders/flatVertex.glsl",
                                          "../shaders/flatFragment.glsl");
    viewer.addShaderProgram(flatShader);

    // create renderable objects
    viewer.addRenderable(std::make_shared<FrameRenderable>(flatShader));


    // Create renderables
    std::shared_ptr<teachers::CubeRenderable> root = std::make_shared<teachers::CubeRenderable>(flatShader);
    std::shared_ptr<teachers::CylinderRenderable> cyl = std::make_shared<teachers::CylinderRenderable>(flatShader);

    // For each element of the hierarchy,
    // Set local transform and parent transform
    glm::mat4 rootParentTransform = glm::translate(glm::mat4(1.0), glm::vec3(2,2,2));
    root->setParentTransform(rootParentTransform);

    // transformation en prenant comme repère le repère parent ou local
    glm::mat4 transf = glm::rotate(glm::mat4(1.0f), 1.0f, glm::vec3(1.0f,1.0f,1.0f)) * glm::translate(glm::mat4(1.0), glm::vec3(1,1,1));
    glm::mat4 child1ParentTransform = transf; 
    glm::mat4 child1LocalTransform = glm::mat4(1.0);
    cyl->setParentTransform(child1ParentTransform);
    cyl->setLocalTransform(child1LocalTransform);

    //child2->setParentTransform(child2ParentTransform);

    // Define parent/children relationsh  ips
    HierarchicalRenderable::addChild(root, cyl);
    //HierarchicalRenderable::addChild(root, child2);

    // Add only the root of the hierarchy to the viewer
    viewer.addRenderable(root);

}
