package com.entregajava.jpa.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.Data;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "factura")
public class Factura {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "cliente_id", nullable = false)
    @JsonIgnore
    private Cliente cliente;

    @Column(nullable = false)
    private Date fecha;

    @Column(nullable = false)
    private double total;

    // Factura.java
    @OneToMany(mappedBy = "factura", cascade = CascadeType.ALL)
    @JsonIgnore // Evita serialización cíclica
    private List<DetalleFactura> detalles;
}