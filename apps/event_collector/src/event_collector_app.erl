%%%-------------------------------------------------------------------
%% @doc event_collector public API
%% @end
%%%-------------------------------------------------------------------

-module(event_collector_app).

-behaviour(application).

%% Application callbacks
-export([start/2
        ,stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    event_collector_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
