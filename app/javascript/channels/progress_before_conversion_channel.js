import consumer from "./consumer"
console.log("abc2")
consumer.subscriptions.create("ProgressBeforeConversionChannel", {
  connected() {
    console.log('channel connected');
  },

  disconnected() {
    console.log('channel disconnected');
  },

  received(data) {
    // this is to display the progress message while first page of the uploaded doc is in conversion
    let progressMessage = `<span class="text-primary font-weight-bold">Status:</span> Processing page 1 out of ${data.content.total_pages}`
    const bookId = $("#conversion-progress-bar").attr("data-last-uploaded-book-id");
    if(bookId == data.content.doc_id) {
      $("#converted-page-number").html(progressMessage);
    }
    console.log(data);
  }
});
