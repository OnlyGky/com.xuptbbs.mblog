
package com.xuptbbs.mblog.modules.service.impl;

import com.xuptbbs.mblog.base.lang.EntityStatus;
import com.xuptbbs.mblog.base.lang.MtonsException;
import com.xuptbbs.mblog.base.utils.MD5;
import com.xuptbbs.mblog.modules.data.AccountProfile;
import com.xuptbbs.mblog.modules.data.BadgesCount;
import com.xuptbbs.mblog.modules.data.UserVO;
import com.xuptbbs.mblog.modules.entity.TagCreate;
import com.xuptbbs.mblog.modules.entity.TagLike;
import com.xuptbbs.mblog.modules.entity.User;
import com.xuptbbs.mblog.modules.entity.UserRecScore;
import com.xuptbbs.mblog.modules.repository.RoleRepository;
import com.xuptbbs.mblog.modules.repository.TagCreateRepository;
import com.xuptbbs.mblog.modules.repository.TagLikeRepository;
import com.xuptbbs.mblog.modules.repository.UserRepository;
import com.xuptbbs.mblog.modules.service.MessageService;
import com.xuptbbs.mblog.modules.service.UserRecScoreService;
import com.xuptbbs.mblog.modules.service.UserService;
import com.xuptbbs.mblog.base.utils.BeanMapUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import javax.persistence.criteria.Predicate;
import java.util.*;

@Service
@Transactional(readOnly = true)
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private MessageService messageService;

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private TagCreateRepository tagCreateRepository;

    @Autowired
    private TagLikeRepository tagLikeRepository;

    @Autowired
    UserRecScoreService userRecScoreService;

    @Override
    public Page<UserVO> paging(Pageable pageable, String name) {
        Page<User> page = userRepository.findAll((root, query, builder) -> {
            Predicate predicate = builder.conjunction();

            if (StringUtils.isNoneBlank(name)) {
                predicate.getExpressions().add(
                        builder.like(root.get("name"), "%" + name + "%"));
            }

            query.orderBy(builder.desc(root.get("id")));
            return predicate;
        }, pageable);

        List<UserVO> rets = new ArrayList<>();
        page.getContent().forEach(n -> rets.add(BeanMapUtils.copy(n)));
        return new PageImpl<>(rets, pageable, page.getTotalElements());
    }

    @Override
    public Map<Long, UserVO> findMapByIds(Set<Long> ids) {
        if (ids == null || ids.isEmpty()) {
            return Collections.emptyMap();
        }
        List<User> list = userRepository.findAllById(ids);
        Map<Long, UserVO> ret = new HashMap<>();

        list.forEach(po -> ret.put(po.getId(), BeanMapUtils.copy(po)));
        return ret;
    }

    @Override
    @Transactional
    public AccountProfile login(String username, String password) {
        User po = userRepository.findByUsername(username);

        if (null == po) {
            return null;
        }

//		Assert.state(po.getStatus() != Const.STATUS_CLOSED, "您的账户已被封禁");

        Assert.state(StringUtils.equals(po.getPassword(), password), "密码错误");

        po.setLastLogin(Calendar.getInstance().getTime());
        userRepository.save(po);
        AccountProfile u = BeanMapUtils.copyPassport(po);

        BadgesCount badgesCount = new BadgesCount();
        badgesCount.setMessages(messageService.unread4Me(u.getId()));

        u.setBadgesCount(badgesCount);
        return u;
    }

    @Override
    @Transactional
    public AccountProfile findProfile(Long id) {
        User po = userRepository.findById(id).orElse(null);

        Assert.notNull(po, "账户不存在");

//		Assert.state(po.getStatus() != Const.STATUS_CLOSED, "您的账户已被封禁");
        po.setLastLogin(Calendar.getInstance().getTime());

        AccountProfile u = BeanMapUtils.copyPassport(po);

        BadgesCount badgesCount = new BadgesCount();
        badgesCount.setMessages(messageService.unread4Me(u.getId()));

        u.setBadgesCount(badgesCount);

        return u;
    }

    @Override
    @Transactional
    public UserVO register(UserVO user) {
        Assert.notNull(user, "Parameter user can not be null!");

        Assert.hasLength(user.getUsername(), "用户名不能为空!");
        Assert.hasLength(user.getPassword(), "密码不能为空!");

        User check = userRepository.findByUsername(user.getUsername());

        Assert.isNull(check, "用户名已经存在!");

        if (StringUtils.isNotBlank(user.getEmail())) {
            User emailCheck = userRepository.findByEmail(user.getEmail());
            Assert.isNull(emailCheck, "邮箱已经存在!");
        }

        User po = new User();

        BeanUtils.copyProperties(user, po);

        if (StringUtils.isBlank(po.getName())) {
            po.setName(user.getUsername());
        }

        Date now = Calendar.getInstance().getTime();
        po.setPassword(MD5.md5(user.getPassword()));
        po.setStatus(EntityStatus.ENABLED);
        po.setCreated(now);

        userRepository.save(po);

        return BeanMapUtils.copy(po);
    }

    @Override
    @Transactional
    public AccountProfile update(UserVO user) {
        User po = userRepository.findById(user.getId()).get();
        po.setName(user.getName());
        po.setSignature(user.getSignature());
        userRepository.save(po);
        return BeanMapUtils.copyPassport(po);
    }

    @Override
    @Transactional
    public AccountProfile updateEmail(long id, String email) {
        User po = userRepository.findById(id).get();

        if (email.equals(po.getEmail())) {
            throw new MtonsException("邮箱地址没做更改");
        }

        User check = userRepository.findByEmail(email);

        if (check != null && check.getId() != po.getId()) {
            throw new MtonsException("该邮箱地址已经被使用了");
        }
        po.setEmail(email);
        userRepository.save(po);
        return BeanMapUtils.copyPassport(po);
    }

    @Override
    public UserVO get(long userId) {
        Optional<User> optional = userRepository.findById(userId);
        if (optional.isPresent()) {
            return BeanMapUtils.copy(optional.get());
        }
        return null;
    }

    @Override
    public UserVO getByUsername(String username) {
        return BeanMapUtils.copy(userRepository.findByUsername(username));
    }

    @Override
    public UserVO getByEmail(String email) {
        return BeanMapUtils.copy(userRepository.findByEmail(email));
    }

    @Override
    @Transactional
    public AccountProfile updateAvatar(long id, String path) {
        User po = userRepository.findById(id).get();
        po.setAvatar(path);
        userRepository.save(po);
        return BeanMapUtils.copyPassport(po);
    }

    @Override
    @Transactional
    public void updatePassword(long id, String newPassword) {
        User po = userRepository.findById(id).get();

        Assert.hasLength(newPassword, "密码不能为空!");

        po.setPassword(MD5.md5(newPassword));
        userRepository.save(po);
    }

    @Override
    @Transactional
    public void updatePassword(long id, String oldPassword, String newPassword) {
        User po = userRepository.findById(id).get();

        Assert.hasLength(newPassword, "密码不能为空!");

        Assert.isTrue(MD5.md5(oldPassword).equals(po.getPassword()), "当前密码不正确");
        po.setPassword(MD5.md5(newPassword));
        userRepository.save(po);
    }

    @Override
    @Transactional
    public void updateStatus(long id, int status) {
        User po = userRepository.findById(id).get();

        po.setStatus(status);
        userRepository.save(po);
    }

    @Override
    public long count() {
        return userRepository.count();
    }
    @Override
    public List<UserVO> hotusers(long uid){
        List<UserVO> list = new ArrayList<>();
        Set<Long> uids = new HashSet<>();
        if (uid == 0){
            List<UserRecScore> userRecScoreList = userRecScoreService.SelectMaxRecScoreUser();
//            List<TagCreate> tagCreates = tagCreateRepository.findAll();
//            Collections.sort(tagCreates, new TagCreateComparator());
            int index = 0;
            for (int i = 0; i < userRecScoreList.size(); i++){
                if (index >= 6){
                    break;
                }
                long hotUserId = userRecScoreList.get(i).getUid();
                if (uids.contains(hotUserId)){
                    continue;
                }
                UserVO user = get(hotUserId);
                list.add(user);
                uids.add(hotUserId);
                index++;
            }
        }else {
            List<TagLike> tagLikes = tagLikeRepository.findByUid(uid);
            Collections.sort(tagLikes, new TagLikeComparator());
            for (int i = 0; i < tagLikes.size(); i++){
                long tag = tagLikes.get(i).getMtoTag();
                getHotUserByTags(tag, list, uids, uid);
                if (list.size() >=6){
                    break;
                }
            }

        }

        if (list.size() < 6){
            List<UserRecScore> userRecScoreList = userRecScoreService.SelectMaxRecScoreUser();
//            List<TagCreate> tagLikes = tagCreateRepository.findAll();
//            System.out.println(tagLikes);
            int index = list.size();
            for (int i = 0; i < userRecScoreList.size(); i++){
                if (index >= 6){
                    break;
                }
                long hotUserId = userRecScoreList.get(i).getUid();
                if (uids.contains(hotUserId) || hotUserId == uid){
                    continue;
                }
                UserVO user = get(hotUserId);
                list.add(user);
                uids.add(hotUserId);
                index++;
            }
        }
//        System.out.println(list);
        return list;
    }
    /**
     * 根据tag获取到热度最高的用户
     */
    public void getHotUserByTags(long tag, List<UserVO> list, Set<Long> uids, long uid){
        List<TagCreate> tagCreates = tagCreateRepository.findByMtoTag(tag);

        int index = list.size();
        for (int i = 0; i < tagCreates.size(); i++){
            if (index >5){
                break;
            }
            long hotUserId = tagCreates.get(i).getUid();
            if (uids.contains(hotUserId)  || uid == hotUserId){
                continue;
            }
            UserVO user = get(hotUserId);
            list.add(user);
            uids.add(hotUserId);
            index++;
        }
        return;
    }

}


/**
 * tagCreate的比较器
 */
class TagCreateComparator implements Comparator<TagCreate>{

    @Override
    public int compare(TagCreate o1, TagCreate o2) {
        if (o1.getScore() > o2.getScore()){
            return -1;
        }else {
            return 1;
        }

    }
}
/**
 * tagLike的比较器
 */
class TagLikeComparator implements Comparator<TagLike>{

    @Override
    public int compare(TagLike o1, TagLike o2) {
        if (o1.getScore() > o2.getScore()){
            return -1;
        }else {
            return 1;
        }

    }
}