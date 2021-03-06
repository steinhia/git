#ifndef CUBE_RENDERABLE_HPP
#define CUBE_RENDERABLE_HPP

#include "Renderable.hpp"
#include <vector>
#include <glm/glm.hpp>

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
        unsigned int m_pBuffer;
        unsigned int m_cBuffer;
};

typedef std::shared_ptr<CubeRenderable> CubeRenderablePtr;

#endif
