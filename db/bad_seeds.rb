readmebody = <<-STRING
  {"entityMap":{},"blocks":[{"key":"14g1v","text":"Nevernote","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":9,"style":"UNDERLINE"}],"entityRanges":[],"data":{}},{"key":"7pkm8","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"b4qn5","text":"Nevernote is a full-stack web application built using Ruby on Rails on the backend, a PostgreSQL database, and React.js on the frontend.  It imitates the basic functionality and appearance of Evernote.","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"bss5e","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"45msd","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"enjmo","text":"Features and Implementation","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":27,"style":"UNDERLINE"}],"entityRanges":[],"data":{}},{"key":"kehc","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"7dae","text":"Rich Text Editing","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":17,"style":"ITALIC"}],"entityRanges":[],"data":{}},{"key":"47od7","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"5dtbr","text":"Rich text editing is implemented using Draft.js.  Note content is stored in the database as a JSON string, which maps different styles to different sections of text.  Selecting a note to view in the browser fires an AJAX request, and stores that note's information in the global state, as currentNote. The NoteDetail component then parses the note body, and converts it to a Draft.js EditorState","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":289,"length":11,"style":"CODE"},{"offset":306,"length":10,"style":"CODE"},{"offset":384,"length":11,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"7hseh","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"4mvvs","text":"const content = convertFromRaw(JSON.parse(note.body));","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":54,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"12i2k","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"3oou6","text":"this.setState({ editorState: EditorState.createWithContent(content) });","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":71,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"cn0j6","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"12qh2","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9inhh","text":"Rendering the <Editor /> on the page, passing in the editorState and onChange handlers, then allows the user to type in the browser and update the note.  Notes are automatically saved to the database when the note detail component receives new props or unmounts.  The EditorState is converted back to raw form, using convertToRaw, and the raw content is then stringified using JSON.stringify(rawContent).","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":14,"length":10,"style":"CODE"},{"offset":53,"length":11,"style":"CODE"},{"offset":69,"length":8,"style":"CODE"},{"offset":268,"length":11,"style":"CODE"},{"offset":317,"length":12,"style":"CODE"},{"offset":377,"length":27,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"23kg1","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"brm25","text":"Some libraries, such as Quill, provide a ready-to-use toolbar for rich text editing, but I decided instead to implement my own format bar and style buttons.  The NoteDetail component defines two click handlers, toggleInlineStyle and toggleBlockStyle, that take a style type as a string and apply it to the EditorState:","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":162,"length":10,"style":"CODE"},{"offset":211,"length":17,"style":"CODE"},{"offset":233,"length":16,"style":"CODE"},{"offset":306,"length":11,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"4bbu","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"6tq62","text":"changeBody(editorState) {","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":25,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"5s0m7","text":"  this.setState({ editorState });","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":33,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"2ecua","text":"}","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":1,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"dief9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"2cb2a","text":"toggleInlineStyle(type) {","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":25,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"7a4r2","text":"  this.changeBody(RichUtils.toggleInlineStyle(this.state.editorState, type));","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":77,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"6l1er","text":"}","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":1,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"4ssr9","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"7ulg3","text":"toggleBlockStyle(type) {","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":24,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"eif8","text":"  this.changeBody(RichUtils.toggleBlockType(this.state.editorState, type));","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":75,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"9ambv","text":"}","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":1,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"dgtno","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"fj0mr","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9sgii","text":"These two toggle style methods are passed down to the InlineStyleControls and BlockStyleControls components respectively.  Both style controls components render a collection of StyleButton components.  These are created by mapping over an array of objects specifying each style type as a string, and the corresponding class for the font-awesome icon.  With the method for toggling the style in EditorState being passed down twice, it was important to make sure the final event handler on the StyleButton was only trying to handle one event!","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":54,"length":20,"style":"CODE"},{"offset":78,"length":18,"style":"CODE"},{"offset":177,"length":11,"style":"CODE"},{"offset":394,"length":11,"style":"CODE"},{"offset":492,"length":11,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"bdrjn","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"7eqr","text":"I also defined my own custom styleMap, which specifies styling for code snipits and strikethroughs.  The styleMap is passed to the Editor as a prop.","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":29,"length":8,"style":"CODE"},{"offset":105,"length":8,"style":"CODE"},{"offset":131,"length":6,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"4m83n","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"adsf1","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"24oi9","text":"Notebooks and Tags","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":18,"style":"ITALIC"}],"entityRanges":[],"data":{}},{"key":"1pt79","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"jvro","text":"The noteIndex component lists all the notes a user has created at the route \"/home\", but can also select notes by notebook or by tag.  Before rendering NoteIndex, the notes in the store are passed through a selector, which matches them against notebookId or tagId in the params.  The routes \"/notebook/:notebookId\" and \"/tag/:tagId\" are nested under \"/home\", and the NoteIndexHeader component also uses the pathname to determine the appropriate header to display (either the notebook title, the tag name, or just NOTES).","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":4,"length":9,"style":"CODE"},{"offset":75,"length":8,"style":"CODE"},{"offset":152,"length":9,"style":"CODE"},{"offset":244,"length":10,"style":"CODE"},{"offset":258,"length":5,"style":"CODE"},{"offset":291,"length":23,"style":"CODE"},{"offset":319,"length":14,"style":"CODE"},{"offset":350,"length":7,"style":"CODE"},{"offset":367,"length":15,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"jf2l","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"bdcm0","text":"The note detail component renders two drop-downs on click of the corresponding button, allowing the user to assign the note to a notebook, or attach tags to a note.  Attaching tags is the more complicated of the two because a note belongs_to only one notebook, but a note has_many tags.","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":231,"length":10,"style":"CODE"},{"offset":272,"length":8,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"9vunh","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"7tgd4","text":"In the TagSelector component, tag id's are stored as an array in a local state.  On clicking a tag item in the dropdown, the local state is updated to either add or remove that tag id.  Then the click handler calls changeTags, a method on the NoteDetail component, updating it's local state so that it can send the correct array of tag id's back to the database.  changeTags only saves the note to the database if you are editing a note.  It waits to submit all note information at once if you are creating a new note.","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":7,"length":11,"style":"CODE"},{"offset":215,"length":10,"style":"CODE"},{"offset":243,"length":10,"style":"CODE"},{"offset":364,"length":11,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"a4h7","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"15keo","text":"changeTags(tagIds) {","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":20,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"9mfsn","text":"  this.setState({","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":17,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"797ts","text":"    tags: tagIds","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":16,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"ec3p6","text":"  }, () => {","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":12,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"c1t1j","text":"    const note = {","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":18,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"6sugt","text":"      id: this.props.params.noteId,","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":35,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"3hqdl","text":"      tag_ids: this.state.tags","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":30,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"apr8h","text":"    };","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":6,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"ajf6n","text":"    if (this.props.formType === \"edit\") {","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":41,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"1k5rg","text":"      this.props.updateNote(note);","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":34,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"9f3lc","text":"    }","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":5,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"90db1","text":"  });","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":5,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"34nk1","text":"}","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":1,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"f25cu","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"9n5lj","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"a317e","text":"On the backend, tags are connected to notes through a join table, taggings.  Because the correct associations are set up between tags, notes, and taggings in the rails models, the NotesController can accept an array of tag_ids, which will automatically create the right taggings.","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":66,"length":8,"style":"CODE"},{"offset":180,"length":15,"style":"CODE"},{"offset":219,"length":7,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"e0umb","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"6jrn5","text":"def note_params","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":15,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"a8c5l","text":"  params.require(:note).permit(:id, :title, :body, :author_id, :notebook_id, tag_ids: [])","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":89,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"67vkg","text":"end","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":3,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"9uqdj","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"ehtu5","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"fvit4","text":"The frontend does not need to access taggings, because tags are included when fetching notes from the database.  For example, from the notes controller:","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"nkna","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"bugd3","text":"def index","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":9,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"fea0b","text":"  @notes = Note.includes(:tags).where(author_id: current_user.id)","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":65,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"34ufj","text":"  render :index","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":15,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"7u73l","text":"end","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":3,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"74kmn","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"d11ai","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"2lqpn","text":"And JSON is returned from the backend like so:","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"dqss6","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"cneu6","text":"json.extract! note, :id, :title, :body, :author_id, :notebook_id, :tag_ids","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":74,"style":"CODE"}],"entityRanges":[],"data":{}},{"key":"6khq3","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"c3dgo","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"567ec","text":"Future Features","type":"unstyled","depth":0,"inlineStyleRanges":[{"offset":0,"length":15,"style":"UNDERLINE"}],"entityRanges":[],"data":{}},{"key":"dil9u","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"18iep","text":"Search by notebook, tag, or note body text","type":"unordered-list-item","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"6578n","text":"Add shortcuts to notes, notebooks, and tags","type":"unordered-list-item","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"1hi8m","text":"Embed images and pdf files in notes","type":"unordered-list-item","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"41i3","text":"Additional rich text editing (font, font size, font color, etc.)","type":"unordered-list-item","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"6po9i","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}},{"key":"bqjus","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[],"data":{}}]}
STRING

readme = {
  title: "Production README",
  author_id: 1,
  body: readmebody,
  notebook_id: 4
}