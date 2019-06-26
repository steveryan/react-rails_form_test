import React from "react"
import PropTypes from "prop-types"
class TitleFormOnly extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: props.hybrid_post.title
    };
  }
  handleTitleChange(e) {
    this.setState({ title: e.target.value });
  }

  render() {
    return (
      <div>
        <label>Title</label>
        <input
          type="text"
          name="hybrid_post[title]"
          value={this.state.title}
          onChange={this.handleTitleChange}
        />
      </div>
    );
  }
}
TitleFormOnly.propTypes = {
  title: PropTypes.string
};
export default TitleFormOnly
