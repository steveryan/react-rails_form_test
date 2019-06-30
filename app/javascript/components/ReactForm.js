import React from "react"
import PropTypes from "prop-types"
class ReactForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: props.title,
      content: props.content
    };
    //this.handleTitleChange = this.handleTitleChange.bind(this);
    this.handleContentChange = this.handleContentChange.bind(this);
  }

  handleTitleChange = (e) => {
    this.setState({ title: e.target.value });
  }

  handleContentChange(e) {
    this.setState({ content: e.target.value });
  }

  render() {
    return (
      <React.Fragment>
      <form action="/react_posts" method="POST">
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
      </form>
      <p>Title: {this.state.title}</p>
      <p>Content: {this.state.content}</p>
      </React.Fragment>
    );
  }
}

export default ReactForm
