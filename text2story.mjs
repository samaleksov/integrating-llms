import fs from "fs/promises";


const files = await fs.readdir('./data/text')

const test = []
const train = []
let testLines = ''
let trainLines = ''
let validLines = ''
let count = 0;
let tvCount = 0;

for (let file of files) {
    const story = await fs.readFile('./data/text/' + file, 'utf8')
    const lines = story.split('\n').filter(l => l.length > 10);
    if (count++ % 2 === 0) {
            test.push({ story })
            if (tvCount++ % 2 === 0) {
               testLines += lines.map(l => JSON.stringify({text: 'Въпрос: Дай ми извадка от Под игото.\nОтговор: '+l.trim()})).join('\n')
               testLines += '\n'
            } else {
               validLines += lines.map(l => JSON.stringify({text: 'Въпрос: Дай ми извадка от Под игото.\nОтговор: '+l.trim()})).join('\n')
               validLines += '\n'
            }
    } else {
            train.push({ story })
            trainLines += lines.map(l => JSON.stringify({text: 'Въпрос: Дай ми извадка от Под игото.\nОтговор: '+l.trim()})).join('\n');
            trainLines += '\n'
    }
}

await fs.writeFile('./data/BGStories/data00.json', JSON.stringify(test))
await fs.writeFile('./data/BGStories/data01.json', JSON.stringify(train))

await fs.writeFile('./data/lora/train.jsonl', trainLines)
await fs.writeFile('./data/lora/test.jsonl', testLines)
await fs.writeFile('./data/lora/valid.jsonl', validLines)
