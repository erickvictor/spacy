module Popover = Radix.Popover

module Styles = {
  open Emotion

  let slideUpAndFade = keyframes({
    "from": {
      "opacity": 0,
      "transform": "translateY(2px)",
    },
    "to": {
      "opacity": 1,
      "transform": 0,
    },
  })

  let trigger = css({
    "border": "none",
    "outline": "none",
    "background": "none",
    "borderRadius": Theme.Radius.make(1.0),
    "padding": `${Theme.Spacing.make(1.0)} ${Theme.Spacing.make(1.25)}`,
    "cursor": "pointer",
    "transition": "200ms background, 150ms box-shadow",
    "willChange": "background",
    "&:focus": {
      "transition": "150ms box-shadow",
      "boxShadow": `0px 0px 0px 2px ${Theme.colors(#primary200)}`,
    },
    "&:hover": {
      "transition": "200ms background",
      "background": Theme.colors(#primary200)->Polished.transparentize(0.5, _),
    },
  })

  let content = css({
    "border": `solid 1px ${Theme.colors(#primary200)->Polished.transparentize(0.5, _)}`,
    "borderRadius": Theme.Spacing.make(1.0),
    "padding": Theme.Spacing.make(2.0),
    "display": "flex",
    "flexDirection": "column",
    "minWidth": 125,
    "animationDuration": "300ms",
    "willChange": "transform, opacity",
    "&[data-state='open']": {
      "&[data-side='bottom']": {
        "animationName": slideUpAndFade,
      },
    },
  })

  let item = css({
    "padding": Theme.Spacing.make(1.0),
    "textAlign": "center",
    "display": "flex",
    "alignItems": "center",
    "justifyContent": "center",
    "fontSize": 16,
    "fontWeight": 700,
    "letterSpacing": `-0.02em`,
    "borderRadius": Theme.Radius.make(0.5),
    "cursor": "pointer",
    "transition": "200ms background, 150ms box-shadow",
    "willChange": "background",
    "outline": "none",
    "textDecoration": "none",
    "color": Theme.colors(#primary700),
    "&:focus": {
      "transition": "150ms box-shadow",
      "boxShadow": `0px 0px 0px 2px ${Theme.colors(#primary200)}`,
    },
    "&:hover": {
      "transition": "200ms background",
      "background": Theme.colors(#primary200)->Polished.transparentize(0.8, _),
    },
  })
}

module Item = {
  @react.component
  let make = (~label) => <a href="/" className=Styles.item> {label->React.string} </a>
}

@react.component
let make = (~trigger, ~children) => {
  <Popover.Root>
    <Popover.Trigger asChild=true>
      <button className=Styles.trigger> trigger </button>
    </Popover.Trigger>
    <Popover.Portal>
      <Popover.Content sideOffset=6 className=Styles.content> children </Popover.Content>
    </Popover.Portal>
  </Popover.Root>
}
