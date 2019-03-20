import React from "react"
import PropTypes from "prop-types"
class ImageShow extends React.Component {
  render () {
    return (
      <React.Fragment>
        {console.log(this.props.data)}
        <div>
          <div>
            <img src={this.props.data.path}/>
          </div>
          <div>

          </div>
        </div>
      </React.Fragment>
    );
  }
}

ImageShow.propTypes = {
  data: PropTypes.array
};
export default ImageShow
