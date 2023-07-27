export CARLA_ROOT=${1:-/home/shannon/Carla_0.9.10.1}
export WORK_DIR=${2:-/home/shannon/plant}

export CARLA_SERVER=${CARLA_ROOT}/CarlaUE4.sh
export PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI
export PYTHONPATH=$PYTHONPATH:${CARLA_ROOT}/PythonAPI/carla
export PYTHONPATH=$PYTHONPATH:$CARLA_ROOT/PythonAPI/carla/dist/carla-0.9.10-py3.7-linux-x86_64.egg
export SCENARIO_RUNNER_ROOT=${WORK_DIR}/scenario_runner
export LEADERBOARD_ROOT=${WORK_DIR}/leaderboard
export PYTHONPATH="${CARLA_ROOT}/PythonAPI/carla/":"${SCENARIO_RUNNER_ROOT}":"${LEADERBOARD_ROOT}":${PYTHONPATH}

export SCENARIOS=${WORK_DIR}/leaderboard/data/longest6/eval_scenarios.json
export ROUTES=${WORK_DIR}/leaderboard/data/longest6/longest6.xml
export REPETITIONS=1
export CHALLENGE_TRACK_CODENAME=MAP
export CHECKPOINT_ENDPOINT=${WORK_DIR}/results/test.json
export TEAM_AGENT=${WORK_DIR}/carla_agent_files/PlanT_agent.py
export TEAM_CONFIG=${WORK_DIR}/checkpoints/PlanT/3x/PlanT_medium/log/
export DEBUG_CHALLENGE=0
export RESUME=1
export PORT=2000
export TM_PORT=8000
export TM_SEED=0
export TIMEOUT=600.0
export DATAGEN=0
export SHUFFLE_WEATHER=0

python3 ${LEADERBOARD_ROOT}/leaderboard/leaderboard_evaluator_local.py \
--scenarios=${SCENARIOS}  \
--routes=${ROUTES} \
--repetitions=${REPETITIONS} \
--track=${CHALLENGE_TRACK_CODENAME} \
--checkpoint=${CHECKPOINT_ENDPOINT} \
--agent=${TEAM_AGENT} \
--agent-config=${TEAM_CONFIG} \
--debug=${DEBUG_CHALLENGE} \
--resume=${RESUME} \
--port=${PORT} \
--trafficManagerPort=${TM_PORT} \
--trafficManagerSeed=${TM_SEED} \
--timeout=${TIMEOUT} \
