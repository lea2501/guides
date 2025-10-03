# compile
```shell
$ mkdir -p ~/src
$ cd ~/src
# apt-get install autoconf gcc libc6-dev libncursesw5-dev libx11-dev #(debian/devuan)
$ git clone https://github.com/sulkasormi/frogcomposband.git
$ cd frogcomposband
$ sh autogen.sh
$ ./configure --prefix $HOME/.frogcomposband
$ make clean
$ make
$ make install
```

# Usage
```shell
$ ~/.frogcomposband/games/frogcomposband -uUser -mgcu -- -n1
```

# Tips
```text
Q: I wanted to knos if there's an order to get to the different dungeons in the wilderness map.
A: there isn't any one right order to do the dungeons in; although in the early game it generally goes something like Warrens->Hideout->Icky Cave (if you like it...)->Tidal Cave->Labyrinth->Orc Cave/Troll Cave->Lonely Mountain etc. Labyrinth and Camelot are frequently tagged on a single wilderness trip, since they both start at dl 20 and are in the same general area west of Outpost. It is very typical for players to have a toe in many uncompleted dungeons simultaneously, and there's a lot of variance in when players get started in the Angband dungeon and how much time they spend there. Some people like to go there early and kill as many of the random level guardians as quickly as they can, but it's also not that rare to basically skip Angband for most of the game. 

Note also that town quests are a really big part of the game, and deciding exactly when to do those is probably a more important call than deciding when to enter (or engage the boss of) any particular dungeon. Quests can be very rewarding, but they also have a nasty tendency to kill characters.

Dead uniques stay dead... mostly, anyway You can return to Warrens as many times as you wish, but if you already killed Mughash you won't run into him again, nor will there be another bottom guardian.

Each magic realm has two town books and two dungeon books (apart from Arcane, which has four town books and no dungeon books). Note that while you might not be able to study new spells right now, you do have the option of studying a previously learned spell again to gain more proficiency in it. See ?m for more details on how book magic works in FrogComposband.
```
