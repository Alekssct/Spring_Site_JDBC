package mvc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import mvc.model.Organization;

@Repository
public interface OrganizationDao extends JpaRepository<Organization, Long>{

}
