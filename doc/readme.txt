                               'N-DCNC
                               -------
                 The Official Language of Pride and Envy
                 ---------------------------------------

Last updated Aug 8 2000 Chris Pressey, Cat's Eye Technologies
                                       http://www.catseye.mb.ca/

What is 'N-DCNC?
----------------

Besides just tasting good when served with crackers and white wine,
'N-DCNC is a computer programming language as well.

'N-DCNC provides the programmer with sophisticated features such
as subtraction, bodaceous syntax elements such as infix operators,
powerful abstractions such as single-character variable names, and
groundbreakingly radical concepts such as side-effects.

Warning and History
-------------------

'N-DCNC was reverse-engineered from spaceflight control systems
found aboard crashed extraterrestrial vehicles.  It was related
first-hand to yours truly by a shifty figure in a trenchcoat
known to me only as "Deep Copy".  Over coffee and doughnuts at a
local Tim Horton's, he described in hushed tones the following
language, claiming that he was part of the engineering team that
was subcontracted for the purpose of deciphering it.

As such, if you choose to use the 'N-DCNC language, I cannot be
not held responsible should various shadowy agents force themselves
into your home and erase all your computer files, OK?  Good.

There is also a strong, but hitherto unrealized connection between
this language and manufactured glam pop bands.  For example,
'N-DCNC does not write it's own music nor play it's own instruments.
It has been known to lip-synch to a pre-recorded soundtrack.

The Structure of an 'N-DCNC Program
-----------------------------------

An 'N-DCNC program consists of one big expression.  Save those
semicolons; you won't need them here!

An expression contains many primitive terms connected by infix
operators.  There are as many levels of precedence as there are
operators, one on each level.  The precedence of an operator
depends on it's position in the ASCII table; lower ASCII values
means lower precedence (isn't that *much* easier to remember?)

The infix operators are (from lowest to highest precedence:)

  *     Wally     likes cats & bunnies    multiply/loop
  +     Bill      shy but deep            add
  ,     Chaz      enjoys parties          input/output
  -     Jon       a real heartbreaker     subtract
  .     Petrov    provably happy          assignment
  /     DIV       enjoys decision-making  int-divide/if

A sub-expression enclosed in parentheses like so (1+2) has
a higher precedence than the entire expression it occurs in
(as foreign and unnatural as this may seem, it's true...)

Terms are pretty boring, but let's examine them anyway.
The symbols

  A 2 3 4 5 6 7 8 9 J Q K

represent the integers from one to twelve.  The symbol A
represents thirteen instead of one when aces are high.
Aces are only high in certain restricted situations, such
as when the compiler mistakenly assumes they are high.
To represent zero, you, the programmer, must use 7-7 or
anything of a similar nature.

Imperative Programming Becomes Possible
---------------------------------------

Lower-case letters represent variables.  Well, kind of.
In fact, the variables aren't often too happy with the
respresentation they get from their elected lower-case
letters, and see them as trough-feeding, self-serving,
two-faced, and devoid of moral fibre.

You can assign to a variable with something like Z.Q
To increment or decrement a variable try Z.(z+A) or Z.(z-A)

  It turns out Deep Copy gave me the wrong impression,
  here; I thought he meant that lower-case letters were
  rvalue-type variables and upper-case letters were their
  lvalue-type equivalents.  As it turns out, this is only
  one possible interpretation.  The notation that seems
  to actually have been used is closer to `z for an lvalue.

Try to avoid letters from the start of the alphabet
(a,b,c,d,e,f...) because they're 'taboo': likely used
for other internal purposes (as sad as that is.)

Not much need to explain addition and subtraction,
except perhaps to those who do not already grok such
concepts; if you are a member of this set, seriously
consider a course on remedial arithmetic.

But the other operators need some explanation, because
they tend to stray from the laws of computer programming,
if not the laws of physics themselves.  Well, no, OK,
just the first one, and yes, I know, there are no "laws"
when it comes to computer programming, but, so, well,
er, ...

Anyway, multiplication is defined thus, in some fictional
pseudocode language (which is not included with 'N-DCNC):

mul(by-value int a, by-name int b) =
{
  c = 0;
  while a > 0
  {
    c = c + do(b); a--;
  }
  c;
}

Or, to say it in PortableFalse:
  [b:a:0c:[a;0>][c;b;!+c:a;1-a:]#c;]e:

Note that b is an expression instead of a simple value.
Unlike other values it is passed as a 'thunk' - a parameterless
function.  Multiplication does not automatically evaluate the
thunk that is b; a has to be greater than zero at some point.

This is why we have normal-order evaluation instead of
eager evaluation - so that multiplication can cause side
effects that are our loops that let us do all that neat
solving-any-problem stuff, availability of half-infinite
lengths of tape notwithstanding.

So if we say
  K*(7,A-A)
What we will get on the standard output is 12 BELs.
(But how do we know whether it is noon or midnight?
Look at the sky - if there's a big ball of fire up there,
it's noon.)

By changing the a variable in the loop (it's a global
variable after all,) you can theoretically cause the loop
to never terminate, or terminate based on some magical
condition. (That is, iff magical conditions are locally
defined to be synonymous with logical conditions for the
purposes of the previous sentence.)

Division has a similar relationship with the simple
and super-common 'if' statement.  In a division by zero,
the numerator's thunk isn't evaluated.  But in division
by one or anything else, it is.

Again with the fictional pseudocode (sold seperately,
may not be exactly as illustrated):

div(by-name int a, by-value int b) =
{
  if (b = 0)
  {
    0;
  }
  do(a) / b;
}

In PortableFalse:
  [\b:a:b;[a;!b;/]?b;~[0]?]d:


Summary and Closing Arguments
-----------------------------

One day all computer programmers will be replaced by robots,
and they'll all code in 'N-DCNC.  But this will only be possible
on new, extremely large (and noisy) machines using a strange new
technology called 'relays'.  These new 'super-'computers will be
so large and expensive that only the five richest software
companies will be able to afford to automate their programming
department.  The rest will probably continue to use the present-
day software engineering model, that is, obtaining galleys full
of slaves, releasing the code they come up with to the customer
as a finished product, then "supporting it into existance" as
the customer whines and bitches about how their system doesn't
work the way they or any sane person would expect it to.

Appendix 7: EBNF Grammar for 'N-DCNC
------------------------------------

'N-DCNC := E(0).
E(n)    := E(n+1) {O(n) E(n+1)}.
Prim    := "(" E(0) ")" | Digit | ["`"] Var.
Digit   := one of "A23456789JQK".
Var     := one of "abcdefghijklmnopqrstuvwxyz".

O = ('*', '+', ',', '-', '.', '/').
E(6) = Prim.

Appendix 22: About the 'N-DCNC Compilers
----------------------------------------

Both 'N-DCNC compilers compile 100% pure 'N-DCNC code to Wouter
van Oortmerssen's False language (actually, his PortableFalse
variant.)

"100% pure" means that the input code contains no syntax errors,
because neither compiler goes out of it's way to bother with such
irrelevant trivia.  Dammit Jim, they're compilers, not proofreaders.

False and PortableFalse are trademarks of $#%!

'N-DCNC is not a trademark of anything; in fact, I'm pretty sure
'N-DCNC and its compilers are a mere hallucination.  Hmm...

DISCLAIMER: 'N-DCNC and its compilers are a mere hallucination.
Therefore I cannot be held responsible for anything they may
or may not do or appear to do.

Aggregation of false.c into this package as an easement for
playing with 'N-DCNC will probably be construed by Wouter as a
hostile intellectual-property manouevre to subvert his FALSE
dynasty.  He'll be siccing his army of lawyers on me in a matter
of hours I'm sure.  So enjoy 'N-DCNC while it remains legally
feasible to do so.

* 'n-dcnc.pl

  Written in only slightly obfuscated Perl, this compiler (mostly)
  works.

* 'n-dcnc.bf

  [This doesn't exist yet.  I've tried four times and decided I had
  better take a long break (like, at least a week or two) before
  trying again.  I've come to realize that, despite having invented
  the language, I'm a terrible Befunge programmer.  My mistake here
  is probably trying to squash it too much.  Still, I wanted to get
  SOMETHING out the door for the Essies, early, just in case.]

Appendix 22a: About the Compile Cycle
-------------------------------------

Mainly about 'n-dcnc.bf [which doesn't exist yet, but see the last
three attempts,] but mostly applies to 'n-dcnc.pl as well.

We store a stack called the 'call stack' on the 0'th row of
space (0,0)-(79,0) or even further in Befunge-97 or Perl.

The pointer to the top of this stack is stored at (0, 1).

We store the last token read at (1, 1).  So the program looks like:

cccccccccccccccc....
tkabcodecodecode....
>

where the program itself begins at >.  The first c contains a v,
and t contains a space, both of which will be overwritten by the
startup code.  We'll use (2, 1), (3, 1) for other scratch variables
if the need arises.

(4, 1) and on are 4-cell chunks of output boilerplate in
PortableFalse used by the gencode routine, a reference to which
is made below.

Speaking of which, the startup code @ (0, 2) consists of:

- writing a 0 into t
- dumping the PortableFalse runtime library for 'N-DCNC to stdout
- pushing an 0 (OUT) onto the call stack
- scanning the first token into k

There is then a main parse loop @ (0, 5), which consists of:

- Is the TOS > 5, that is, have we recursed down through all the
  available infix operators, and should we look for terms now?

- If so, we check k for an open paren.  If found it indicates there
  is a sub-expression.  We scan a new symbol into k, push 1 (NEST)
  onto the call stack, push a zero onto the stack, and go back to
  the start of the main parse loop.

- If there's no open paren, we check for 2-9 or J or Q or K or A and
  if so, generate a constant.  Or, we check for a-z and generate a
  variable access.  In both cases we simply scan for new tokens
  and fall through to the 'common tail', described below.

- On the other hand, what if the TOS is <= 5?  Well, we push 2
  (LHS) onto the call stack.  We also duplicate the TOS, increment
  it, and jump back to the beginning of the main parse loop.

We also have a 'common tail' @ (??, ??), which consists of
some code and then an 'on goto' type branch:

- discard the top stack element
- pop the call stack into a temporary variable and
  jump based on it's value, which may be OUT, NEST, LHS, or RHS:

  0 OUT: jump to the end of the translation logic; print the
         PortableFalse postlude (currently just a '%') and exit.

  1 NEST: scan a token and fall through to the common tail (again.)

  2 LHS: if the current token is not equal to the value on the
         top of the stack plus '*', fall through to the common tail.

         If it is, print a '[' if the TOS is 0 or 5 (to lazy-ize
         the parameters), scan another token, push 3 (RHS) onto
         the call stack, increment the top of the stack and go
         back to the start of the main parse loop.

  3 RHS: based on the top of the stack, print out a snippet of
         PortableFalse code based on the current operator, then
         fall through to LHS.

And that's basically it.  Easy, really.  That's what a recursive
descent parser looks like when you don't use recursion, or well,
you don't use any built-in call/return/function mechanism at all
because there essentially isn't any...

Appendix 22q. Befunge Idioms
----------------------------

  ~11p is scan a token
  11g is get current token

  01g      is get the call stack ptr (an x coordinate)
  ?01p     is set the call stack ptr
  01g1+01p is increment the call stack ptr
  01g1-01p is decrement the call stack ptr
  01g0g    is get the value on the top of the call stack
  ?01g0p   is set the value on the top of the call stack

  01g1-:01p0g       is pop the call stack
  ?01g0p01g1+01p    is push onto call stack

Appendix 3. Excerpts from the Author's 'N-DCNC Diary
----------------------------------------------------

May 12 2000.  Met a man who told me to call him "Deep Copy."  Not
really a pleasant guy.  But he seems interested in language design.

June 7 2000.  Deep Copy told me about a language he has access to
the specifications for.  Claims it was reverse-engineered from
spaceflight control systems found aboard crashed flying saucers.
He told me not to write anything he talked about down, but he knew
full well who I was and what I do so I assumed he had to be lying.
Or stupid.  If he didn't want me to write it down, he shouldn't
have told me.

July 26 2000.  Got a rough version of 'N-DCNC working and decided
it would really piss Deep Copy off if I submitted it for an
Esoteric Award...

August 8 2000.  Got a phone call from Deep Copy today.  Somehow he
had found out about 'N-DCNC being an Essy entry.  Also faxed over
some corrections along with a note about how my life could be in
jeopardy if I continued to pursue my interests in these
"Un-Canadian Activities". (???)

Glossary of Terms
-----------------

- Dom-ain't: a corporation with a name like MyTurn.com but
  with a doman name like myturninc.com.

- Draffle: the little personal items (Dilbert cartoons,
  fuzzy things with googly-eyes, etc) put in one's office or
  workspace in a vain attempt to make it more familiar.

- Meta-barber: the person who cuts your barber's hair.

- Precipitation Limbo: where the rain goes when it's not
  raining.

- Taunt Marquee: the route-identifying sign in the rear
  window of the bus you just missed.
