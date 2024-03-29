open AncestorSpacy

@react.component
let make = (~children) => {
  <Box
    display=[xs(#flex)]
    justifyContent=[xs(#center)]
    height=[xs(100.0->#pct)]
    py=[xs(9.0)]
    px=[xs(12.0)]>
    <Stack
      gap=[xs(#one(4.0))] maxW=[xs(1200->#px)] width=[xs(100.0->#pct)] height=[xs(100.0->#pct)]>
      <Header />
      <Box display=[xs(#flex)] flexGrow=[xs(3.0->#num)] justifyContent=[xs(#center)]>
        children
      </Box>
      <Footer />
    </Stack>
  </Box>
}
