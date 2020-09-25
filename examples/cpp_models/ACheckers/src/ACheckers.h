#ifndef ACHECKERS_H
#define ACHECKERS_H

#include <despot/interface/pomdp.h>
#include <despot/core/mdp.h>
#include "base_ACheckers.h"
#include <despot/util/coord.h>
#include <despot/util/grid.h>

namespace despot {

// /* =============================================================================
//  * SimpleState class
//  * =============================================================================*/

// class SimpleState: public State {
// public:
// 	int Checker_position; // positions are 0-63. However, pieces can only travel to 32 positions
// 	int goal_status; // 1 is good (you are at the goal), and 0 is bad (you are not at the goal)

// 	SimpleState();
// 	SimpleState(int _Checker_position, int _goal_status) : 
//         Checker_position(_Checker_position),
//         goal_status(_goal_status) {
//     }
// 	~SimpleState();

// 	std::string text() const;
// };

// /* =============================================================================
//  * ACheckers class
//  * =============================================================================*/

// class ACheckers: public DSPOMDP {
// protected:
// 	mutable MemoryPool<SimpleState> memory_pool_;

// 	std::vector<SimpleState*> states_;

// 	mutable std::vector<ValuedAction> mdp_policy_;

// public:
// 	enum { // actions: stay, TopLeft, TopRight, BottomLeft, Bottom Right
// 		A_STAY = 0, A_TL = 1, A_TR = 2, A_BL = 3, A_BR = 4
// 	};
// 	enum { // observation ? not decided
// 		O_BAD = 0, O_GOOD = 1
// 	};
// 	enum { // goal status: Am I at the goal? Y/N
// 		G_BAD = 0, G_GOOD = 1
// 	};
// 	enum { // Checker position. State-Row_Column of Board (Dark)
// 		SRC_01 = 0, SRC_03 = 1, SRC_05 = 2, SRC_07 = 3,
// 		SRC_10 = 4, SRC_12 = 5, SRC_14 = 6, SRC_16 = 7,
// 		SRC_21 = 8, SRC_23 = 9, SRC_25 = 10, SRC_27 =11,
// 		SRC_30 = 12, SRC_32 = 13, SRC_34 = 14, SRC_36 = 15,
// 		SRC_41 = 16, SRC_43 = 17, SRC_45 = 18, SRC_47 = 19,
// 		SRC_50 = 20, SRC_52 = 21, SRC_54 = 22, SRC_56 = 23,
// 		SRC_61 = 24, SRC_63 = 25, SRC_65 = 26, SRC_67 = 27,
// 		SRC_70 = 28, SRC_72 = 29, SRC_74 = 30, SRC_76 = 31
// 	};

// public:
// 	ACheckers();

// 	/* Returns total number of actions.*/
// 	int NumActions() const;

// 	/* Deterministic simulative model.*/
// 	bool Step(State& state, double rand_num, ACT_TYPE action, double& reward,
// 		OBS_TYPE& obs) const;

// 	/* Functions related to beliefs and starting states.*/
// 	double ObsProb(OBS_TYPE obs, const State& state, ACT_TYPE action) const;
// 	State* CreateStartState(std::string type = "DEFAULT") const;
// 	Belief* InitialBelief(const State* start, std::string type = "DEFAULT") const;

// 	/* Bound-related functions.*/
// 	double GetMaxReward() const;
// 	ScenarioUpperBound* CreateScenarioUpperBound(std::string name = "DEFAULT",
// 		std::string particle_bound_name = "DEFAULT") const;
// 	ValuedAction GetBestAction() const;
// 	ScenarioLowerBound* CreateScenarioLowerBound(std::string name = "DEFAULT",
// 		std::string particle_bound_name = "DEFAULT") const;

// 	/* Memory management.*/
// 	State* Allocate(int state_id, double weight) const;
// 	State* Copy(const State* particle) const;
// 	void Free(State* particle) const;
// 	int NumActiveParticles() const;

// 	/* Display.*/
// 	void PrintState(const State& state, std::ostream& out = std::cout) const;
// 	void PrintBelief(const Belief& belief, std::ostream& out = std::cout) const;
// 	void PrintObs(const State& state, OBS_TYPE observation,
// 		std::ostream& out = std::cout) const;
// 	void PrintAction(ACT_TYPE action, std::ostream& out = std::cout) const;
// };

/* =============================================================================
 * MultiAgentAChecker class
 * =============================================================================*/


class MultiAgentAChecker: public BaseMultiAgentACheckers {
public:
	MultiAgentAChecker(std::string map);
	MultiAgentAChecker(int size, int goals);

	bool Step(State& state, double rand_num, int action, double& reward,
		OBS_TYPE& obs) const;
	int NumActions() const;
	double ObsProb(OBS_TYPE obs, const State& state, int action) const;
	void PrintObs(const State& state, OBS_TYPE observation,
		std::ostream& out = std::cout) const;

	void InitGPUModel();
	void InitGPUUpperBound(std::string name,	std::string particle_bound_name) const;
	void InitGPULowerBound(std::string name,	std::string particle_bound_name) const ;

	void DeleteGPUModel();
	void DeleteGPUUpperBound(std::string name, std::string particle_bound_name);
	void DeleteGPULowerBound(std::string name, std::string particle_bound_name);

};

} // namespace despot

#endif
