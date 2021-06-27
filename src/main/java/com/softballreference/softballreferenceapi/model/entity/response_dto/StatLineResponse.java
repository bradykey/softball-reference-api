package com.softballreference.softballreferenceapi.model.entity.response_dto;

public class StatLineResponse {
    /* PK */
    private Long id;

    /* PROPERTIES */
    private Integer battingOrder;
    private Integer plateAppearances;
    private Integer runs;
    private Integer singles;
    private Integer doubles;
    private Integer triples;
    private Integer homeRuns;
    private Integer runsBattedIn;
    private Integer baseOnBalls;
    private Integer strikeouts;
    private Integer sacrifices;
    private Integer homeRunForOuts;
    private Integer foulOuts;
    private Integer groundedIntoDoublePlays;
    private Integer leftOnBase;

    /* RELATIONSHIPS */
    private TeamLeaguePlayerResponse teamLeaguePlayer;
    private GameResponse game;

    public StatLineResponse() {

    }

    /**
     * Overloaded constructor
     * 
     * @param id
     * @param battingOrder
     * @param plateAppearances
     * @param runs
     * @param singles
     * @param doubles
     * @param triples
     * @param homeRuns
     * @param runsBattedIn
     * @param baseOnBalls
     * @param strikeouts
     * @param sacrifices
     * @param homeRunForOuts
     * @param foulOuts
     * @param groundedIntoDoublePlays
     * @param leftOnBase
     * @param teamLeaguePlayer
     * @param game
     */
    public StatLineResponse(Long id, Integer battingOrder, Integer plateAppearances, Integer runs, Integer singles,
            Integer doubles, Integer triples, Integer homeRuns, Integer runsBattedIn, Integer baseOnBalls,
            Integer strikeouts, Integer sacrifices, Integer homeRunForOuts, Integer foulOuts,
            Integer groundedIntoDoublePlays, Integer leftOnBase, TeamLeaguePlayerResponse teamLeaguePlayer,
            GameResponse game) {
        this.id = id;
        this.battingOrder = battingOrder;
        this.plateAppearances = plateAppearances;
        this.runs = runs;
        this.singles = singles;
        this.doubles = doubles;
        this.triples = triples;
        this.homeRuns = homeRuns;
        this.runsBattedIn = runsBattedIn;
        this.baseOnBalls = baseOnBalls;
        this.strikeouts = strikeouts;
        this.homeRunForOuts = homeRunForOuts;
        this.foulOuts = foulOuts;
        this.groundedIntoDoublePlays = groundedIntoDoublePlays;
        this.leftOnBase = leftOnBase;
        this.teamLeaguePlayer = teamLeaguePlayer;
        this.game = game;
    }

    // GETTERS AND SETTERS

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getBattingOrder() {
        return battingOrder;
    }

    public void setBattingOrder(Integer battingOrder) {
        this.battingOrder = battingOrder;
    }

    public Integer getPlateAppearances() {
        return plateAppearances;
    }

    public void setPlateAppearances(Integer plateAppearances) {
        this.plateAppearances = plateAppearances;
    }

    public Integer getRuns() {
        return runs;
    }

    public void setRuns(Integer runs) {
        this.runs = runs;
    }

    public Integer getSingles() {
        return singles;
    }

    public void setSingles(Integer singles) {
        this.singles = singles;
    }

    public Integer getDoubles() {
        return doubles;
    }

    public void setDoubles(Integer doubles) {
        this.doubles = doubles;
    }

    public Integer getTriples() {
        return triples;
    }

    public void setTriples(Integer triples) {
        this.triples = triples;
    }

    public Integer getHomeRuns() {
        return homeRuns;
    }

    public void setHomeRuns(Integer homeRuns) {
        this.homeRuns = homeRuns;
    }

    public Integer getRunsBattedIn() {
        return runsBattedIn;
    }

    public void setRunsBattedIn(Integer runsBattedIn) {
        this.runsBattedIn = runsBattedIn;
    }

    public Integer getBaseOnBalls() {
        return baseOnBalls;
    }

    public void setBaseOnBalls(Integer baseOnBalls) {
        this.baseOnBalls = baseOnBalls;
    }

    public Integer getStrikeouts() {
        return strikeouts;
    }

    public void setStrikeouts(Integer strikeouts) {
        this.strikeouts = strikeouts;
    }

    public Integer getSacrifices() {
        return sacrifices;
    }

    public void setSacrifices(Integer sacrifices) {
        this.sacrifices = sacrifices;
    }

    public Integer getHomeRunForOuts() {
        return homeRunForOuts;
    }

    public void setHomeRunForOuts(Integer homeRunForOuts) {
        this.homeRunForOuts = homeRunForOuts;
    }

    public Integer getFoulOuts() {
        return foulOuts;
    }

    public void setFoulOuts(Integer foulOuts) {
        this.foulOuts = foulOuts;
    }

    public Integer getGroundedIntoDoublePlays() {
        return groundedIntoDoublePlays;
    }

    public void setGroundedIntoDoublePlays(Integer groundedIntoDoublePlays) {
        this.groundedIntoDoublePlays = groundedIntoDoublePlays;
    }

    public Integer getLeftOnBase() {
        return leftOnBase;
    }

    public void setLeftOnBase(Integer leftOnBase) {
        this.leftOnBase = leftOnBase;
    }

    public TeamLeaguePlayerResponse getTeamLeaguePlayer() {
        return teamLeaguePlayer;
    }

    public void setTeamLeaguePlayer(TeamLeaguePlayerResponse teamLeaguePlayer) {
        this.teamLeaguePlayer = teamLeaguePlayer;
    }

    public GameResponse getGame() {
        return game;
    }

    public void setGame(GameResponse game) {
        this.game = game;
    }
}
