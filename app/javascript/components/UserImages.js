import React from "react"
import PropTypes from "prop-types"

class UserImages extends React.Component {
  constructor() {
    super();
    this.state = {
      modeGroup: true
    };
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(e, mode) {
    e.preventDefault();
    
    this.setState ({
      modeGroup: mode
    });
    console.log(this.state.modeGroup);
  }

  render () {
    const group = this.props.data.map((element, i) => {
      return(
        <div className="col-4" key={i}>
            <img className="img-fluid" src={element.path}/>
          </div>
        )
      });

    const list = this.props.data.map((element, i) => {
      return(
        <div className="col-12" key={i}>
            <img className="img-fluid" src={element.path}/>
          </div>
        )
      });

    return (
      <React.Fragment>
        <ul className="nav nav-tabs">
          <li className="nav-item">
            <a className="nav-link" href="#" onClick={(e) => this.handleClick(e, true)}>Group</a>
          </li>
          <li className="nav-item">
            <a className="nav-link" href="#" onClick={(e) => this.handleClick(e, false)}>List</a>
          </li>
        </ul>

        <div className="row">
          {
            this.props.data.map((element, i) => {
              return(
                <div className={this.state.modeGroup ? "col-4" : "col-12"} key={i}>
                    <img className="img-fluid" src={element.path}/>
                  </div>
                )
              })
          }
        </div>
      </React.Fragment>
    );
  }
}

UserImages.propTypes = {
  data: PropTypes.array
};

export default UserImages
