#ifndef TEACHERS_MESH_RENDERABLE_HPP
#define TEACHERS_MESH_RENDERABLE_HPP

#include "../include/HierarchicalRenderable.hpp"
#include <vector>
#include <glm/glm.hpp>

namespace teachers {

class MeshRenderable : public HierarchicalRenderable
{
    public:
        ~MeshRenderable();
        MeshRenderable(ShaderProgramPtr program, const std::string& filename);

    private:
        void do_draw();
        void do_animate(float time);

        std::vector<glm::vec3> m_positions;
        std::vector<glm::vec3> m_normals;
        std::vector<glm::vec4> m_colors;
        std::vector<unsigned int> m_indices;

        unsigned int m_pBuffer;
        unsigned int m_cBuffer;
        unsigned int m_nBuffer;
        unsigned int m_iBuffer;
};

}
// no Ptr typedef here, a bit too naughty in a namespace...
#endif
