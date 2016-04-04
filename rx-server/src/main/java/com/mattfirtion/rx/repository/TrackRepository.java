package com.mattfirtion.rx.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.mattfirtion.rx.model.Track;

public interface TrackRepository extends JpaRepository<Track, Integer> {

}
