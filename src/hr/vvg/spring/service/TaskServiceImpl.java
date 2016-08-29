package hr.vvg.spring.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import hr.vvg.spring.dao.TaskDao;
import hr.vvg.spring.entitet.Project;
import hr.vvg.spring.entitet.Task;
import hr.vvg.spring.entitet.User;

@Service
public class TaskServiceImpl implements TaskService {
	
	@Autowired
	private TaskDao taskDao;
	
	@Override
	public List<User> fetchAllUsers() {
		
		return taskDao.fetchAllUsers();
	}
	
	@Override
	public List<Project> fetchAllProjects() {
		
		return taskDao.fetchAllProjects();
	}

	@Override
	public User fetchUserById(Integer id) {

		return taskDao.fetchUserById(id);
	}

	@Override
	public Project fetchProjectById(Integer id) {

		return taskDao.fetchProjectById(id);
	}

	@Override
	public void saveTask(Task task) {

		taskDao.saveTask(task);
	}

	@Override
	public List<Integer> fetchHoursOptions() {
		
		List<Integer> hoursList = new ArrayList<Integer>();
		
		for(int i = 1; i<9; i++) {
			
			hoursList.add(i);
			
		}

		return hoursList;
	}

	@Override
	public List<Task> fetchAllTasks() {

		return taskDao.fetchAllTasks();
	}

}
