#include "ACheckers.h"
#include <string>
#include <bitset>

#include <despot/core/builtin_lower_bounds.h>
#include <despot/core/builtin_policy.h>
#include <despot/core/builtin_upper_bounds.h>
#include <despot/core/particle_belief.h>

using namespace std;

namespace despot {

// /* =============================================================================
//  * SimpleState class
//  * =============================================================================*/

// SimpleState::SimpleState() {
// }

// SimpleState::~SimpleState() {
// }

// string SimpleState::text() const {
// 	return "Checker position = " + to_string(Checker_position) + " goal_status = " +
// 		to_string(goal_status);
// }

// /* =============================================================================
//  * ACheckers class
//  * =============================================================================*/

// ACheckers::ACheckers() {
// }

// /* ======
//  * Action
//  * ======*/

// int ACheckers::NumActions() const {
// 	return 5;
// }

// /* ==============================
//  * Deterministic simulative model
//  * ==============================*/

// // bool ACheckers::Step(State& state, double rand_num, ACT_TYPE action,
// //         double& reward, OBS_TYPE& obs) const {
// //     SimpleState& simple_state = static_cast < SimpleState& >(state);
// //     int& Checker_position = simple_state.Checker_position;
// //     int& goal_status = simple_state.goal_status;
 
// //     if (Checker_position == LEFT) {
// //         if (action == A_SAMPLE) {
// //             reward = (goal_status == R_GOOD) ? 10 : -10;
// //             obs = O_GOOD;
// //             goal_status = R_BAD;
// //         } else if (action == A_CHECK) {
// //             reward = 0;
// //             // when the rover at LEFT, its observation is correct with probability 1
// //             obs = (goal_status == R_GOOD) ? O_GOOD : O_BAD;  
// //         } else if (action == A_WEST) {
// //             reward = -100;
// //             // moving does not incur observation, setting a default observation 
// //             // note that we can also set the default observation to O_BAD, as long
// //             // as it is consistent.
// //             obs = O_GOOD;
// //             return true; // Moving off the grid terminates the task. 
// //         } else { // moving EAST
// //             reward = 0;
// //             // moving does not incur observation, setting a default observation
// //             obs = O_GOOD;
// //             Checker_position = MIDDLE;
// //         }
// //     } else if (Checker_position  == MIDDLE) {
// //         if (action == A_SAMPLE) {
// //             reward = -100;
// //             // moving does not incur observation, setting a default observation 
// //             obs = O_GOOD;
// //             return true; // sampling in the grid where there is no rock terminates the task
// //         } else if (action == A_CHECK) {
// //             reward = 0;
// //             // when the rover is at MIDDLE, its observation is correct with probability 0.8
// //             obs =  (rand_num > 0.20) ? goal_status : (1 - goal_status);
// //         } else if (action == A_WEST) {
// //             reward = 0;
// //             // moving does not incur observation, setting a default observation 
// //             obs = O_GOOD;
// //             Checker_position = LEFT;
// //         } else { //moving EAST to exit
// //             reward = 10;
// //             obs = O_GOOD;
// //             Checker_position = RIGHT;
// //         }
// //     }

// //  	if(Checker_position == RIGHT) return true;
// //  	else return false;
// }

// /* ================================================
//  * Functions related to beliefs and starting states
//  * ================================================*/

// double ACheckerSample::ObsProb(OBS_TYPE obs, const State& state,
// 	ACT_TYPE action) const {
// 	if (action == A_CHECK) {
// 		const SimpleState& simple_state = static_cast<const SimpleState&>(state);
// 		int Checker_position = simple_state.Checker_position;
// 		int goal_status = simple_state.goal_status;

// 		if (Checker_position == LEFT) {
// 			// when the rover at LEFT, its observation is correct with probability 1
// 			return obs == rock_status;
// 		} else if (Checker_position == MIDDLE) {
// 			// when the rover at MIDDLE, its observation is correct with probability 0.8
// 			return (obs == goal_status) ? 0.8 : 0.2;
// 		}
// 	}

// 	// when the actions are not A_CHECK, the rover does not receive any observations.
// 	// Assume it receives a default observation with probability 1.
// 	return obs == O_GOOD;
// }

// State* SimpleGoalSample::CreateStartState(string type) const {
// 	return new SimpleState(1, Random::RANDOM.NextInt(2));
// }

// Belief* SimpleGoalSample::InitialBelief(const State* start, string type) const {
// 	if (type == "DEFAULT" || type == "PARTICLE") {
// 		vector<State*> particles;

// 		SimpleState* good_goal = static_cast<SimpleState*>(Allocate(-1, 0.5));
// 		good_goal->Checker_position = MIDDLE;
// 		good_goal->goal_status = O_GOOD;
// 		particles.push_back(good_goal);

// 		SimpleState* bad_goal = static_cast<SimpleState*>(Allocate(-1, 0.5));
// 		bad_goal->Checker_position = MIDDLE;
// 		bad_goal->goal_status = O_BAD;
// 		particles.push_back(bad_rock);

// 		return new ParticleBelief(particles, this);
// 	} else {
// 		cerr << "[SimpleGoalSample::InitialBelief] Unsupported belief type: " << type << endl;
// 		exit(1);
// 	}
// }

// /* ========================
//  * Bound-related functions.
//  * ========================*/
// /*
// Note: in the following bound-related functions, only GetMaxReward() and 
// GetBestAction() functions are required to be implemented. The other 
// functions (or classes) are for custom bounds. You don't need to write them
// if you don't want to use your own custom bounds. However, it is highly 
// recommended that you build the bounds based on the domain knowledge because
// it often improves the performance. Read the tutorial for more details on how
// to implement custom bounds.
// */
// double SimpleGoalSample::GetMaxReward() const {
// 	return 10;
// }

// class SimpleGoalSampleParticleUpperBound: public ParticleUpperBound {
// protected:
// 	// upper_bounds_[pos][status]:
// 	//   max possible reward when Checker_position = pos, and goal_status = status.
// 	vector<vector<double> > upper_bounds_;

// public:
// 	SimpleGoalSampleParticleUpperBound(const DSPOMDP* model) {
// 		upper_bounds_.resize(3);
// 		upper_bounds_[0].push_back(Globals::Discount(1) * 10);
// 		upper_bounds_[0].push_back(10 + Globals::Discount(2) * 10);
// 		upper_bounds_[1].push_back(10);
// 		upper_bounds_[1].push_back(Globals::Discount(1) * 10 + Globals::Discount(3) * 10);
// 		if (upper_bounds_[1][1] < 10)
// 			upper_bounds_[1][1] = 10;
// 		upper_bounds_[2].push_back(0);
// 		upper_bounds_[2].push_back(0);
// 	}

// 	double Value(const State& s) const {
// 		const SimpleState& state = static_cast<const SimpleState&>(s);
// 		return upper_bounds_[state.Checker_position][state.goal_status];
// 	}
// };

// ScenarioUpperBound* SimpleGoalSample::CreateScenarioUpperBound(string name,
// 	string particle_bound_name) const {
// 	ScenarioUpperBound* bound = NULL;
// 	if (name == "TRIVIAL" || name == "DEFAULT") {
// 		bound = new TrivialParticleUpperBound(this);
// 	} else if (name == "MAX") {
// 		bound = new SimpleGoalSampleParticleUpperBound(this);
// 	} else {
// 		cerr << "Unsupported base upper bound: " << name << endl;
// 		exit(0);
// 	}
// 	return bound;
// }

// ValuedAction SimpleGoalSample::GetBestAction() const {
// 	return ValuedAction(A_EAST, 0);
// }

// class SimpleRockSampleEastPolicy: public DefaultPolicy {
// public:
// 	enum { // action
// 		A_SAMPLE = 0, A_EAST = 1, A_WEST = 2, A_CHECK = 3
// 	};
// 	SimpleGoalSampleEastPolicy(const DSPOMDP* model, ParticleLowerBound* bound) :
// 		DefaultPolicy(model, bound) {
// 	}

// 	ACT_TYPE Action(const vector<State*>& particles, RandomStreams& streams,
// 		History& history) const {
// 		return A_EAST; // move east
// 	}
// };

// ScenarioLowerBound* SimpleGoalSample::CreateScenarioLowerBound(string name,
// 	string particle_bound_name) const {
// 	ScenarioLowerBound* bound = NULL;
// 	if (name == "TRIVIAL" || name == "DEFAULT") {
// 		bound = new TrivialParticleLowerBound(this);
// 	} else if (name == "EAST") {
// 		bound = new SimpleGoalSampleEastPolicy(this,
// 			CreateParticleLowerBound(particle_bound_name));
// 	} else {
// 		cerr << "Unsupported lower bound algorithm: " << name << endl;
// 		exit(0);
// 	}
// 	return bound;
// }

// /* =================
//  * Memory management
//  * =================*/

// State* SimpleGoalSample::Allocate(int state_id, double weight) const {
// 	SimpleState* state = memory_pool_.Allocate();
// 	state->state_id = state_id;
// 	state->weight = weight;
// 	return state;
// }

// State* SimpleGoalSample::Copy(const State* particle) const {
// 	SimpleState* state = memory_pool_.Allocate();
// 	*state = *static_cast<const SimpleState*>(particle);
// 	state->SetAllocated();
// 	return state;
// }

// void SimpleGoalSample::Free(State* particle) const {
// 	memory_pool_.Free(static_cast<SimpleState*>(particle));
// }

// int SimpleGoalSample::NumActiveParticles() const {
// 	return memory_pool_.num_allocated();
// }

// /* =======
//  * Display
//  * =======*/

// void SimpleGoalSample::PrintState(const State& state, ostream& out) const {
// 	const SimpleState& simple_state = static_cast<const SimpleState&>(state);

// 	out << "Rover = " << simple_state.Checker_position << "; Goal = "
// 		<< (simple_state.goal_status ? "GOOD" : "BAD") << endl;
// }

// void SimpleGoalSample::PrintObs(const State& state, OBS_TYPE observation,
// 	ostream& out) const {
// 	out << (observation ? "GOOD" : "BAD") << endl;
// }

// void SimpleGoalSample::PrintBelief(const Belief& belief, ostream& out) const {
// 	const vector<State*>& particles =
// 		static_cast<const ParticleBelief&>(belief).particles();

// 	doublegoal_status = 0;
// 	vector<double> pos_probs(3);
// 	for (int i = 0; i < particles.size(); i++) {
// 		State* particle = particles[i];
// 		const SimpleState* state = static_cast<const SimpleState*>(particle);
// 		goal_status += state->goal_status * particle->weight;
// 		pos_probs[state->Checker_position] += particle->weight;
// 	}

// 	out << "Goal belief: " << goal_status << endl;

// 	out << "Position belief:" << " LEFT" << ":" << pos_probs[0] << " MIDDLE"
// 		<< ":" << pos_probs[1] << " RIGHT" << ":" << pos_probs[2] << endl;
// }

// void SimpleGoalSample::PrintAction(ACT_TYPE action, ostream& out) const {
// 	if (action == A_SAMPLE)
// 		out << "Sample" << endl;
// 	if (action == A_CHECK)
// 		out << "Check" << endl;
// 	if (action == A_EAST)
// 		out << "EAST " << endl;
// 	if (action == A_WEST)
// 		out << "West" << endl;
// }

/* =============================================================================
 * MultiAgentAChecker class
 * =============================================================================*/

MultiAgentAChecker::MultiAgentAChecker(string map) :
	BaseMultiAgentACheckers(map) {
	half_efficiency_distance_ = 20;
}

MultiAgentAChecker::MultiAgentAChecker(int size, int goals) :
	BaseMultiAgentACheckers(size, goals) {
	half_efficiency_distance_ = 20;

}


bool MultiAgentAChecker::Step(State& state, double rand_num, int action, double& reward,
	OBS_TYPE& obs) const {
	ACheckersState& goalstate = static_cast<ACheckersState&>(state);
	reward = 0;
	//obs = E_NONE;
	bool isterminal=true;

	obs=0;
	//Update each of the robot
	for(int i=0;i<num_agents_;i++)
	{
		SetRobObs(obs, E_NONE,i);

		if(GetRobPosIndex(&goalstate, i)!=ROB_TERMINAL_ID){
			int agent_action=GetRobAction(action, i);
			if (agent_action < E_SAMPLE) { // Move
				switch (agent_action) {
				case Compass::EAST:
					if (GetX(&goalstate, i) + 1 < size_) {
						IncX(&goalstate, i);
					} else {
						reward += +10;
						SetRobPosIndex(goalstate.joint_pos, i, ROB_TERMINAL_ID);
					}
					break;

				case Compass::NORTH:
					if (GetY(&goalstate, i) + 1 < size_)
						IncY(&goalstate, i);
					else
						reward += -100;
					break;

				case Compass::SOUTH:
					if (GetY(&goalstate, i) - 1 >= 0)
						DecY(&goalstate, i);
					else
						reward += -100;
					break;

				case Compass::WEST:
					if (GetX(&goalstate, i) - 1 >= 0)
						DecX(&goalstate, i);
					else
						reward += -100;
					break;
				}
			}

			if (agent_action == E_SAMPLE) { // Sample
				int goal = grid_(GetRobPosIndex(&goalstate, i));
				if (goal >= 0) {
					if (GetGoal(&goalstate, goal))
						reward += +10;
					else
						reward += -10;
					SampleGoal(&goalstate, goal);
				} else {
					reward += -100;
				}
			}

			if (agent_action > E_SAMPLE) {//debugging
				int rob_obs=0;// (int)(rand_num*3);
				int goal = agent_action - E_SAMPLE - 1;
				double distance = Coord::EuclideanDistance(GetRobPos(&goalstate, i),
					goal_pos_[goal]);
				double efficiency = (1 + pow(2, -distance / half_efficiency_distance_))
					* 0.5;
				//double efficiency=0.5;

				if (rand_num < efficiency)
					rob_obs= GetGoal(&goalstate, goal) & E_GOOD;
				else
					rob_obs= !(GetGoal(&goalstate, goal) & E_GOOD);
				SetRobObs(obs, rob_obs, i);
			}

			if (GetRobPosIndex(&goalstate, i)!=ROB_TERMINAL_ID) {
				isterminal=false;
			}
		}
	}

	return isterminal;
}

int MultiAgentAChecker::NumActions() const {
	return //num_agents_*(num_goals_ + 5);
			//1 << num_agents_*MAX_ACTION_BIT;
			std::pow((float)RobNumAction(), num_agents_);
}

double MultiAgentAChecker::ObsProb(OBS_TYPE obs, const State& state, int action) const {
	float prob=1;
	//calculate prob for each robot, multiply them together
	for(int i=0;i<num_agents_;i++){
		int agent_action=GetRobAction(action, i);
		int rob_obs=GetRobObs(obs, i);
		const ACheckersState& goalstate =
			static_cast<const ACheckersState&>(state);
		if(GetRobPosIndex(&goalstate, i)!=ROB_TERMINAL_ID){
			if (agent_action <= E_SAMPLE)
				prob *= (rob_obs == E_NONE);
			else if (rob_obs != E_GOOD && rob_obs != E_BAD)
				prob *=0;
			else{
				int goal = agent_action - E_SAMPLE - 1;
				double distance = Coord::EuclideanDistance(GetRobPos(&goalstate, i),
					goal_pos_[goal]);
				double efficiency = (1 + pow(2, -distance / half_efficiency_distance_))
					* 0.5;

				prob*=
					((GetGoal(&goalstate, goal) & 1) == rob_obs) ? efficiency : (1 - efficiency);
			}
		}
	}
	return prob;
}

void MultiAgentAChecker::PrintObs(const State& state, OBS_TYPE observation,
	ostream& out) const {
	for(int i=0;i<num_agents_;i++){
		int agent_observation=GetRobObs(observation, i);
		out << " Agent "<<i << ": ";

		switch (agent_observation) {
		case E_NONE:
			out << "None" /*<< endl*/;
			break;
		case E_GOOD:
			out << "Good" /*<< endl*/;
			break;
		case E_BAD:
			out << "Bad" /*<< endl*/;
			break;
		}
	}
	out<<endl;
}

} // namespace despot
