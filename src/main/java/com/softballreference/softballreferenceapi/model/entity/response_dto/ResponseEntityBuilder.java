package com.softballreference.softballreferenceapi.model.entity.response_dto;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import com.softballreference.softballreferenceapi.model.entity.StatLine;
import com.softballreference.softballreferenceapi.model.entity.TeamLeague;
import com.softballreference.softballreferenceapi.model.entity.TeamLeaguePlayer;

/**
 * A utility helper class that builds the response DTO objects (containing any
 * non-mapped properties) from their entity equivalents.
 */
public class ResponseEntityBuilder {

    /**
     * Builds a {@link SummaryStatLineResponse} object. The entire thing can be
     * built from a lazy-loaded, attached, hibernate {@link TeamLeague} entity.
     * 
     * @param teamLeague the {@link TeamLeague} entity to build the response from
     * @return the filled in {@link SummaryStatLineResponse}
     */
    public static SummaryStatLineResponse buildSummaryStatLineResponse(TeamLeague teamLeague) {
        SummaryStatLineResponse summaryStatLineResponse = new SummaryStatLineResponse();

        summaryStatLineResponse.setTeamLeagueId(teamLeague.getId());
        summaryStatLineResponse.setTeam(teamLeague.getTeam().getName());
        summaryStatLineResponse.setLeague(teamLeague.getLeague().getName());
        List<PlayerResponse> playerResponses = new ArrayList<PlayerResponse>();
        teamLeague.getTeamLeaguePlayers().forEach(tLP -> playerResponses.add(buildPlayerResponse(tLP)));
        summaryStatLineResponse.setPlayers(playerResponses);
        /*
         * When building an accumulated object, it needs statlines. For the TeamLeague
         * level, it needs all the statlines of all the players. Therefore I could do
         * the players accumulated calculation first, and then build and accumulated on
         * THOSE accumulated.statLines.
         */
        summaryStatLineResponse.setAccumulated(buildAccumulatedResponse(
                summaryStatLineResponse.getPlayers().stream().map(PlayerResponse::getAccumulated)
                        .map(AccumulatedResponse::getStatLine).collect(Collectors.toList())));

        return summaryStatLineResponse;
    }

    /**
     * Builds a {@link PlayerResponse} object. The entire thing can be built from a
     * lazy-loaded, attached, hibernate {@link TeamLeaguePlayer} entity.
     *
     * @param teamLeaguePlayer the {@link TeamLeaguePlayer} entity to build the
     *                         response from
     * @return the filled in {@link PlayerResponse}
     */
    public static PlayerResponse buildPlayerResponse(TeamLeaguePlayer teamLeaguePlayer) {
        PlayerResponse playerResponse = new PlayerResponse();

        playerResponse.setTeamLeaguePlayerId(teamLeaguePlayer.getId());
        playerResponse.setPlayerName(teamLeaguePlayer.getPlayer().getName());
        // must convert to StatLineResponses first.
        List<StatLineResponse> statLineResponses = new ArrayList<StatLineResponse>();
        teamLeaguePlayer.getStatLines().forEach(sL -> statLineResponses.add(buildStatLineResponse(sL)));
        playerResponse.setAccumulated(buildAccumulatedResponse(statLineResponses));

        return playerResponse;
    }

    public static StatLineResponse buildStatLineResponse(StatLine statLine) {
        StatLineResponse statLineResponse = new StatLineResponse();

        return statLineResponse;
    }

    /**
     * Builds a special {@link AccumulatedResponse} object. This object doesn't map
     * directly to an entity in the database, but is built by summing all of the
     * passed in {@link StatLineResponse} objects and accumulating them.
     * 
     * @param statLines the {@link StatLineResponse} objects to accumulate
     * @return the stats accumulated into an {@link AccumulatedResponse}
     */
    public static AccumulatedResponse buildAccumulatedResponse(List<StatLineResponse> statLines) {

    }
}