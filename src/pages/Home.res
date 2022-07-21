let container = Emotion.css({
  "border": "solid 1px blue",
  "fontSize": 42,
})

let default = () => <div className=container>{`Hello from ReScript`->React.string} </div>
