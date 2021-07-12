@react.component
let make = () => {
  <div className={"max-w bg-gray-800 text-gray-100 p-4 flex items-center space-x-8"}>
    <div className={"text-green-400 text-xl"}> {"ARMY FORGE"->React.string} </div>
    <div className={"flex space-x-4 text-gray-400"}>
      {[("Home", "/"), ("Paint Schemer", "/schemer"), ("Paint Finder", "/find")]
      ->Belt.Array.map(tuple => {
        let (str, route) = tuple
        <Router.Link key={str} to={route}>
          <span className="hover:text-gray-200"> {str->React.string} </span>
        </Router.Link>
      })
      ->React.array}
    </div>
  </div>
}
