#ifndef TEACHERS_CUBE_RENDERABLE_HPP
#define TEACHERS_CUBE_RENDERABLE_HPP

#include "../include/Renderable.hpp"
#include <vector>
#include <glm/glm.hpp>

namespace teachers {

class CubeRenderable : public Renderable
{
    public:
        ~CubeRenderable();
        CubeRenderable();
        CubeRenderable(ShaderProgramPtr program);

    private:
        void do_draw();
        void do_animate(float time);

        std::vector<glm::vec3> m_positions;
        std::vector<glm::vec4> m_colors;
        std::vector<glm::vec3> m_normals;

        unsigned int m_pBuffer;
        unsigned int m_cBuffer;
        unsigned int m_nBuffer;
};

}
// no Ptr typedef here, a bit too naughty in a namespace...
#endif
