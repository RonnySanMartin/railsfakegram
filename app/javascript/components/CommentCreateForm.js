import React from "react"
import PropTypes from "prop-types"
class CommentCreateForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      content: props.comment.content || ''
    };
    this.handleContentChange = this.handleContentChange.bind(this);
  }

  handleContentChange(e) {
    console.log(e.target.value);
    this.setState({ content: e.target.value });
  }

  render() {
    return (
      <React.Fragment>
        <div>
          <label>Content</label>
          <input
            type="text"
            name="comment[content]"
            value={this.state.content}
            onChange={this.handleContentChange}
          />

          <input type="submit" value="Comentar" />
        </div>
      </React.Fragment>
    );
  }
}

export default CommentCreateForm
