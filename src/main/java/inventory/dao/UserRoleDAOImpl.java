package inventory.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import inventory.model.UsersRole;
import inventory.model.Users;
@Repository
@Transactional(rollbackFor=Exception.class)
public class UserRoleDAOImpl extends BaseDAOImpl<UsersRole>  implements UserRoleDAO<UsersRole>{

}
