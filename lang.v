(** * Prototype  *)

Module Type Sig.
  Parameter A Opt:Type.
  Parameter le : A -> A -> Prop.
  Parameter is_SA is_GA is_rand_sel: Opt -> Prop.
  Infix "<=" := le : order_scope.
  Open Scope order_scope.
  
  Axiom sa_is_ga: forall opt, is_SA opt -> is_GA opt.
  Axiom ga_is_sa: forall opt, is_GA opt -> is_SA opt.
  Axiom sa_is_random_select: forall opt, is_SA opt -> is_rand_sel opt.
End Sig.

Module Type OPT_THOREMS.
  Declare Module O: Sig.
  