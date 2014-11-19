%%%-------------------------------------------------------------------
%%% @author jamesmason
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 18. Nov 2014 23:37
%%%-------------------------------------------------------------------
-module(t437_app).
-behaviour(application).
-export([start/2, stop/1]).

start(_Type, _Args) ->
  t437_sup:start_link().

stop(_) ->
  ok.