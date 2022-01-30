MAINFRAME = module/mainframe/src
OS4 = module/OS4/src
BOOST41 = module/boost41/src
LADYBUG = module/ladybug/src

VPATH = $(MAINFRAME):$(OS4):$(BOOST41):$(LADYBUG)

SRCS = ladybug.s bank2.s \
       core.s coreBank2.s buffer.s shell.s keyboard.s catalog.s \
       secondaryFunctions.s semiMerged.s xmem.s partial.s assignment.s \
       timer.s conversion.s ranges.s \
       boost.s ramed.s compile.s poll.s cat.s xmemory.s xeq.s \
       assign.s readrom16.s writerom16.s random.s partialKeys.s \
       compare.s delay.s returnStack.s luhn.s apx.s fixeng.s vmant.s \
       yntest.s alpha.s binbcds.s arithmetic.s code.s decode.s stack.s \
       bufferUtils.s \
       cn0b.s cn1b.s cn2b.s cn3b.s cn4b.s cn5b.s cn6b.s \
       cn7b.s cn8b.s cn9b.s cn10b.s cn11b.s \
       extfuns.s time.s extfuns2.s
OBJS = $(SRCS:%.s=obj/%.o)
OS4_COMBO = OS4-combo.mod

obj/%.o: %.s
	asnut -DHP41CX --core=newt -I$(OS4) -g --list-file=$(@:%.o=%.lst) -o $@ $<

all: $(OS4_COMBO)

$(OS4_COMBO): $(OBJS) OS4-combo.scm OS4-combo.moddesc
	lnnut -o $@ $^ -g --list-file=OS4-combo.lst --extra-output-formats=mod2

clean:
	rm $(OBJS) $(MOD)
