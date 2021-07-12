module Link = {
  @react.component
  let make = (~to, ~children) => {
    <a className={"cursor-pointer"} onClick={event => RescriptReactRouter.push(to)}> {children} </a>
  }
}

module View = {
  @react.component
  let make = () => {
    let route = RescriptReactRouter.useUrl()
    switch route.path {
    | list{} => <Home />
    | list{"scheme"} => <PaintSchemer />
    | list{"find"} => <PaintFinder />
    | _ => <NotFound />
    }
  }
}
