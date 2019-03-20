import React from "react"
import PropTypes from "prop-types"
class Welcome extends React.Component {
  constructor() {
    super();
  } 
  render () {
    const posts = this.props.data.map((element, i) => {
      return (
        <div className="card mt-4" key={i}>
          <div className="card-header">
            titulo
          </div>
          <img className="card-img-top" src={element.path} alt={element.alt}/>
          <div className="card-footer">
            asd
          </div>
        </div>
      );
    });
    return (
      <React.Fragment>
        {posts}
      </React.Fragment>
    );
  }
}

Welcome.propTypes = {
  data: PropTypes.array
};
export default Welcome
