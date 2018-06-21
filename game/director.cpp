#include <director.hpp>
const int Director::DEFAULT_WINDOW_WIDTH = 800;
const int Director::DEFAULT_WINDOW_HEIGHT = 600;
const std::string Director::DEFAULT_WINDOW_TITLE = "Karma";

Director::Director() : window(sf::VideoMode(DEFAULT_WINDOW_WIDTH, DEFAULT_WINDOW_HEIGHT), DEFAULT_WINDOW_TITLE.data()) {

}

void Director::mainLoop() {
	while (window.isOpen()) {
		// Handle events.
		sf::Event event;
		while (window.pollEvent(event)) {
			if (event.type == sf::Event::Closed) {
				window.close();
			}
		}

		// Render
		window.clear();
		window.display();
	}
}