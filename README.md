# Conditional container views
This is a demonstration of how to load views into a container view based on a
condition set in the presenting view controller.

<img src="https://raw.githubusercontent.com/jkereako/ConditionalContainerViews/master/Images/blank-state.png" alt="Blank state" width="320" height="568" />
<img src="https://raw.githubusercontent.com/jkereako/ConditionalContainerViews/master/Images/content.png" alt="Content" width="320" height="568" />

The use case is when you have a container view that may contain content. In the
event that the container view does not contain content, the blank state view is
loaded. Otherwise, the content view is loaded. 

This project is based off of Michael Luton's [Embedded Swapping][swap] project.

[swap]: https://github.com/mluton/EmbeddedSwapping
