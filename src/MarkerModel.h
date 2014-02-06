#ifndef MARKER_MODEL_H
#define MARKER_MODEL_H

#include <vector>
#include <map>

#include "Scene.h"
#include "SimpleMath/SimpleMath.h"
#include "SimpleMath/SimpleMathGL.h"

/* General Notes:
 *
 * Frame ids are positive numbers. 0 is used to mark frames that do not
 * exist.
 */

namespace RigidBodyDynamics {
	struct Model;
}

struct LuaTable;

struct JointObject : public SceneObject {
	int frameId;
	unsigned int rbdlBodyId;
};

struct VisualsObject: public SceneObject {
	VisualsObject(): 
		frameId(0)
	{}

	int frameId;
	int visualIndex;
	JointObject* jointObject;
};

struct VisualsData {
	VisualsData(): 
		scale (-1.f, -1.f, -1.f),
		dimensions (1.f, 1.f, 1.f),
		color (1.f, 1.f, 1.f, 1.f),
		mesh_center (-1.f, -1.f, -1.f),
		translate (-1.f, -1.f, -1.f),
		src ("")
	{}

	Vector3f scale;
	Vector3f dimensions;
	Vector4f color;
	Vector3f mesh_center;
	Vector3f translate;
	std::string src;
};

struct ModelMarkerObject: public SceneObject {
	std::string markerName;
	int frameId;
};

/**
 *
 * \todo add support for the deletion of joints and visuals. Currently it
 * is assumed that the number of joints and visuals is constant.
 */
struct MarkerModel {
	MarkerModel():
		scene(NULL),
		luaTable(NULL),
		rbdlModel(NULL)
	{}
	MarkerModel(Scene* scene_) :
		scene (scene_),
		luaTable (NULL),
		rbdlModel (NULL)
	{}
	~MarkerModel();

	Scene *scene;
	LuaTable *luaTable;
	RigidBodyDynamics::Model *rbdlModel;
	VectorNd modelStateQ;

	std::vector<JointObject*> joints;
	std::vector<VisualsObject*> visuals;
	std::vector<ModelMarkerObject*> modelMarkers;

	std::map<unsigned int, int> dofIndexToFrameId;
	std::map<unsigned int, int> frameIdToRbdlId;
	std::map<int, unsigned int> rbdlToFrameId;

	bool isJointObject (int objectid) {
		for (size_t i = 0; i < joints.size(); i++) {
			if (joints[i]->id == objectid)
				return true;
		}
		return false;
	}

	bool isVisualsObject (int objectid) {
		for (size_t i = 0; i < visuals.size(); i++) {
			if (visuals[i]->id == objectid)
				return true;
		}
		return false;
	}

	bool isModelMarkerObject (int objectid) {
		for (size_t i = 0; i < modelMarkers.size(); i++) {
			if (modelMarkers[i]->id == objectid)
				return true;
		}
		return false;
	}

	bool isModelObject (int objectid) {
		if (isModelMarkerObject(objectid))
			return true;

		if (isVisualsObject(objectid))
			return true;

		return isJointObject(objectid);
	}

	VectorNd getModelState();
	std::vector<std::string> getModelStateNames();

	void updateModelState();
	void setModelStateValue (unsigned int state_index, double value);
	bool stateIndexIsFrameJointVariable (unsigned int state_index, int frame_id);

	JointObject* getJointObject (int frame_id);
	VisualsObject* getVisualsObject (int frame_id, int visual_index);
	ModelMarkerObject* getModelMarkerObject (int frame_id, const char* marker_name);

	int getFrameMarkerCount (int frame_id);
	std::vector<Vector3f> getFrameMarkerCoords (int frame_id);
	std::vector<std::string> getFrameMarkerNames(int frame_id);
	Vector3f calcMarkerLocalCoords (int frame_id, const Vector3f &global_coords);
	Vector3f getMarkerPosition (int frame_id, const char* marker_name);
	void setFrameMarkerCoord (int frame_id, const char* marker_name, const Vector3f &coord);
	void deleteFrameMarker (int frame_id, const char* marker_name);

	int getParentFrameId (int frame_id);
	int getObjectIdFromFrameId (int frame_id);
	int getFrameIdFromObjectId (int object_id);
	int getVisualsCount (int frame_id);
	int getFrameCount ();

	VisualsData getVisualsData (int frame_id, int visuals_index);
	int getFrameId (const char *frame_name);
	std::string getFrameName (int frame_id);
	std::string getParentName (int frame_id);
	Vector3f getFrameLocationGlobal (int frame_id);
	Vector3f getFrameOrientationGlobalEulerYXZ (int frame_id);
	Vector3f getJointLocationLocal (int frame_id);
	Vector3f getJointOrientationLocalEulerYXZ (int frame_id);
	void setJointLocationLocal (int frame_id, const Vector3f &location);
	void setJointOrientationLocalEulerYXZ (int frame_id, const Vector3f &yxz_euler);
	void adjustParentVisualsScale (int frame_id, const Vector3f &old_r, const Vector3f &new_r);

	bool loadFromFile (const char* filename);
	void saveToFile (const char* filename);
	void loadStateFromFile (const char* filename);
	void saveStateToFile (const char* filename);
	void clearModel();
	void updateFromLua ();
	void updateSceneObjects();

	private:
		MarkerModel(const MarkerModel &model) {}
		MarkerModel& operator=(const MarkerModel &model) { return *this; }
};

/* MARKER_MODEL_H */
#endif
