import SwiftUI

// Data model for a question
struct Question: Identifiable {
    let id = UUID()
    let text: String
    let answer: String
}

// Quiz data with all topics (unchanged, included for completeness)
struct QuizData {
    static let topics: [String: [Question]] = [
        "Algebra": [
            Question(text: "What are the main properties of the sum and product of natural numbers?", answer: "Natural numbers are closed under addition and multiplication. The sum and product are commutative, associative, and distributive over addition."),
            Question(text: "How does the division algorithm for integers work, and what are its key properties?", answer: "For any integer a and positive integer b, there are unique integers q (quotient) and r (remainder) such that a = bq + r, where 0 ≤ r < b."),
            Question(text: "What distinguishes rational numbers from integers and how does their arithmetic differ?", answer: "Rational numbers are fractions a/b, while integers are whole numbers. Rational numbers can be non-integers, but integers cannot."),
            Question(text: "What is the completeness property of real numbers, and how does it affect their use in mathematics?", answer: "The completeness property means every bounded set of real numbers has a least upper bound, preventing gaps in the real number system."),
            Question(text: "Can you explain the principle of mathematical induction and provide an example of its application?", answer: "Induction proves statements for all natural numbers by showing it's true for the first number and assuming it's true for n, then proving for n+1."),
            Question(text: "What is the significance of complex numbers in solving quadratic equations, and how do you perform basic operations with them?", answer: "Complex numbers solve quadratics with negative discriminants, allowing for solutions where real numbers fail."),
            Question(text: "What are the different forms of a complex number and how do you convert between them?", answer: "A complex number is in the form a + bi (rectangular) or r(cos θ + i sin θ) (polar), and can be converted using trigonometric identities."),
            Question(text: "How do you find the roots of polynomials using synthetic division?", answer: "Synthetic division simplifies dividing polynomials, helping find roots when dividing by linear factors."),
            Question(text: "What is the role of matrices in solving systems of linear equations?", answer: "Matrices represent systems of equations, and matrix operations help solve for unknowns efficiently."),
            Question(text: "How does the concept of matrix rank relate to the solutions of a system of linear equations?", answer: "The rank of a matrix tells you the number of independent equations. A full-rank matrix has a unique solution, while lower rank may indicate no or infinite solutions.")
        ],
        "Calculus": [
            Question(text: "What are the axioms of real numbers and how do they apply to inequalities with absolute value?", answer: "The axioms include field and order properties that define real numbers. They help solve inequalities by ensuring operations like addition and multiplication are consistent and absolute values are handled correctly."),
            Question(text: "What is the difference between countable and uncountable sets, and what paradoxes are related to infinity?", answer: "Countable sets can be matched one-to-one with natural numbers, while uncountable sets cannot. Paradoxes like Hilbert's Hotel show strange properties of infinity."),
            Question(text: "What are the main theorems about real numbers?", answer: "Key theorems include the completeness property and the existence of limits, which help in solving real-world problems involving limits and continuity."),
            Question(text: "What are intervals in the real number system?", answer: "Intervals are continuous ranges of real numbers, such as [a, b], where all numbers between a and b are included."),
            Question(text: "How do you calculate the absolute value of a number and its properties?", answer: "The absolute value of a number is its distance from zero on the number line, denoted |x|. It is always non-negative and satisfies |x| = x if x ≥ 0 and |x| = -x if x < 0."),
            Question(text: "What is the concept of limits of functions?", answer: "A limit describes the value a function approaches as the input gets closer to a certain point. It helps analyze behavior near specific values."),
            Question(text: "How do you determine the continuity of a function?", answer: "A function is continuous if the limit of the function at a point matches its value at that point. Discontinuities occur when this condition is not met."),
            Question(text: "What is the derivative of a function and its geometric interpretation?", answer: "The derivative measures the rate of change of a function. Geometrically, it represents the slope of the tangent line to the curve at a point."),
            Question(text: "How do you differentiate functions algebraically and geometrically?", answer: "Differentiation is done using rules like the power rule or chain rule. Geometrically, it shows how the function's graph changes at each point."),
            Question(text: "What are applications of derivatives like finding extrema?", answer: "Derivatives help find maximum or minimum values of a function by analyzing the first and second derivatives. This is used to understand the graph and behavior of functions.")
        ],
        "Programming": [
            Question(text: "What are the main components and functions of a computer?", answer: "A computer has hardware components (like the CPU and memory) and software components (like the operating system). The OS manages hardware and software, performing tasks like file management and device control."),
            Question(text: "What are the different numbering systems, and how do conversions work between them?", answer: "Common numbering systems include binary, octal, and hexadecimal. Conversion involves changing numbers between these bases by dividing and multiplying by base values."),
            Question(text: "What are primitive data types and how are they represented in a computer?", answer: "Primitive data types include integers, floats, booleans, and characters. They are stored in memory in specific formats like binary for integers or IEEE for floating-point numbers."),
            Question(text: "What are the phases in problem-solving and algorithm design?", answer: "The phases include problem analysis (defining the problem), design (creating algorithms using pseudocode or flowcharts), and implementation (coding and testing)."),
            Question(text: "What is modular and structured programming?", answer: "Modular programming breaks code into smaller, reusable functions, while structured programming organizes code using clear control structures like loops and conditionals."),
            Question(text: "What is the history and evolution of programming languages?", answer: "Programming languages evolved from low-level languages (machine code) to high-level languages (like C). They are categorized into procedural, declarative, and object-oriented languages."),
            Question(text: "What are the main types of programming paradigms?", answer: "Programming paradigms include procedural, declarative, functional, object-oriented, and concurrent programming, each with its approach to solving problems."),
            Question(text: "What is the structure of a C program?", answer: "A C program has a standard structure with functions like main(), variable declarations, and statements. It follows a sequence of preprocessor commands, function definitions, and execution instructions."),
            Question(text: "How do you work with variables and data types in C?", answer: "Variables in C store data, and each has a data type (e.g., int, char). You declare them, assign values, and use operators for arithmetic and logical operations."),
            Question(text: "What are control structures and functions in C?", answer: "Control structures in C include conditionals (if-else) and loops (for, while). Functions allow code to be organized into reusable blocks for specific tasks."),
            Question(text: "How do you work with arrays and strings in C?", answer: "Arrays store multiple values of the same type. Strings are arrays of characters. You can manipulate arrays using loops and functions for tasks like concatenation and comparison.")
        ],
        "Computer Organization": [
            Question(text: "What are the basic definitions and classifications of computers?", answer: "Computers are devices for processing data. They can be classified by size, purpose, or technology, with types like mainframes, personal computers, and supercomputers."),
            Question(text: "What is the evolution of computers, from generation zero to later generations?", answer: "Computers evolved from mechanical devices (generation zero) to electronic computers with vacuum tubes (first generation), transistors (second generation), integrated circuits (third generation), and microprocessors (fourth generation). Later generations focus on parallelism and miniaturization."),
            Question(text: "What is the Von Neumann model of computer organization?", answer: "The Von Neumann model describes a computer with a central processing unit (CPU), memory, input/output devices, and a control unit, all interacting through buses for data and instructions."),
            Question(text: "What is the Harvard model of computer architecture?", answer: "The Harvard model uses separate memory storage for data and instructions, unlike the Von Neumann model, which uses a single memory for both."),
            Question(text: "What are the components of the CPU and their functions?", answer: "The CPU includes the arithmetic logic unit (ALU), control unit, registers, and cache memory. It performs calculations, controls the flow of instructions, stores data temporarily, and speeds up processes."),
            Question(text: "What are the different classifications of processors (SISD, SIMD, MISD, MIMD)?", answer: "Processors are classified by how they handle data: SISD (single instruction, single data), SIMD (single instruction, multiple data), MISD (multiple instruction, single data), and MIMD (multiple instruction, multiple data)."),
            Question(text: "What is memory hierarchy, and how do different memory types like ROM, RAM, and cache differ?", answer: "Memory hierarchy organizes memory based on speed and size. ROM is non-volatile, RAM is volatile, and cache is a fast, temporary storage used to speed up data retrieval."),
            Question(text: "What are input/output devices and their role in a computer system?", answer: "Input/output devices allow data to be entered into or retrieved from the computer. Examples include keyboards (input), monitors (output), and USB ports (both)."),
            Question(text: "What are the concepts of microprogramming and its approaches like RISC and CISC?", answer: "Microprogramming uses low-level instructions to control hardware. RISC (Reduced Instruction Set Computing) uses simple instructions, while CISC (Complex Instruction Set Computing) uses more complex instructions."),
            Question(text: "How do microprocessors simulate different architectures through simulators?", answer: "Microprocessor simulators model how processors execute instructions, allowing testing of architectures (like RISC or CISC) without physical hardware.")
        ],
        "Algorithms": [
            Question(text: "What is algorithmic problem solving and how does it apply to real-world issues?", answer: "Algorithmic problem solving involves creating step-by-step procedures to solve problems efficiently. It’s applied in computing, mathematics, and daily life to optimize solutions."),
            Question(text: "What are the basic steps involved in problem-solving?", answer: "The basic steps include understanding the problem, designing a solution, implementing the solution, and verifying the results."),
            Question(text: "What is an algorithm, and what are its essential characteristics?", answer: "An algorithm is a finite set of well-defined instructions to solve a problem. Key characteristics include clarity, finiteness, and effectiveness."),
            Question(text: "How does George Polya's approach help in problem solving?", answer: "Polya's approach suggests four steps: understanding the problem, devising a plan, carrying out the plan, and reviewing the solution, promoting systematic thinking."),
            Question(text: "What are common strategies for solving problems?", answer: "Strategies include inductive reasoning, decomposition, analogy, abstraction, and using heuristics to find solutions more effectively."),
            Question(text: "What are prototypes and how do they help in solving problems?", answer: "Prototypes are simplified models or templates that help identify common patterns in problems and guide solution strategies."),
            Question(text: "What is the role of categorization and structure in problem-solving?", answer: "Categorizing problems and recognizing their structure allows for a more systematic approach, helping to break them down into manageable parts."),
            Question(text: "How do you evaluate and measure the efficiency of problem-solving solutions?", answer: "Efficiency is evaluated by comparing solutions based on speed, resource usage, and accuracy, ensuring the solution is optimal for the problem."),
            Question(text: "What is the difference between formulating and implementing a solution?", answer: "Formulating involves creating a theoretical solution, while implementation refers to the practical application of that solution."),
            Question(text: "What are the key considerations when documenting an algorithm?", answer: "Documentation should include a clear explanation of the algorithm, its steps, inputs, outputs, and any assumptions, helping others understand and replicate the solution.")
        ],
        "Logic": [
            Question(text: "What are the fundamental concepts of logic?", answer: "Logic involves propositions, connectives, truth tables, tautologies, and contradictions, which help analyze and evaluate logical statements."),
            Question(text: "What is propositional calculus and its main components?", answer: "Propositional calculus studies the logical structure of propositions using concepts like validity, consistency, implication, and equivalence."),
            Question(text: "How do you prove statements in propositional logic?", answer: "Proof methods include direct proof, contradiction, and constructing models. Normal forms and satisfiability are key concepts."),
            Question(text: "What is predicate calculus and its importance?", answer: "Predicate calculus extends propositional logic by dealing with objects, properties, and relationships, using quantifiers to express general statements."),
            Question(text: "How are systems of proof used in predicate calculus?", answer: "Systems of proof, like natural deduction and resolution, help demonstrate the validity of logical statements within predicate calculus."),
            Question(text: "What are the main principles in propositional logic?", answer: "Key principles include the identity principle, non-contradiction, and the excluded middle, which are foundational to logical reasoning."),
            Question(text: "What are quantifiers in predicate logic and how do they work?", answer: "Quantifiers (like existential and universal) express statements about objects in a domain, such as 'there exists' or 'for all.'"),
            Question(text: "What is the syntax and semantics of predicate calculus?", answer: "Syntax defines the formal structure of predicate logic, while semantics refers to the meanings of the symbols and expressions used."),
            Question(text: "How are models constructed in predicate logic?", answer: "Models are created by assigning interpretations to predicates and quantifiers, ensuring the logical system's validity."),
            Question(text: "What is the importance of validity, completeness, and decidability in logic?", answer: "Validity ensures the truth of statements, completeness guarantees all truths can be proven, and decidability refers to the ability to determine truth algorithmically.")
        ]
    ]
}

struct ContentView: View {
    @State private var gameStarted = false
    @State private var selectedTopic: String? = nil
    @State private var currentQuestion: Question? = nil
    @State private var showAnswer = false
    @State private var questionPool: [Question] = []

    // Color palette for topics
    let topicColors: [String: Color] = [
        "Algebra": .purple,
        "Calculus": .blue,
        "Programming": .green,
        "Computer Organization": .orange,
        "Algorithms": .red,
        "Logic": .pink
    ]

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white, .gray.opacity(0.2)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 20) {
                if !gameStarted {
                    VStack {
                        Text("Quiz Game")
                            .font(.system(size: 40, weight: .bold, design: .rounded))
                            .foregroundColor(.black)
                            .padding(.top, 50)

                        Spacer()

                        Button(action: {
                            withAnimation {
                                gameStarted = true
                            }
                        }) {
                            Text("Start Game")
                                .font(.system(size: 24, weight: .semibold, design: .rounded))
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.blue)
                                .cornerRadius(15)
                                .shadow(color: .blue.opacity(0.3), radius: 10, x: 0, y: 5)
                        }
                        .padding(.horizontal, 40)
                        .padding(.bottom, 50)
                    }
                } else if selectedTopic == nil {
                    // Updated Topic Selection Screen with larger cards
                    VStack(spacing: 0) {
                        Text("Choose a Topic")
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                            .foregroundColor(.black)
                            .padding(.top, 20)
                            .padding(.bottom, 10)

                        ScrollView {
                            VStack(spacing: 15) {
                                ForEach(Array(QuizData.topics.keys.sorted()), id: \.self) { topic in
                                    Button(action: {
                                        withAnimation {
                                            selectedTopic = topic
                                            questionPool = QuizData.topics[topic]!.shuffled()
                                            nextQuestion()
                                        }
                                    }) {
                                        Text(topic)
                                            .font(.system(size: 24, weight: .semibold, design: .rounded))
                                            .foregroundColor(.white)
                                            .padding()
                                            .frame(maxWidth: .infinity, minHeight: 100) // Larger height for cards
                                            .background(topicColors[topic] ?? .gray)
                                            .cornerRadius(20)
                                            .shadow(color: topicColors[topic]?.opacity(0.4) ?? .gray.opacity(0.4), radius: 10, x: 0, y: 5)
                                    }
                                    .padding(.horizontal, 15)
                                }
                            }
                        }

                        Button(action: {
                            withAnimation {
                                gameStarted = false
                            }
                        }) {
                            Text("Back to Start")
                                .font(.system(size: 18, weight: .medium, design: .rounded))
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.gray)
                                .cornerRadius(15)
                                .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: 5)
                        }
                        .padding(.horizontal, 15)
                        .padding(.bottom, 20)
                    }
                } else if let question = currentQuestion {
                    VStack(spacing: 20) {
                        VStack {
                            Text(question.text)
                                .font(.system(size: 20, weight: .medium, design: .rounded))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding()

                            if showAnswer {
                                Text(question.answer)
                                    .font(.system(size: 16, weight: .regular, design: .rounded))
                                    .foregroundColor(.gray)
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal)
                                    .padding(.bottom)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 5)
                        .padding(.horizontal, 20)

                        Button(action: {
                            withAnimation {
                                if showAnswer {
                                    nextQuestion()
                                } else {
                                    showAnswer = true
                                }
                            }
                        }) {
                            Text(showAnswer ? "Next Question" : "Show Answer")
                                .font(.system(size: 18, weight: .semibold, design: .rounded))
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.orange)
                                .cornerRadius(15)
                                .shadow(color: .orange.opacity(0.3), radius: 8, x: 0, y: 4)
                        }

                        Button(action: {
                            withAnimation {
                                nextQuestion()
                            }
                        }) {
                            Text("Skip to Next")
                                .font(.system(size: 18, weight: .medium, design: .rounded))
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.teal)
                                .cornerRadius(15)
                                .shadow(color: .teal.opacity(0.3), radius: 8, x: 0, y: 4)
                        }

                        Button(action: {
                            withAnimation {
                                selectedTopic = nil
                                currentQuestion = nil
                                showAnswer = false
                                questionPool = []
                            }
                        }) {
                            Text("Change Topic")
                                .font(.system(size: 18, weight: .medium, design: .rounded))
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.purple)
                                .cornerRadius(15)
                                .shadow(color: .purple.opacity(0.3), radius: 8, x: 0, y: 4)
                        }

                        Button(action: {
                            withAnimation {
                                gameStarted = false
                                selectedTopic = nil
                                currentQuestion = nil
                                showAnswer = false
                                questionPool = []
                            }
                        }) {
                            Text("Exit Game")
                                .font(.system(size: 18, weight: .medium, design: .rounded))
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.red)
                                .cornerRadius(15)
                                .shadow(color: .red.opacity(0.3), radius: 8, x: 0, y: 4)
                        }
                    }
                    .padding(.horizontal, 20)
                }
            }
        }
    }

    func nextQuestion() {
        withAnimation {
            if questionPool.isEmpty {
                currentQuestion = nil
                selectedTopic = nil
            } else {
                currentQuestion = questionPool.removeFirst()
                showAnswer = false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
