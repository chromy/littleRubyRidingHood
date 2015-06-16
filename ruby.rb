# Little Red Riding Hood by Leanne Guenther


# Once upon a time, there was a little girl who lived in a village near the forest.
forest = Location.new()
littleGirl = Character.new()
littleGirl.location = forest.village

# Whenever she went out, the little girl wore a red riding cloak, so everyone in the village called her Little Red Riding Hood.

littleGirl.clothes.add(Cloak.new(Color.red))
littleGirl.name = "Little "+littleGirl.clothes.first.color+" Riding Hood"

# One morning, Little Red Riding Hood asked her mother if she could go to visit her grandmother as it had been awhile since they'd seen each other.

mother = Character.new()
grandmother = Character.new()

morning = true
while morning
	littleGirl.asks(mother,littleGirl.canVisit(grandmother.location))
	break
end

# "That's a good idea," her mother said.  So they packed a nice basket for Little Red Riding Hood to take to her grandmother.

mother.says(littleGirl,"That's a good idea")
littleGirl.basket = Basket.new()
littleGirl.basket.isPacked = true

# When the basket was ready, the little girl put on her red cloak and kissed her mother goodbye.

while littleGirl.basket.isReady != nil
	littleGirl.wears(littleGirl.clothes.first)
	littleGirl.kisses(mother,"good bye")
	littleGirl.basket.isReady = true
end

# "Remember, go straight to Grandma's house," her mother cautioned.  "Don't dawdle along the way and please don't talk to strangers!  The woods are dangerous."

mother.cautions(littleGirl,"Remember, go straight to Grandma's house")
mother.says(littleGirl,"Don't dawdle along the way and please don't talk to strangers!  The woods are dangerous.")

# "Don't worry, mommy," said Little Red Riding Hood, "I'll be careful."

littleGirl.says(mother,"Don't worry, mommy,")
littleGirl.says(mother,"I'll be careful.")

# But when Little Red Riding Hood noticed some lovely flowers in the woods, she forgot her promise to her mother.  

littleGirl.location = forest.woods
flowers = Flower.new("lovely")
littleGirl.sees(flowers)
littleGirl.memory = littleGirl.memory.sub("I'll be careful.","")

# She picked a few, watched the butterflies flit about for awhile, listened to the frogs croaking and then picked a few more. 

littleGirl.items.add(flowers)
littleGirl.sees(Butterflies.new())
littleGirl.listens(Frogs.new())
littleGirl.items.add(flowers)

# Little Red Riding Hood was enjoying the warm summer day so much, that she didn't notice a dark shadow approaching out of the forest behind her...

setting = Setting.new("summer","warm","daytime")
littleGirl.enjoys(setting)
darkShadow = Character.new()

# Suddenly, the wolf appeared beside her.

wolf = darkShadow
wolf.location = littleGirl.location

# "What are you doing out here, little girl?" the wolf asked in a voice as friendly as he could muster.

wolf.asks(littleGirl,"What are you doing out here, little girl?")

# "I'm on my way to see my Grandma who lives through the forest, near the brook,"  Little Red Riding Hood replied.

littleGirl.replies(wolf,"I'm on my way to see my Grandma who lives through the forest, near the brook,")

# Then she realized how late she was and quickly excused herself, rushing down the path to her Grandma's house. 

setting.time = "late"
littleGirl.enjoys(setting)
littleGirl.location = forest.pathTo(grandmother)

# The wolf, in the meantime, took a shortcut...

wolf.location = forest.grandmothers

# The wolf, a little out of breath from running, arrived at Grandma's and knocked lightly at the door.

wolf.outOfBreath = true
wolf.knocks(forest.grandmothers.door,0.1)

# "Oh thank goodness dear!  Come in, come in!  I was worried sick that something had happened to you in the forest," said Grandma thinking that the knock was her granddaughter.

grandmother.says(wolf, "Oh thank goodness dear!  Come in, come in!  I was worried sick that something had happened to you in the forest")

# The wolf let himself in.  Poor Granny did not have time to say another word, before the wolf gobbled her up!

wolf.location = forest.grandmothers.cottage
wolf.stomach.add(grandmother)
grandmother = nil

# The wolf let out a satisfied burp, and then poked through Granny's wardrobe to find a nightgown that he liked.  He added a frilly sleeping cap, and for good measure, dabbed some of Granny's perfume behind his pointy ears.

wolf.burps()

forest.grandmothers.cottage.wardrobe.each do |newClothing|
	if clothing == nightgown || clothing == sleepingCap
		wolf.clothes.add(newClothing)
	end
end

# A few minutes later, Red Riding Hood knocked on the door.  The wolf jumped into bed and pulled the covers over his nose.  "Who is it?" he called in a cackly voice.

sleep(18000)
wolf.location = forest.grandmothers.cottage.bed
wolf.clackles(littleGirl,"Who is it?")

# "It's me, Little Red Riding Hood."

littleGirl.says(wolf as grandmother,"It's me, Little Red Riding Hood.")

# "Oh how lovely!  Do come in, my dear," croaked the wolf.

wolf.croaks(littleGirl,"Oh how lovely!  Do come in, my dear,")

# When Little Red Riding Hood entered the little cottage, she could scarcely recognize her Grandmother.

littleGirl.location = forest.grandmothers.cottage
littleGirl.sees(wolf as grandmother)

# "Grandmother!  Your voice sounds so odd.  Is something the matter?" she asked.

littleGirl.asks(wolf as grandmother,"Grandmother!  Your voice sounds so odd.  Is something the matter?")

# "Oh, I just have touch of a cold," squeaked the wolf adding a cough at the end to prove the point.

wolf.squeaks(littleGirl, "Oh, I just have touch of a cold")
wolf.cough()

# "But Grandmother!  What big ears you have," said Little Red Riding Hood as she edged closer to the bed.

littleGirl.location = forest.grandmothers.cottage.bed
littleGirl.says(wolf as grandmother, "But Grandmother!  What big ears you have")

# "The better to hear you with, my dear," replied the wolf.

wolf.says(littleGirl, "The better to hear you with, my dear")

# "But Grandmother!  What big eyes you have," said Little Red Riding Hood.

littleGirl.says(wolf as grandmother, "But Grandmother!  What big eyes you have")

# "The better to see you with, my dear," replied the wolf.

wolf.replies(littleGirl, "The better to see you with, my dear,")

# "But Grandmother!  What big teeth you have," said Little Red Riding Hood her voice quivering slightly.

littleGirl.says(wolf as grandmother, "But Grandmother!  What big teeth you have")

# "The better to eat you with, my dear," roared the wolf and he leapt out of the bed and began to chase the little girl.

wolf.roars(littleGirl, "The better to eat you with, my dear")
wolf.location.moveToward(littleGirl.location.to_f * Time.new().to_i)

# Almost too late, Little Red Riding Hood realized that the person in the bed was not her Grandmother, but a hungry wolf.

littleGirl.realizes(grandmother = wolf)

# She ran across the room and through the door, shouting, "Help!  Wolf!" as loudly as she could.

littleGirl.location = forest.grandmothers.cottage.outside
littleGirl.shouts("Help!  Wolf!")

# A woodsman who was chopping logs nearby heard her cry and ran towards the cottage as fast as he could.

woodsman = Character.new()
woodsman.chops(forest.log(1))
woodsman.location = forest.grandmothers.cottage + rand(-5 .. 5)
woodsman.listens()
while woodsman.location != forest.grandmothers.cottage
	woodsman.location.runsToward(forest.grandmothers.cottage,1.0)	
end

# He grabbed the wolf and made him spit out the poor Grandmother who was a bit frazzled by the whole experience, but still in one piece.

grandmother = wolf.stomach.last
grandmother.isFrazzled = true
wolf.stomach = wolf.stomach.removeLast()

# "Oh Grandma, I was so scared!"  sobbed Little Red Riding Hood, "I'll never speak to strangers or dawdle in the forest again."

littleGirl.says(grandmother, "Oh Grandma, I was so scared!")
littleGirl.says(grandmother, "I'll never speak to strangers or dawdle in the forest again.")

# "There, there, child.  You've learned an important lesson.  Thank goodness you shouted loud enough for this kind woodsman to hear you!"

grandmother.says(littleGirl,"There, there, child.  You've learned an important lesson.  Thank goodness you shouted loud enough for this kind woodsman to hear you!")

# The woodsman knocked out the wolf and carried him deep into the forest where he wouldn't bother people any longer.

woodsman.swings()
wolf.isKnockedOut = true
wolf.location = forest.deep

# Little Red Riding Hood and her Grandmother had a nice lunch and a long chat.
	
lunch = Lunch.new()
littleGirl.eat(lunch)
grandmother.eat(lunch)

