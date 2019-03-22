import React from "react"
import PropTypes from "prop-types"
import CommentCreateForm from "./CommentCreateForm"

class ImageShow extends React.Component {
  render () {
    return (
      <React.Fragment>
        {console.log(this.props.data)}
        <div>
          <div>
            <img src={this.props.data.path}/>
          </div>
        </div>
      </React.Fragment>
    );
  }
}

export default ImageShow
