#!/usr/local/bin/perl -w

# 'n-dcnc.pl - a 'N-DCNC to PortableFalse compiler in Perl
# v2000.08.12 Chris Pressey, Cat's Eye Technologies
# http://www.catseye.mb.ca/

$token = '';
sub scan
{
  exit(0) if not read(STDIN, $token, 1);
}

sub top
{
  return $_[$#_];
}

# print 'D';
print '[\b:a:b;[a;!b;/]?b;~[0]?]d:';
print "\n";
print '[b:a:0c:[a;0>][c;b;!+c:a;1-a:]#c;]e:';
print "\n";

scan();
push @back, 'Out';
push @stack, 0;

e:
  if (top(@stack) > 5)
  {
    if ($token eq '@')
    {
      scan();
      push @back, 'Nest';
      push @stack, 0;
      goto e;
Nest:
      scan();
    }
    elsif ($token =~ /^[AJQK23456789]$/)
    {
      $token = 1  if $token eq 'A';
      $token = 10 if $token eq 'J';
      $token = 11 if $token eq 'Q';
      $token = 12 if $token eq 'K';
      print "$token ";
      scan();
    }
    elsif ($token eq '`')
    {
      scan();
      print "$token;";
      scan();
    }
    else
    {
      print $token;
      scan();
    }
  } else
  {
    push @back, 'LHS';
    push @stack, top(@stack)+1;
    goto e;
LHS:
    if($token eq chr(top(@stack)+ord('*')))
    {
      if(top(@stack) == 0) { print '['; }
      if(top(@stack) == 5) { print '['; }
      scan();
      push @back, 'RHS';
      push @stack, top(@stack)+1;
      goto e;
RHS:
      print ']e;!' if top(@stack) == 0;
      print '+'    if top(@stack) == 1;
      print '%,0'  if top(@stack) == 2;
      print '-'    if top(@stack) == 3;
      print '$c:\:c;' if top(@stack) == 4;
      print ']d;!' if top(@stack) == 5;
      goto LHS;
    }
  }
  pop @stack;
  my $b = pop @back;
  goto LHS if $b eq 'LHS';
  goto RHS if $b eq 'RHS';
  goto Nest  if $b eq 'Nest';

Out:
print '%';
exit(0);
