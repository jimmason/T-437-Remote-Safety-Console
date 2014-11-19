%%%-------------------------------------------------------------------
%%% @author jamesmason
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. Nov 2014 21:05
%%%-------------------------------------------------------------------
-module(t437_sup).
-behaviour(supervisor).

-export([start_link/0]).
-export([init/1]).

start_link() ->
  supervisor:start_link(?MODULE, []).

init([]) ->
  {ok, {{one_for_one, 1, 5},
    [{console,
      {t437_fsm, start_link, []},
      permanent, 5000, worker, [t437_fsm]}]}}.
