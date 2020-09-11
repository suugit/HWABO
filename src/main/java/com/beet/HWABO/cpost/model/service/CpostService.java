package com.beet.HWABO.cpost.model.service;

import com.beet.HWABO.cpost.model.vo.AddOn;
import com.beet.HWABO.cpost.model.vo.Cpost;

public interface CpostService {
	int insertCpost(Cpost cpost);

	int insertAddon(AddOn addon);
}
