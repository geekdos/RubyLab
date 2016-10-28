=begin
Nous allons nous arrêter un instant afin d'essayer de mettre en pratique tout ce que
l'on a vu jusqu'à maintenant à travers un exemple concret.
Pour cet exercice nous allons essayer de calculer la fréquence des mots
dans un texte en utilisant les éléments vus précédemment.

Avant de lancer tête baissée dans le code il est important de comprendre la logique de notre algorithme.
Ainsi nous pouvons découper cet exercice en plusieurs sous étapes :

    * Stocker le texte dans une variable
    * Obtenir les mots de notre texte dans un tableau (split)
    * Créer un hash pour stocker la fréquence des mots ({ "le" => 1, "la" => 3 ...})
    * Parcourir le tableau des mots, et remplir le hash en fonction.
    * Organiser le hash pour obtenir les mots les plus fréquents.
=end

text = "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n'a pas fait que survivre cinq siècles, mais s'est aussi adapté à la bureautique informatique, sans que son contenu n'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker."

lesMots = text.tr('.,', '').downcase.split(' ')
=begin
 //////// 1sr Method
  hashFreq = {}
  lesMots.each do |mot|
    if(hashFreq[mot])
      hashFreq[mot] += 1
    else
      hashFreq[mot] = 1
    end
  end

=end

#2ed Method
hashFreq = Hash.new(0)

lesMots.each do |mot|
    hashFreq[mot] += 1
end

hashFreq = hashFreq.sort_by { |mot, count| count}

hashFreq.reverse!

puts "Le mot qui apparait le plus souvent est le mot: ==> #{hashFreq.first()[0]}"

hashFreq.each do |mot|
  puts "Le mot \"#{mot[0]}\" apparait #{mot[1]} fois"
end

puts hashFreq.inspect

