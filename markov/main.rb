# encoding: utf-8
require './markov'

m = Markov.new(<<TEXT.downcase)
Der brisante Entscheid ging in der grossen Armeedebatte des Nationalrates gestern völlig unter: Der Nationalrat beschloss nicht nur, dass Ueli Maurer für eine 100'000 Mann starke Armee fünf Milliarden Franken erhalten soll, also 600 Millionen Franken mehr, als dies der Bundesrat beschlossen hat. Zusätzlich darf der Verteidigungsminister auch alle Einnahmen aus Verkäufen von Armeematerial und -liegenschaften sowie Erträge aus Vermietungen und Dienstleistungen für sich behalten.

Und das sind keine Peanuts: Es geht um rund 3 Milliarden Franken, wie dies CVP-Ständerat Bruno Frick kürzlich einmal ausgerechnet hat. Maurer muss der Mittwoch wie Weihnachten und Ostern zusammen vorgekommen sein. Eingefädelt hat diesen Coup still und leise sein Parteikollege, der Zürcher SVP-Nationalrat Bruno Zuppiger. Die Mehrheit der Sicherheitskommission wollte den Bundesrat mit einer Änderung des Finanzhaushaltsgesetzes beauftragen. Dies hätte aber mehr Zeit in Anspruch genommen, und der SVP war die Zusatzschleife wohl auch politisch zu riskant.

Es braucht keine Gesetzesanpassung

Zuppiger stellte darum den Antrag ans Parlament, der Bund solle den neuen Ausgabenplafond der Armee in Höhe von 5 Milliarden in den jährlichen Budgets um jene Summe erhöhen, die sich aus den Desinvestitionen und Vergütungen für Mieten und Dienstleistungen des VBS ergebe. «In verschiedenen Gesprächen mit Finanzexperten des Bundes sind wir zum Schluss gekommen, dass mit diesem Antrag die gewünschten Ziele schneller und besser zu erreichen sind», argumentierte der Zürcher. Es braucht dafür keine Gesetzesanpassung. Und er kam damit durch.

Dabei ist dieser Coup ein totaler Bruch mit den bisher geltenden finanzpolitischen Prinzipien des Bundes. Sämtliche Einnahmen aus Verkäufen, Vermietung und anderen Dienstleistungen flossen bis zu diesem Entscheid in die allgemeine Bundeskasse. Dort wurde das Geld je nach Prioritäten eingesetzt. Der Entscheid ist auch unfair gegenüber den anderen Departementen. Denn diese haben keine Immobilienwerte wie das VBS, die sie verkaufen könnten. Und auch wenn es einmal etwas zu verkaufen gibt, müssen sie das Geld in die Bundeskasse zahlen.

Grosser Ärger in den Departementen

Entsprechend gross ist der Ärger über den Entscheid des Nationalrates bei den sechs anderen Bundesräten. Allein, dass Ueli Maurer neu 5 statt 4,4 Milliarden Franken erhalten soll, bedeutet für seine Ratskolleginnen und -kollegen happige Einschnitte und Einsparungen, wie der «Tages-Anzeiger» vor den Sommerferien enthüllte. Die Zeitung stützte sich dabei auf Berechnungen der Eidgenössischen Finanzverwaltung: Kriegt Maurer die 5 Milliarden, müssen andere Bereiche 1 bis 1,5 Milliarden sparen.

Gemäss dem Papier der Finanzverwaltung bekäme der Verkehr 550 Millionen Franken weniger, Bildung und Forschung 440 Millionen, die Landwirtschaft müsste auf 220 Millionen verzichten und die Entwicklungshilfe auf 160 Millionen. Die Finanzierung der künftigen Verkehrsinfrastruktur wäre dann nicht mehr möglich. Und damit nicht genug: Während alle Departemente den Gürtel enger schnallen müssten, bekäme Maurer dann noch zusätzlich die Milliarden aus den Immobilienerlösen.

Ob das im Sinne der Bevölkerung ist, wird in den Departementen angezweifelt. «Die Bevölkerung würde andere Prioritäten setzen, sie würde mehr Mittel für Familien, für Bildung und Infrastruktur sprechen», argumentieren regierungsnahe Kreise.
TEXT

puts m.generate