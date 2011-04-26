package org.hyperic.hq.inventory.data;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.hyperic.hq.inventory.NotUniqueException;
import org.hyperic.hq.inventory.domain.ResourceType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.graph.neo4j.repository.DirectGraphRepositoryFactory;
import org.springframework.data.graph.neo4j.repository.GraphRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class Neo4jResourceTypeDao implements ResourceTypeDao {

    @Autowired
    private DirectGraphRepositoryFactory finderFactory;

    private GraphRepository<ResourceType> resourceTypeFinder;

    @PostConstruct
    public void initFinder() {
        resourceTypeFinder = finderFactory.createGraphRepository(ResourceType.class);
    }

    public Long count() {
        return resourceTypeFinder.count();
    }

    public List<ResourceType> find(Integer firstResult, Integer maxResults) {
        List<ResourceType> resourceTypes = new ArrayList<ResourceType>();
        Iterable<ResourceType> result = resourceTypeFinder.findAll();
        int currentPosition = 0;
        int endIndex = firstResult + maxResults;
        for (ResourceType resourceType : result) {
            if (currentPosition > endIndex) {
                break;
            }
            if (currentPosition >= firstResult) {
                resourceTypes.add(resourceType);
            }
            currentPosition++;
        }
        return resourceTypes;
    }

    public List<ResourceType> findAll() {
        List<ResourceType> resourceTypes = new ArrayList<ResourceType>();
        Iterable<ResourceType> result = resourceTypeFinder.findAll();
        for (ResourceType resourceType : result) {
            resourceTypes.add(resourceType);
        }

        return resourceTypes;
    }

    public ResourceType findById(Integer id) {
        // TODO once id becomes a String, look up by indexed property. Using id
        // index doesn't work for some reason.
        ResourceType type = resourceTypeFinder.findOne(id.longValue());
        return type;
    }

    public ResourceType findByName(String name) {
        ResourceType type = resourceTypeFinder.findByPropertyValue("name", name);
        return type;
    }

    public ResourceType findRoot() {
        return findById(1);
    }

    @Transactional("neoTxManager")
    public void persist(ResourceType resourceType) {
        if (findByName(resourceType.getName()) != null) {
            throw new NotUniqueException("Resource Type with name " + resourceType.getName() +
                                         " already exists");
        }
        resourceType.persist();
        // TODO meaningful id
        resourceType.setId(resourceType.getNodeId().intValue());
    }
}