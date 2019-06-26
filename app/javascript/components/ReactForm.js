import React from "react"
import PropTypes from "prop-types"
class ReactForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: props.react_post.title,
      content: props.react_post.content
    };
  }
  handleTitleChange(e) {
    this.setState({ title: e.target.value });
  }

  handleContentChange(e) {
    this.setState({ content: e.target.value });
  }

  render() {
    return (
      <div>
        <label>Title</label>
        <input
          type="text"
          name="react_post[title]"
          value={this.state.title}
          onChange={this.handleTitleChange}
        />

        <label>Content</label>
        <input
          type="text"
          name="react_post[content]"
          value={this.state.content}
          onChange={this.handleContentChange}
        />
        <br/>
        <input type="submit" value="Create Post" />
      </div>
    );
  }
}

ReactForm.propTypes = {
  title: PropTypes.string,
  content: PropTypes.string
};
export default ReactForm
