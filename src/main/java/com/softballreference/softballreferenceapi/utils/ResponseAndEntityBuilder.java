package com.softballreference.softballreferenceapi.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import com.softballreference.softballreferenceapi.model.entity.Game;
import com.softballreference.softballreferenceapi.model.entity.League;
import com.softballreference.softballreferenceapi.model.entity.StatLine;
import com.softballreference.softballreferenceapi.model.entity.Team;
import com.softballreference.softballreferenceapi.model.entity.TeamLeague;
import com.softballreference.softballreferenceapi.model.entity.TeamLeaguePlayer;
import com.softballreference.softballreferenceapi.model.entity.request_dto.GameRequest;
import com.softballreference.softballreferenceapi.model.entity.request_dto.StatLineRequest;
import com.softballreference.softballreferenceapi.model.entity.response_dto.AccumulatedResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.GamePostResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.GameStatLineResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.GameSummaryResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.LeagueBindResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.PlayerBindResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.PlayerSummaryResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.StatLineResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.SummaryStatLineResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.TeamBindResponse;
import com.softballreference.softballreferenceapi.model.entity.response_dto.TeamLeagueBindResponse;

/**
 * A utility helper class that builds the response DTO objects (containing any
 * non-mapped properties) from their entity equivalents, and vice versa.
 */
public class ResponseAndEntityBuilder {

	/**
	 * Builds a basic {@link TeamBindResponse} object. This is just for a
	 * dropdown bind, and not a legit response view.
	 * 
	 * @param team the {@link Team} to wrap in a
	 *             {@link TeamBindResponse}s
	 * @return the wrapped {@link TeamBindResponse} object.
	 */
	public static TeamBindResponse buildTeamBindResponse(Team team) {
		TeamBindResponse teamResponse = new TeamBindResponse();

		teamResponse.setTeamId(team.getId());
		teamResponse.setName(team.getName());

		return teamResponse;
	}

	/**
	 * Builds a basic {@link LeagueBindResponse} object. This is just for a
	 * dropdown bind, and not a legit response view.
	 * 
	 * @param league the {@link League} to wrap in a
	 *               {@link LeagueBindResponse}s
	 * @return the wrapped {@link LeagueBindResponse} object.
	 */
	public static LeagueBindResponse buildLeagueBindResponse(League league) {
		LeagueBindResponse leagueResponse = new LeagueBindResponse();

		leagueResponse.setLeagueId(league.getId());
		leagueResponse.setName(league.getName());
		leagueResponse.setSeason(league.getSeason());

		return leagueResponse;
	}

	/**
	 * Builds a basic {@link TeamLeagueBindResponse} object. This is just for a
	 * dropdown bind, and not a legit response view.
	 * 
	 * @param teamLeague the {@link TeamLeague} to wrap in a
	 *                   {@link TeamLeagueBindResponse}s
	 * @return the wrapped {@link TeamLeagueBindResponse} object.
	 */
	public static TeamLeagueBindResponse buildTeamLeagueBindResponse(TeamLeague teamLeague) {
		TeamLeagueBindResponse teamLeagueResponse = new TeamLeagueBindResponse();

		teamLeagueResponse.setTeamLeagueId(teamLeague.getId());
		teamLeagueResponse.setTeam(teamLeague.getTeam().getName());
		teamLeagueResponse.setLeague(teamLeague.getLeague().getName() + " (" + teamLeague.getLeague().getSeason() + ")");

		return teamLeagueResponse;
	}

	/**
	 * Builds a basic {@link GameSummaryResponse} object. This is for all the
	 * summaries of a game WITHOUT the statlines of the players.
	 * 
	 * @param Game the {@link Game} to wrap in a {@link GameSummaryResponse}s
	 * @return the wrapped {@link GameSummaryResponse} object.
	 */
	public static GameSummaryResponse buildGameSummaryResponse(Game game) {
		GameSummaryResponse gameResponse = new GameSummaryResponse();

		gameResponse.setGameId(game.getId());
		gameResponse.setTeam(game.getTeamLeague().getTeam().getName());
		gameResponse.setLeague(game.getTeamLeague().getLeague().getName());
		gameResponse.setDate(game.getDate());
		gameResponse.setOpponent(game.getOpponent());
		gameResponse.setScore(game.getScore());
		gameResponse.setOpponentScore(game.getOpponentScore());
		gameResponse.setField(game.getField());
		gameResponse.setWasHome(game.getWasHome());
		/*
		 * Must convert to StatLineResponses first, before accumulating, even though
		 * we're specifically not returning the statlines... we're not saving
		 * calculation time from the buildGameStatLineResponses, but we are only sending
		 * JSON objects with the smallest amount of information needed. i.e. we're being
		 * hyper specific about RESPONSE objects.
		 */
		List<StatLineResponse> statLineResponses = new ArrayList<StatLineResponse>();
		game.getStatLines().forEach(sL -> statLineResponses.add(buildStatLineResponse(sL)));
		gameResponse.setAccumulated(buildAccumulatedResponse(statLineResponses));

		return gameResponse;
	}

	/**
	 * Builds a {@link GamePostResponse} object. The entire thing can be built from
	 * a lazy-loaded, attached, hibernate {@link Game} entity.
	 * 
	 * @param Game the {@link Game} to wrap in a {@link GamePostResponse}s
	 * @return the wrapped {@link GamePostResponse} object.
	 */
	public static GamePostResponse buildGamePostResponse(Game game) {
		GamePostResponse gamePostResponse = new GamePostResponse();

		gamePostResponse.setGameId(game.getId());
		gamePostResponse.setDate(game.getDate());
		gamePostResponse.setOpponent(game.getOpponent());
		gamePostResponse.setScore(game.getScore());
		gamePostResponse.setOpponentScore(game.getOpponentScore());
		gamePostResponse.setField(game.getField());
		gamePostResponse.setWasHome(game.getWasHome());
		gamePostResponse.setTeamLeagueId(game.getTeamLeague().getId());

		return gamePostResponse;
	}

	/**
	 * Builds a basic {@link PlayerBindResponse} object. This is just for a dropdown
	 * bind, and not a legit response view.
	 * 
	 * @param teamLeaguePlayer the {@link TeamLeaguePlayer} to wrap in a
	 *                         {@link PlayerBindResponse}s
	 * @return the wrapped {@link PlayerBindResponse} object.
	 */
	public static PlayerBindResponse buildPlayerBindResponse(TeamLeaguePlayer teamLeaguePlayer) {
		PlayerBindResponse playerResponse = new PlayerBindResponse();

		playerResponse.setTeamLeaguePlayerId(teamLeaguePlayer.getId());
		playerResponse.setName(teamLeaguePlayer.getPlayer().getName());
		playerResponse.setTeamLeagueId(teamLeaguePlayer.getTeamLeague().getId());

		return playerResponse;
	}

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
		summaryStatLineResponse
				.setLeague(teamLeague.getLeague().getName() + " (" + teamLeague.getLeague().getSeason() + ")");

		// Set the W/L record -- default to 0
		summaryStatLineResponse.setWins(0);
		summaryStatLineResponse.setLosses(0);
		summaryStatLineResponse.setHomeWins(0);
		summaryStatLineResponse.setHomeLosses(0);
		summaryStatLineResponse.setAwayWins(0);
		summaryStatLineResponse.setAwayLosses(0);
		/*
		 * Sort the games in descending order by date so we can calculate the streaks.
		 * 
		 * NOTE: You must do convert this to a list in order to sort, since Sets don't
		 * guarantee sort order.
		 */
		List<Game> gamesListSortedDescending = new ArrayList<Game>(teamLeague.getGames()).stream()
				.sorted((a, b) -> b.getDate().compareTo(a.getDate())).collect(Collectors.toList());
		// default win and loss streak to 0
		summaryStatLineResponse.setWinStreak(0);
		summaryStatLineResponse.setLossStreak(0);
		// default runs and runsAllowed to 0 (for run differential)
		summaryStatLineResponse.setRuns(0);
		summaryStatLineResponse.setRunsAllowed(0);
		gamesListSortedDescending.forEach(g -> {
			if (g.getScore() > g.getOpponentScore()) {
				// this is a win
				summaryStatLineResponse.setWins(summaryStatLineResponse.getWins() + 1);

				if (g.getWasHome())
					// ...that was at home
					summaryStatLineResponse.setHomeWins(summaryStatLineResponse.getHomeWins() + 1);
				else
					// ...that was on the road
					summaryStatLineResponse.setAwayWins(summaryStatLineResponse.getAwayWins() + 1);

				if (summaryStatLineResponse.getLosses() == 0) {
					// this is a win streak since no losses yet as we count backwards...
					summaryStatLineResponse.setWinStreak(summaryStatLineResponse.getWinStreak() + 1);
				}
			} else {
				// this is a loss
				summaryStatLineResponse.setLosses(summaryStatLineResponse.getLosses() + 1);

				if (g.getWasHome())
					// ...that was at home
					summaryStatLineResponse.setHomeLosses(summaryStatLineResponse.getHomeLosses() + 1);
				else
					// ...that was on the road
					summaryStatLineResponse.setAwayLosses(summaryStatLineResponse.getAwayLosses() + 1);

				if (summaryStatLineResponse.getWins() == 0) {
					// this is a loss streak since no wins yet as we count backwards...
					summaryStatLineResponse.setLossStreak(summaryStatLineResponse.getLossStreak() + 1);
				}
			}

			// accumulate the runs and runsAllowed
			summaryStatLineResponse.setRuns(summaryStatLineResponse.getRuns() + g.getScore());
			summaryStatLineResponse.setRunsAllowed(summaryStatLineResponse.getRunsAllowed() + g.getOpponentScore());
		});

		List<PlayerSummaryResponse> playerResponses = new ArrayList<PlayerSummaryResponse>();
		teamLeague.getTeamLeaguePlayers().forEach(tLP -> playerResponses.add(buildPlayerResponse(tLP)));
		summaryStatLineResponse.setPlayers(playerResponses);
		/*
		 * When building an accumulated object, it needs statlines. For the TeamLeague
		 * level, it needs all the statlines of all the players. Therefore I could do
		 * the players accumulated calculation first, and then build and accumulated on
		 * THOSE accumulated.statLines.
		 */
		summaryStatLineResponse.setAccumulated(buildAccumulatedResponse(
				summaryStatLineResponse.getPlayers().stream().map(PlayerSummaryResponse::getAccumulated)
						.map(AccumulatedResponse::getStatLine).collect(Collectors.toList())));

		/*
		 * Loop back around and fill the ...Plus stats for each player.
		 */
		calculateAndFillPlayerPlusStats(summaryStatLineResponse);

		return summaryStatLineResponse;
	}

	/**
	 * Calculates the OBP+, SLG+, and OPS+ properties of each
	 * {@link AccumulatedResponse} on the {@link PlayerSummaryResponse}s of the
	 * {@link SummaryStatLineResponse}. These values are calculated by dividing the
	 * player's accumulated obp, slg, and ops values by the team's accumulated obp,
	 * slg, and ops values, and then multiplying by 100. This gives the ratio for
	 * how close that person is to the team average for those stats.
	 * 
	 * @param summaryStatLineResponse the {@link SummaryStatLineResponse} object
	 *                                that already contains the accumulated team
	 *                                totals and all the player totals.
	 */
	public static void calculateAndFillPlayerPlusStats(SummaryStatLineResponse summaryStatLineResponse) {
		summaryStatLineResponse.getPlayers().forEach(p -> p.getAccumulated().setOBPPlus(Math.round(
				(p.getAccumulated().getStatLine().getOBP() / summaryStatLineResponse.getAccumulated().getStatLine().getOBP())
						* 100)));
		summaryStatLineResponse.getPlayers().forEach(p -> p.getAccumulated().setSLGPlus(Math.round(
				(p.getAccumulated().getStatLine().getSLG() / summaryStatLineResponse.getAccumulated().getStatLine().getSLG())
						* 100)));
		summaryStatLineResponse.getPlayers().forEach(p -> p.getAccumulated().setOPSPlus(Math.round(
				(p.getAccumulated().getStatLine().getOPS() / summaryStatLineResponse.getAccumulated().getStatLine().getOPS())
						* 100)));
	}

	/**
	 * Builds a {@link GameStatLineResponse} object. The entire thing can be built
	 * from a lazy-loaded, attached, hibernate {@link Game} entity.
	 * 
	 * @param game the {@link Game} entity to build the response from
	 * @return the filled in {@link GameStatLineResponse}
	 */
	public static GameStatLineResponse buildGameStatLineResponse(Game game) {
		GameStatLineResponse gameStatLineResponse = new GameStatLineResponse();

		gameStatLineResponse.setGameId(game.getId());
		gameStatLineResponse.setTeam(game.getTeamLeague().getTeam().getName());
		gameStatLineResponse.setLeague(game.getTeamLeague().getLeague().getName());
		gameStatLineResponse.setDate(game.getDate());
		gameStatLineResponse.setOpponent(game.getOpponent());
		gameStatLineResponse.setScore(game.getScore());
		gameStatLineResponse.setOpponentScore(game.getOpponentScore());
		gameStatLineResponse.setField(game.getField());
		gameStatLineResponse.setWasHome(game.getWasHome());
		// must convert to StatLineResponses first, before accumulating
		List<StatLineResponse> statLineResponses = new ArrayList<StatLineResponse>();
		game.getStatLines().forEach(sL -> statLineResponses.add(buildStatLineResponse(sL)));
		gameStatLineResponse.setAccumulated(buildAccumulatedResponse(statLineResponses));
		gameStatLineResponse.setStatLines(statLineResponses);

		return gameStatLineResponse;
	}

	/**
	 * Builds a {@link PlayerSummaryResponse} object. The entire thing can be built
	 * from a lazy-loaded, attached, hibernate {@link TeamLeaguePlayer} entity.
	 *
	 * @param teamLeaguePlayer the {@link TeamLeaguePlayer} entity to build the
	 *                         response from
	 * @return the filled in {@link PlayerSummaryResponse}
	 */
	public static PlayerSummaryResponse buildPlayerResponse(TeamLeaguePlayer teamLeaguePlayer) {
		PlayerSummaryResponse playerResponse = new PlayerSummaryResponse();

		playerResponse.setTeamLeaguePlayerId(teamLeaguePlayer.getId());
		// must convert to StatLineResponses first
		List<StatLineResponse> statLineResponses = new ArrayList<StatLineResponse>();
		teamLeaguePlayer.getStatLines().forEach(sL -> statLineResponses.add(buildStatLineResponse(sL)));
		playerResponse.setAccumulated(buildAccumulatedResponse(statLineResponses));
		/**
		 * Fill the player's name in the accumulated response.
		 * 
		 * Normally, our AccumulatedResponse object is just a summary of multiple
		 * players StatLines, but in this case, it's the accumulated for a single player
		 * and this is where we capture the name.
		 */
		playerResponse.getAccumulated().getStatLine().setPlayerName(teamLeaguePlayer.getPlayer().getName());

		return playerResponse;
	}

	/**
	 * Builds a {@link StatLineResponse} object directly from a lazy-loaded,
	 * attached, hibernate (@link StatLine) entity. This is also where the
	 * calculated stats are performed.
	 * 
	 * @param statLine the {@link StatLine} entity to build the response from
	 * @return the filled in {@link StatLineResponse}
	 */
	public static StatLineResponse buildStatLineResponse(StatLine statLine) {
		StatLineResponse statLineResponse = new StatLineResponse();

		statLineResponse.setPlayerName(statLine.getTeamLeaguePlayer().getPlayer().getName());

		// Fill the discrete stats
		statLineResponse.setBO(statLine.getBattingOrder());
		statLineResponse.setPA(statLine.getPlateAppearances());
		statLineResponse.setR(statLine.getRuns());
		statLineResponse.setB1(statLine.getSingles());
		statLineResponse.setB2(statLine.getDoubles());
		statLineResponse.setB3(statLine.getTriples());
		statLineResponse.setHR(statLine.getHomeRuns());
		statLineResponse.setRBI(statLine.getRunsBattedIn());
		statLineResponse.setBB(statLine.getBaseOnBalls());
		statLineResponse.setSO(statLine.getStrikeouts());
		statLineResponse.setSAC(statLine.getSacrifices());
		statLineResponse.setHR4O(statLine.getHomeRunForOuts());
		statLineResponse.setFO(statLine.getFoulOuts());
		statLineResponse.setGIDP(statLine.getGroundedIntoDoublePlays());
		statLineResponse.setLOB(statLine.getLeftOnBase());

		// Fill the calculated stats

		// AB -- PA - (BB+SAC)
		statLineResponse.setAB(statLine.getPlateAppearances() - (statLine.getBaseOnBalls() + statLine.getSacrifices()));
		// H -- 1B+2B+3B+HR
		statLineResponse
				.setH(statLine.getSingles() + statLine.getDoubles() + statLine.getTriples() + statLine.getHomeRuns());
		// TB -- (1B*1) + (2B*2) + (3B*3) + (HR*4)
		statLineResponse.setTB(statLine.getSingles() + (statLine.getDoubles() * 2) + (statLine.getTriples() * 3)
				+ (statLine.getHomeRuns() * 4));

		// This is pass-by-reference, so it fills the aggregate stats in-line.
		calculateAndFillAggregateStatsForStatLineResponse(statLineResponse);

		return statLineResponse;
	}

	/**
	 * Fill the AVG, OBP, and SLG aggregate stats in-line of the passed in
	 * {@link StatLineResponse}.
	 * 
	 * Average (AVG) = H/AB
	 * 
	 * On Base Percentage (OBP) = (H + BB) / PA
	 * 
	 * Slugging (SLG) = TB/AB
	 * 
	 * On-base + Slugging (OPS) = OBP + SLG
	 * 
	 * NOTE: The following fields **MUST** be already filled ont he
	 * {@link StatLineResponse}:
	 * 
	 * H, AB, BB, PA, TB
	 * 
	 * @param statLineResponseToFill
	 * @throws IllegalArgumentException thrown if H, AB, BB, PA, or TB are
	 *                                  {@code null}
	 */
	public static void calculateAndFillAggregateStatsForStatLineResponse(StatLineResponse statLineResponseToFill)
			throws IllegalArgumentException {
		if (statLineResponseToFill.getH() == null || statLineResponseToFill.getAB() == null
				|| statLineResponseToFill.getBB() == null || statLineResponseToFill.getPA() == null
				|| statLineResponseToFill.getTB() == null)
			throw new IllegalArgumentException(
					"Either H, AB, BB, PA or TB are null and the aggregate stats cannot be calculated.");

		// NOTE: It's possible that AB are 0 (i.e. All BB or SACs), so we must protect.
		// AVG -- H/AB
		statLineResponseToFill
				.setAVG(statLineResponseToFill.getAB() == 0 ? 0f
						: (statLineResponseToFill.getH().floatValue() / statLineResponseToFill.getAB().floatValue()));
		// OBP -- (H + BB) / PA
		statLineResponseToFill
				.setOBP((statLineResponseToFill.getH().floatValue() + statLineResponseToFill.getBB().floatValue())
						/ statLineResponseToFill.getPA().floatValue());
		// SLG -- TB/AB
		statLineResponseToFill
				.setSLG(statLineResponseToFill.getAB() == 0 ? 0f
						: (statLineResponseToFill.getTB().floatValue() / statLineResponseToFill.getAB().floatValue()));
		// OPS -- OBP + SLG
		statLineResponseToFill.setOPS(statLineResponseToFill.getOBP() + statLineResponseToFill.getSLG());
	}

	/**
	 * Builds a special {@link AccumulatedResponse} object. This object doesn't map
	 * directly to an entity in the database, but is built by summing all of the
	 * passed in {@link StatLineResponse} object's categories and accumulating them.
	 * 
	 * @param statLines the {@link StatLineResponse} objects to accumulate
	 * @return the stats accumulated into an {@link AccumulatedResponse}
	 */
	public static AccumulatedResponse buildAccumulatedResponse(List<StatLineResponse> statLines) {
		AccumulatedResponse accumulatedResponse = new AccumulatedResponse();

		StatLineResponse statLineAccumulatedResponse = new StatLineResponse();

		/**
		 * For each of the discrete elements, use the stream.reduce() method to apply an
		 * accumulator to each element in the stream, where the first operand is the
		 * return value of the previous application, and the second one is the current
		 * stream element.
		 */
		statLineAccumulatedResponse.setPA(statLines.stream().map(StatLineResponse::getPA).reduce(0, Integer::sum));
		statLineAccumulatedResponse.setR(statLines.stream().map(StatLineResponse::getR).reduce(0, Integer::sum));
		statLineAccumulatedResponse.setB1(statLines.stream().map(StatLineResponse::getB1).reduce(0, Integer::sum));
		statLineAccumulatedResponse.setB2(statLines.stream().map(StatLineResponse::getB2).reduce(0, Integer::sum));
		statLineAccumulatedResponse.setB3(statLines.stream().map(StatLineResponse::getB3).reduce(0, Integer::sum));
		statLineAccumulatedResponse.setHR(statLines.stream().map(StatLineResponse::getHR).reduce(0, Integer::sum));
		statLineAccumulatedResponse.setRBI(statLines.stream().map(StatLineResponse::getRBI).reduce(0, Integer::sum));
		statLineAccumulatedResponse.setBB(statLines.stream().map(StatLineResponse::getBB).reduce(0, Integer::sum));
		statLineAccumulatedResponse.setSO(statLines.stream().map(StatLineResponse::getSO).reduce(0, Integer::sum));
		statLineAccumulatedResponse.setSAC(statLines.stream().map(StatLineResponse::getSAC).reduce(0, Integer::sum));
		statLineAccumulatedResponse.setHR4O(statLines.stream().map(StatLineResponse::getHR4O).reduce(0, Integer::sum));
		statLineAccumulatedResponse.setFO(statLines.stream().map(StatLineResponse::getFO).reduce(0, Integer::sum));
		statLineAccumulatedResponse.setGIDP(statLines.stream().map(StatLineResponse::getGIDP).reduce(0, Integer::sum));
		statLineAccumulatedResponse.setLOB(statLines.stream().map(StatLineResponse::getLOB).reduce(0, Integer::sum));
		statLineAccumulatedResponse.setAB(statLines.stream().map(StatLineResponse::getAB).reduce(0, Integer::sum));
		statLineAccumulatedResponse.setH(statLines.stream().map(StatLineResponse::getH).reduce(0, Integer::sum));
		statLineAccumulatedResponse.setTB(statLines.stream().map(StatLineResponse::getTB).reduce(0, Integer::sum));

		// Accumulate and fill the aggregate stats in-line.
		calculateAndFillAggregateStatsForStatLineResponse(statLineAccumulatedResponse);

		accumulatedResponse.setStatLine(statLineAccumulatedResponse);

		return accumulatedResponse;
	}

	/*
	 * REQUEST to ENTITY
	 */

	/**
	 * Builds a basic {@link Game} object from the
	 * 
	 * @param gameRequest the {@link GameRequest} fields to create a {@link Game}
	 *                    with
	 * @return the {@link Game} object.
	 */
	public static Game buildGame(GameRequest gameRequest) {
		Game game = new Game();

		game.setDate(gameRequest.getDate());
		game.setOpponent(gameRequest.getOpponent());
		game.setScore(gameRequest.getScore());
		game.setOpponentScore(gameRequest.getOpponentScore());
		game.setField(gameRequest.getField());
		game.setWasHome(gameRequest.getWasHome());

		game.setTeamLeague(new TeamLeague(gameRequest.getTeamLeagueId()));

		return game;
	}

	/**
	 * Builds a basic {@link StatLine} object from the
	 * 
	 * @param statLineRequest the {@link StatLineRequest} fields to create a
	 *                        {@link StatLine} with
	 * @return the {@link StatLine} object.
	 */
	public static StatLine buildStatLine(StatLineRequest statLineRequest) {
		StatLine statLine = new StatLine();

		statLine.setBattingOrder(statLineRequest.getbO());
		statLine.setPlateAppearances(statLineRequest.getpA());
		statLine.setRuns(statLineRequest.getR());
		statLine.setSingles(statLineRequest.getB1());
		statLine.setDoubles(statLineRequest.getB2());
		statLine.setTriples(statLineRequest.getB3());
		statLine.setHomeRuns(statLineRequest.gethR());
		statLine.setRunsBattedIn(statLineRequest.getrBI());
		statLine.setBaseOnBalls(statLineRequest.getbB());
		statLine.setStrikeouts(statLineRequest.getsO());
		statLine.setSacrifices(statLineRequest.getsAC());
		statLine.setHomeRunForOuts(statLineRequest.gethR4O());
		statLine.setFoulOuts(statLineRequest.getfO());
		statLine.setGroundedIntoDoublePlays(statLineRequest.getgIDP());
		statLine.setLeftOnBase(statLineRequest.getlOB());

		statLine.setTeamLeaguePlayer(new TeamLeaguePlayer(statLineRequest.getTeamLeaguePlayerId()));
		statLine.setGame(new Game(statLineRequest.getGameId()));

		return statLine;
	}
}