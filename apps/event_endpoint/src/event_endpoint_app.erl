%%%-------------------------------------------------------------------
%% @doc event_endpoint public API
%% @end
%%%-------------------------------------------------------------------

-module(event_endpoint_app).

-behaviour(application).

%% Application callbacks
-export([start/2
        ,stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    event_endpoint_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
