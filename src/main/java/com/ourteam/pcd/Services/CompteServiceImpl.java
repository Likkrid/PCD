package com.ourteam.pcd.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ourteam.pcd.Entity.Compte;
import com.ourteam.pcd.Persistence.Dao.CompteDao;

@Service
public class CompteServiceImpl implements CompteService {
	@Autowired
	CompteDao compteDao;

	@Override
	public List<Compte> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Compte findOne(String arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Compte getOne(String arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Compte saveAndFlush(Compte arg0) {
		return compteDao.saveAndFlush(arg0);
	}

	@Override
	public void delete(String arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Compte arg0) {
		// TODO Auto-generated method stub
		compteDao.delete(arg0);
	}


}
