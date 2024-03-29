open AncestorSpacy

@react.component
let make = () =>
  <Stack
    width=[xs(100.0->#pct)]
    justifyContent=[xs(#"space-between")]
    direction=[xs(#horizontal)]
    tag=#header>
    <Logo />
    <Modal.Root>
      <Modal.Trigger asChild=true>
        <Button label=`Sign in` />
      </Modal.Trigger>
      <Modal.Overlay />
      <SignInModal />
    </Modal.Root>
  </Stack>
