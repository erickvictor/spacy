open AncestorSpacy

@react.component
let make = (~title, ~description) => {
  <Stack
    gap=[xs(#one(4.0))]
    direction=[xs(#horizontal)]
    justifyContent=[xs(#center)]
    alignItems=[xs(#center)]>
    <Next.Image src="/images/empty-state.svg" width=132.0 height=124.0 layout=#fixed />
    <Stack direction=[xs(#horizontal)] gap=[xs(#one(1.0))]>
      <Typography
        tag=#h1
        textAlign=[xs(#center)]
        m=[xs(0.0)]
        color=[xs(Theme.Colors.primary700)]
        fontSize=[xs(2.4->#rem)]
        fontWeight=[xs(#700)]
        letterSpacing=[xs(-0.03->#em)]
        lineHeight=[xs(3.2->#rem)]>
        {title->React.string}
      </Typography>
      <Typography
        tag=#p
        textAlign=[xs(#center)]
        m=[xs(0.0)]
        color=[xs(Theme.Colors.primary200)]
        fontSize=[xs(1.8->#rem)]
        fontWeight=[xs(#500)]
        letterSpacing=[xs(-0.03->#em)]
        lineHeight=[xs(2.4->#rem)]>
        {description->React.string}
      </Typography>
    </Stack>
  </Stack>
}
