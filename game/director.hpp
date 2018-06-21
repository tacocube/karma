#ifndef KARMA_DIRECTOR_HPP
#define KARMA_DIRECTOR_HPP
#include <SFML/Graphics.hpp>
#include <string>
#include <scene.hpp>
class Director {
public:
	Director();
	void mainLoop();
	void loadScene(Scene &scene);
private:
	const static int DEFAULT_WINDOW_WIDTH;
	const static int DEFAULT_WINDOW_HEIGHT;
	const static std::string DEFAULT_WINDOW_TITLE;
	sf::RenderWindow window;
};
#endif // KARMA_DIRECTOR_HPP