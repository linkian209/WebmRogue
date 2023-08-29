
#define INVITEM(type, stacksize, flags, plus) \
   ushort: type;      /* type      */ \
   ushort: 0;         /* next      */ \
   ulong:  stacksize; /* stacksize */ \
   uchar:  flags;     /* flags     */ \
   schar:  plus;      /* plus      */ \
   uchar:  0;         /* hotkey    */ \
   uchar:  0;         /* rustiness */ \
   uchar:0; uchar:0;  /* x, y      */ \
   ushort: 0;         /* padding   */ \

BEGIN_JUMPTAB(PLAYER_STARTING_INVENTORY, jt_class)
  JTENTRY(INVENTORY_FIGHTER,     1,  range(0,0))
  JTENTRY(INVENTORY_WIZARD,      1,  range(1,1))
  JTENTRY(INVENTORY_ARCHER,      1,  range(2,2))
  JTENTRY(INVENTORY_PRIEST,      1,  range(3,3))
  JTENTRY(INVENTORY_NECROMANCER, 1,  range(4,4))
  JTENTRY(INVENTORY_TUTORIAL,    1,  range(5,5))
  JTENTRY(INVENTORY_LICH,        1,  range(6,6))
END_JUMPTAB()

even;
export INVENTORY_FIGHTER;
uint: 5;
INVITEM(ITEM_WEAPON_MACE,       1,  ITEMFLAG_EQUIPPED+ITEMFLAG_IDENTIFIED, 0 )
INVITEM(ITEM_ARMR_GAUNTLETS,    1,  ITEMFLAG_EQUIPPED+ITEMFLAG_IDENTIFIED, 0 )
INVITEM(ITEM_ARMR_CLOAK,        1,  ITEMFLAG_EQUIPPED+ITEMFLAG_IDENTIFIED, 0 )
INVITEM(ITEM_ARMR_CHAIN,        1,  ITEMFLAG_EQUIPPED+ITEMFLAG_IDENTIFIED, 0 )
INVITEM(ITEM_TOOL_TORCH,        900, ITEMFLAG_EQUIPPED+ITEMFLAG_IDENTIFIED, 0)
INVITEM(ITEM_FOOD_RATION,       2,  ITEMFLAG_IDENTIFIED,                   0 )

export INVENTORY_WIZARD;
uint: 6;
INVITEM(ITEM_WEAPON_STAFF,      1,  ITEMFLAG_EQUIPPED+ITEMFLAG_IDENTIFIED, 0 )
INVITEM(ITEM_RING_ILLUMINATION, 1,  ITEMFLAG_EQUIPPED+ITEMFLAG_IDENTIFIED, 0 )
INVITEM(ITEM_ARMR_CLOAK,        1,  ITEMFLAG_EQUIPPED+ITEMFLAG_IDENTIFIED, 1 )
INVITEM(ITEM_BOOK_BASIC_SPELLS, 20, ITEMFLAG_IDENTIFIED,                   0 )
INVITEM(ITEM_WAND_LIGHTNING,    10, ITEMFLAG_IDENTIFIED,                   0 )
INVITEM(ITEM_FOOD_RATION,       1,  ITEMFLAG_IDENTIFIED,                   0 )

export INVENTORY_ARCHER;
uint: 5;
INVITEM(ITEM_WEAPON_BOW,        1,  ITEMFLAG_EQUIPPED+ITEMFLAG_IDENTIFIED, 1 )
INVITEM(ITEM_TOOL_LANTERN,      1,  ITEMFLAG_EQUIPPED+ITEMFLAG_IDENTIFIED, 0 )
INVITEM(ITEM_ARMR_LEATHER,      1,  ITEMFLAG_EQUIPPED+ITEMFLAG_IDENTIFIED, 0 )
INVITEM(ITEM_AMMO_ARROW,        30, ITEMFLAG_EQUIPPED+ITEMFLAG_IDENTIFIED, 0 )
INVITEM(ITEM_FOOD_RATION,       2,  ITEMFLAG_IDENTIFIED,                   0 )

export INVENTORY_PRIEST;
uint: 6;
INVITEM(ITEM_WEAPON_MACE,       1,  ITEMFLAG_EQUIPPED+ITEMFLAG_IDENTIFIED, 0 )
INVITEM(ITEM_TOOL_LANTERN,      1,  ITEMFLAG_EQUIPPED+ITEMFLAG_IDENTIFIED, 0 )
INVITEM(ITEM_ARMR_CLOAK,        1,  ITEMFLAG_EQUIPPED+ITEMFLAG_IDENTIFIED, 1 )
INVITEM(ITEM_FOOD_RATION,       2,  ITEMFLAG_IDENTIFIED,                   0 )
INVITEM(ITEM_BOOK_BASIC_PRAYERS,20, ITEMFLAG_IDENTIFIED,                   0 )
INVITEM(ITEM_TOOL_HOLYSYMBOL,   1,  ITEMFLAG_IDENTIFIED,                   0 )

export INVENTORY_NECROMANCER;
export INVENTORY_LICH;
uint: 6;
INVITEM(ITEM_WEAPON_CRYSTAL_DAGGER,1,ITEMFLAG_EQUIPPED+ITEMFLAG_IDENTIFIED,0 )
INVITEM(ITEM_ARMR_CLOAK,        1,  ITEMFLAG_EQUIPPED+ITEMFLAG_IDENTIFIED, 0 )
INVITEM(ITEM_BOOK_ANIMATION,    20, ITEMFLAG_IDENTIFIED,                   0 )
INVITEM(ITEM_FOOD_RATION,       1,  ITEMFLAG_IDENTIFIED,                   0 )
INVITEM(ITEM_TOOL_TORCH,        900, ITEMFLAG_EQUIPPED+ITEMFLAG_IDENTIFIED, 0)
INVITEM(ITEM_WAND_STRIKING,     15, ITEMFLAG_IDENTIFIED,                   0 )

export INVENTORY_TUTORIAL;
uint: 2;
INVITEM(ITEM_TOOL_LANTERN,      1,  ITEMFLAG_EQUIPPED+ITEMFLAG_IDENTIFIED, 0 )
INVITEM(ITEM_FOOD_RATION,       2,  ITEMFLAG_IDENTIFIED,                   0 )

