
package com.web.fruitshop.implement;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.web.fruitshop.entity.Account;
import com.web.fruitshop.entity.Authority;
import com.web.fruitshop.repository.AccountRepo;
import com.web.fruitshop.repository.AuthorityRepo;
import com.web.fruitshop.service.AuthorityService;

@Service
public class AuthorityServiceImpl implements AuthorityService {

    @Autowired
    AuthorityRepo audao;

    @Autowired
    AccountRepo acdao;

    @Override
    public Page<Authority> findAll(Pageable pageable) {
        return audao.findAll(pageable);
    }

    @Override
    public List<Authority> findAuthoritiesOfAdministrators() {
        List<Account> accounts = acdao.getAdministratiors();
        return audao.authoritiesOf(accounts);
    }

    @Override
    public Authority create(Authority auth) {
        return audao.save(auth);
    }

    @Override
    public List<Authority> findAll() {
        return audao.findAll();
    }

    @Override
    public <S extends Authority> S save(S entity) {
        return audao.save(entity);
    }

    @Override
    public Optional<Authority> findById(Integer id) {
        return audao.findById(id);
    }

    public void deleteById(Integer id) {
        audao.deleteById(id);
    }

    public void delete(Authority entity) {
        audao.delete(entity);
    }

    public void deleteAll() {
        audao.deleteAll();
    }

    @Override
    public void deleteById(Authority id) {
        audao.delete(id);
    }

    @Override
    public long countByAccountUsername(String username) {
        return audao.countByAccountUsername(username);
    }

}
