//
//  ViewController.swift
//  StreetFighters
//
//  Created by Gilmar Amaro on 09/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var arrayGame: [Game] = [
    Game(name: "Ryu", country: "japao", fightStyle: "Ansatsuken", nameDescription: "Um dos principais personagens não só de Street Fighter, mas também de toda a história dos videogames, Ryu é o primeiro nome que vem à cabeça quando falamos de jogos de luta. O seu visual inspirou a criação de outros personagens, além do Hadouken, seu golpe mais famoso que se tornou um monumento da cultura pop.", imageCharacter: "Ryu"),
    Game(name: "Ken", country: "Estados Unidos", fightStyle: "Ansatsuken", nameDescription: "Com o visual e habilidades parecidas, Ken foi criado para ser o grande rival de Ryu. O grande diferencial dos dois lutadores é a personalidade, Ken segue um estilo bad boy, rebelde e com a autoestima sempre em alta. Para alguns especialistas, o personagem foi pensado para o público norte-americano, assim a CAPCOM teria um protagonista no ocidente e outro no Japão.", imageCharacter: "Ken"),
    Game(name: "Sagat", country: "Tailândia", fightStyle: "Muay-Thai", nameDescription: "Depois de Japão, China e Estados Unidos, agora chegamos em um personagem da Tailândia. Sagat já chama a atenção pelo seu físico, medindo 2,26m e pesando 178Kg, além da sua popular pose de luta. A CAPCOM também caprichou no visual do personagem, com as faixas nos pulsos e nos tornozelos, a cicatriz no peito e um tapa-olho. Sagat é conhecido na franquia como “O Deus do Muay Thai”.", imageCharacter: "Sagat"),
    Game(name: "Guile", country: "Estados Unidos", fightStyle: "Pro Wrestling", nameDescription: "Grande símbolo do poder militar americano, Guile é mais um lutador que possui características únicas e um papel importante na franquia. O cabelo para cima, os cenários no Exército, a música tema e o clássico golpe Sonic Boom são características que tornam Guile um dos protagonistas em Street Fighter.", imageCharacter: "Guile"),
    Game(name: "Chun-Li", country: "China", fightStyle: "Kung Fu", nameDescription: "Chun-Li é uma agente da Interpol que busca vingança pelo assassinato de seu pai pelo vilão M. Bison. Ela é uma lutadora habilidosa que usa sua velocidade e agilidade para atacar seus oponentes com golpes rápidos e precisos. Seus movimentos especiais incluem o Kikoken (um projétil de energia), o Spinning Bird Kick (um ataque giratório com as pernas) e o Hyakuretsukyaku (uma série rápida de chutes). Além disso, Chun-Li é conhecida por sua aparência icônica, com seus trajes característicos e seu penteado característico em coques duplos.", imageCharacter: "ChunLi"),
    Game(name: "Blanka", country: "Brasil", fightStyle: "Movimentos selvagens e ataques elétricos", nameDescription: "Blanka é um personagem que foi criado e criado na selva amazônica do Brasil, onde aprendeu a sobreviver usando suas habilidades naturais. Ele é um personagem que se baseia na velocidade e na agilidade, usando seus movimentos de rolamento e ataques com garras para atacar seus oponentes. Blank também é capaz de gerar eletricidade em torno de seu corpo, que pode ser usado para atacar seus oponentes ou protegê-lo de ataques. Blank é um personagem popular na série devido à sua aparência única e sua jogabilidade divertida e ágil.", imageCharacter: "Blanka"),
    Game(name: "Akuma", country: "Japao", fightStyle: "Ansatsuken", nameDescription: "Akuma é um lutador poderoso e misterioso que busca aperfeiçoar suas habilidades de luta e alcançar a verdadeira maestria nas artes marciais. Ele é conhecido por seus movimentos característicos, como a bola de fogo Gohadoken e a técnica Shun Goku Satsu (ou Raging Demon), que é capaz de derrotar o oponente em um único golpe, independentemente da saúde que ele tenha. Akuma é muitas vezes retratado como um personagem sombrio e impiedoso, disposto a matar seus oponentes em batalha para provar sua superioridade.", imageCharacter: "Akuma"),
    Game(name: "M.Bison", country: "DEsconhecido", fightStyle: "Poder Psíquico", nameDescription: "Bison é retratado como um líder cruel e impiedoso, que busca conquistar o mundo usando a tecnologia avançada e suas habilidades psíquicas. Ele é um dos lutadores mais poderosos da série, capaz de enfrentar vários oponentes ao mesmo tempo e até mesmo desafiar os deuses em batalha. Bison também é conhecido por seu famoso movimento especial, o Psycho Crusher, que o permite voar pelo ar em alta velocidade enquanto ataca seus oponentes com um ataque giratório.", imageCharacter: "Bison"),
    Game(name: "Dhalsim", country: "India", fightStyle: "Yoga Esotérico", nameDescription: "Dhalsim tem a capacidade de esticar seus membros em distâncias incríveis, permitindo que ele ataque seus oponentes de longe. Ele também é capaz de controlar o fogo e tem vários movimentos baseados em chamas, como o Yoga Flame e o Yoga Inferno. Dhalsim é um personagem defensivo que pode manter seus oponentes afastados com seus ataques de longo alcance e evasões rápidas. Ele é um personagem bastante popular na série devido à sua jogabilidade única e sua aparência icônica.", imageCharacter: "Dhalsim"),
    Game(name: "Zangief", country: "União Soviética", fightStyle: "Wrestling", nameDescription: "Zangief é um lutador poderoso que usa seus movimentos de luta livre para agarrar e jogar seus oponentes. Ele é capaz de executar vários suplexes e outros movimentos de luta livre, como o Flying Power Bomb e o Spinning Piledriver. Zangief é um personagem de força bruta que pode absorver uma quantidade considerável de dano antes de ser nocauteado. Ele é conhecido por ser um dos personagens mais difíceis de jogar na série devido à sua jogabilidade baseada em agarrões e sua falta de movimentos de longo alcance.", imageCharacter: "Zangief"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGAme()
    }
    func setupGAme() {
        myTableView.dataSource = self
        myTableView.delegate = self
        let uiNIB = UINib(nibName: "MyCustomTableViewCellXIB", bundle: nil)
        myTableView.register(uiNIB, forCellReuseIdentifier: "CellXIB")
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayGame.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CellXIB", for: indexPath) as? MyCustomTableViewCellXIB {
            cell.setupGame(game: arrayGame[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let myScreen = storyboard?.instantiateViewController(withIdentifier: "screenTwo") as? SecondViewController {
            myScreen.myScreenTwo = arrayGame[indexPath.row]
            self.navigationController?.pushViewController(myScreen, animated: true)
        }
    }
}
