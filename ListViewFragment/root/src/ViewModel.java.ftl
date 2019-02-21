package ${packageName};

public class ${className}ViewModel extends ViewModel {
    private MutableLiveData<${listData}> ${className}Data;

    public MutableLiveData<${listData}> get${className}Data() {
        return ${className}Data;
    }

    public ${className}ViewModel() {
        ${className}Data = new MutableLiveData<>();
    }

    public void get${className}() {
        //ToDo get list value

    }
}
