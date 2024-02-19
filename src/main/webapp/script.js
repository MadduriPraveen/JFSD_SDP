const chatbotToggler = document.querySelector(".chatbot-toggler");
const closeBtn = document.querySelector(".close-btn");
const chatbox = document.querySelector(".chatbox");
const chatInput = document.querySelector(".chat-input textarea");
const sendChatBtn = document.querySelector(".chat-input span");

let userMessage = null; // Variable to store user's message

// Simple replies to common greetings
const simpleReplies = { 
  "hi": "Hello!", 
  "hello": "Hi there!",
  "how are you": "I'm doing well, thanks!",
  "howareyou": "I'm doing well, thanks!",
  "good morning": "Good morning to you too!",
  "goodmorning": "Good morning to you too!",
  "good evening": "Good evening! How can I assist you?",
 "goodevening": "Good evening! How can I assist you?",
  "hey": "Hey! What's on your mind?",
  "what's up": "Not much, just here to help.",
 "what'sup": "Not much, just here to help.",
  "thank you": "You're welcome!",
  "nice to meet you":"my plessure",
"thankyou": "You're welcome!",
  "thanks": "No problem, happy to help!",
  "bye": "Goodbye! Have a great day!",
  "see you later": "See you later, alligator!",
"seeyoulater": "See you later, alligator!",
  "tell me about placements": "Placements are an important aspect of a student's career. They help students find job opportunities in their field of study.",
  "how can I prepare for placements": "To prepare for placements, you can work on improving your resume, practice interview skills, and research companies you're interested in.",
  "when do placements usually occur": "Placements typically occur during the final year of your education, but the timing can vary depending on your program and location.",
  "what companies hire from our institution": "Our institution has a track record of placing students in reputable companies across various industries. Some of the notable recruiters include [Company 1], [Company 2], and [Company 3].",
  "placement support": "Our institution offers placement support services, including resume workshops, interview coaching, and job fairs to help students secure job opportunities.",
  "what is the placement rate at our institution": "The placement rate at our institution varies by program and year, but we have a strong track record of helping students find job opportunities.",
  "are internships included in campus placements": "Internships are typically separate from campus placements, but they can be valuable in gaining practical experience for your future career.",
  "can you provide information about the placement process": "The placement process involves submitting your resume, attending interviews, and receiving job offers. Our institution's placement cell can provide detailed guidance.",
"what should I include in my resume for placements": "Your resume for placements should include your educational qualifications, skills, work experience, projects, certifications, and any other relevant information. It's important to make it clear and well-structured.",
  "how can I improve my interview skills": "Improving your interview skills for placements involves practice. You can conduct mock interviews, research common interview questions, and work on your communication and presentation skills.",
  "what are the common types of interview rounds in placements": "Common interview rounds in placements may include written tests, technical interviews, HR interviews, group discussions, and case studies, depending on the company and role.",
  "how can I research companies for placements": "Researching companies for placements involves visiting their websites, reading about their culture, values, and job openings. You can also connect with alumni who work at these companies for insights.",
  "what's the role of the placement cell at our institution": "The placement cell at our institution acts as a bridge between students and recruiters. They organize job fairs, provide training, and help students with the placement process.",
  "how can I stand out during placements": "To stand out during placements, focus on your strengths, be well-prepared, showcase your achievements, and demonstrate your enthusiasm for the role and company."
};
  

const createChatLi = (message, className) => {
  // Create a chat <li> element with passed message and className
  const chatLi = document.createElement("li");
  chatLi.classList.add("chat", `${className}`);
  let chatContent = className === "outgoing" ? `<p></p>` : `<span class="material-symbols-outlined">smart_toy</span><p></p>`;
  chatLi.innerHTML = chatContent;
  chatLi.querySelector("p").textContent = message;
  return chatLi; // return chat <li> element
}

const handleChat = () => {
  userMessage = chatInput.value.trim(); // Get user entered message and remove extra whitespace
  if (!userMessage) return;

  // Clear the input textarea
  chatInput.value = "";

  // Append the user's message to the chatbox
  chatbox.appendChild(createChatLi(userMessage, "outgoing"));
  chatbox.scrollTo(0, chatbox.scrollHeight);

  // Generate a response
  const response = simpleReplies[userMessage] || "I'm not sure how to respond to that.";

  // Append the response to the chatbox
  chatbox.appendChild(createChatLi(response, "incoming"));
  chatbox.scrollTo(0, chatbox.scrollHeight);
}

chatInput.addEventListener("keydown", (e) => {
  // If Enter key is pressed, handle the chat
  if (e.key === "Enter" && !e.shiftKey) {
    e.preventDefault();
    handleChat();
  }
});

sendChatBtn.addEventListener("click", handleChat);
closeBtn.addEventListener("click", () => document.body.classList.remove("show-chatbot"));
chatbotToggler.addEventListener("click", () => document.body.classList.toggle("show-chatbot"));
