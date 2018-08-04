package com.soecode.lyf.enums;

/**
 * 使用枚举表述常量数据字典
 */
public enum AppointStateEnum {

	SUCCESS(1, "ԤԼ�ɹ�"), NO_NUMBER(0, "��治��"), REPEAT_APPOINT(-1, "�ظ�ԤԼ"), INNER_ERROR(-2, "ϵͳ�쳣");

	private int state;

	private String stateInfo;

	private AppointStateEnum(int state, String stateInfo) {
		this.state = state;
		this.stateInfo = stateInfo;
	}

	public int getState() {
		return state;
	}

	public String getStateInfo() {
		return stateInfo;
	}

	public static AppointStateEnum stateOf(int index) {
		for (AppointStateEnum state : values()) {
			if (state.getState() == index) {
				return state;
			}
		}
		return null;
	}

}
