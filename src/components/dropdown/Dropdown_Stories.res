let default = Storybook.make(
  ~title="Components/Dropdown",
  ~component={
    () => {
      <Dropdown trigger={<ProfileName name="Jeff Javis" size=#lg />}>
        <Dropdown.Item label="Profile" />
        <Dropdown.Item label="Sign out" />
      </Dropdown>
    }
  },
  (),
)
