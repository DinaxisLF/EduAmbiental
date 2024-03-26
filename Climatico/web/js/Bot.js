const chatInput = document.querySelector(".chat-input textarea");
const SendChatBtn = document.querySelector(".chat-input span");
const chatbox = document.querySelector(".chatbox");
const chatToggler = document.querySelector(".chatbot-toggler");
const inputInitHeight = chatInput.scrollHeight;

let userMessage;
const API_KEY = "";

const createChatLi = (message, className) =>{
    //Un Elemento Chat <li> es creado con un message y className 
    const chatLi = document.createElement("li");
    chatLi.classList.add("chat",className);
    let chatContent = className === "outgoing" ? `<p>${message}</p>` : `<span class="material-symbols-outlined">smart_toy</span><p>${message}</p>`;
    chatLi.innerHTML = chatContent;
    return chatLi;
}

const generateResponse = (incomingChatLi) =>{
    const API_URL ="https://api.openai.com/v1/chat/completions";
    const messageElement = incomingChatLi.querySelector("p");

    const requestOptions = {
        method: "POST",
        headers:{
            "Content-Type": "application/json",
            "Authorization" : `Bearer ${API_KEY}`
        },
        body: JSON.stringify({
            model: "gpt-3.5-turbo",
            messages: [{role: "user",content: userMessage}]  
        })
    }
    
    //Enviar la solicitud POST a la API y recibe la respuesta
    fetch(API_URL, requestOptions).then(res => res.json()).then(data => {
        messageElement.textContent = data.choices[0].message.content;
    }).catch((error)=> {
        messageElement.textContent = "Algo salio mal, intentalo de nuevo :)";
    }).finally(() => chatbox.scrollTo(0, chatbox.scrollHeight));
}

const handleChat = () => {
    userMessage = chatInput.value.trim();
    if(!userMessage) return;
    chatInput.value = "";
    chatInput.style.height = `${inputInitHeight}px`;

    // Añade el mensaje al chatbox
    chatbox.appendChild(createChatLi(userMessage, "outgoing"));
    chatbox.scrollTo(0, chatbox.scrollHeight);

    //Mensaje del bot antes de la respuesta
    setTimeout(() =>{
        const incomingChatLi = createChatLi("Procesando...", "incoming");
        chatbox.appendChild(incomingChatLi);
        chatbox.scrollTo(0, chatbox.scrollHeight);
        generateResponse(incomingChatLi);
    },600)
           
}

//Eventos
chatInput.addEventListener("input", () => {
    //Adapta la altura del area de texto del menseja del usuario
    chatInput.style.height = `${inputInitHeight}px`;
    chatInput.style.height = `${chatInput.scrollHeight}px`;
})

chatInput.addEventListener("keydown", (e) => {
    //Envia el mensaje con enter y el espacio lo realiza al presionar shift+enter
    if(e.key === "Enter" && !e.shiftKey && window.innerWidth > 800){
        e.preventDefault();
        handleChat();
    }
})

chatToggler.addEventListener("click", () => document.body.classList.toggle("show-chatbot"));
SendChatBtn.addEventListener("click", handleChat);
