type ObjectState = {
    // Define the type to store the state of each object in your 3D scene
    // For example, it could include properties like position, rotation, scale, etc.
  };
  
  class ObjectStateManager {
    private undoStack: ObjectState[] = [];
    private redoStack: ObjectState[] = [];
    
    // Record a new state
    public pushState(state: ObjectState): void {
      this.undoStack.push(state);
      this.redoStack = []; // Clear redo stack when a new action is performed
    }
    
    // Undo the last change
    public undo(): ObjectState | null {
      const state = this.undoStack.pop();
      if (state) {
        this.redoStack.push(state);
        return state;
      }
      return null;
    }
    
    // Redo the last undone change
    public redo(): ObjectState | null {
      const state = this.redoStack.pop();
      if (state) {
        this.undoStack.push(state);
        return state;
      }
      return null;
    }
  }
  