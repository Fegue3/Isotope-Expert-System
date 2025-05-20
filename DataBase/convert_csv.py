import csv

with open('livechart.csv', newline='', encoding='utf-8') as csvfile:
    reader = csv.DictReader(csvfile)

    with open('isotopos.pl', 'w', encoding='utf-8') as prolog_file:
        for row in reader:
            numero_atomico = row['z']
            numero_neutroes = row['n']
            numero_massa = int(row['z']) + int(row['n'])
            simbolo = row['symbol']
            tipo_decaimento = row['decay_1']
            percentagem = row['decay_1_%'] or '100'
            estabilidade = 'estavel' if row['half_life'].lower() == 'stable' else 'instavel'

            # Propriedades adicionais
            raio_nuclear = row['radius']
            spin_paridade = row['jp']
            massa_atomica = row['atomic_mass']
            excesso_massa = row['massexcess']
            energia_ligacao = row['binding']
            abundancia = row['abundance']
            descoberta = row['discovery']

            nome = f"{simbolo}-{numero_massa}"

            prolog_file.write(
                f"isotopo(\n"
                f"    nome('{nome}'),\n"
                f"    simbolo('{simbolo}'),\n"
                f"    numero_atomico({numero_atomico}),\n"
                f"    numero_neutroes({numero_neutroes}),\n"
                f"    numero_massa({numero_massa}),\n"
                f"    estabilidade({estabilidade}),\n"
                f"    tipo_decaimento('{tipo_decaimento}({percentagem}%)'),\n"
                f"    raio_nuclear({raio_nuclear}),\n"
                f"    spin_paridade('{spin_paridade}'),\n"
                f"    massa_atomica({massa_atomica}),\n"
                f"    excesso_massa({excesso_massa}),\n"
                f"    energia_ligacao({energia_ligacao}),\n"
                f"    abundancia('{abundancia}'),\n"
                f"    descoberta({descoberta})\n"
                f").\n\n"
            )
