package com.assignment2.assignment2.item.domain;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false) // 무결성 제약 조건
    private String title;

    @Column(nullable = false)
    private String author;

    @Column(unique = true) // 무결성 제약 조건
    private String isbn;
}
