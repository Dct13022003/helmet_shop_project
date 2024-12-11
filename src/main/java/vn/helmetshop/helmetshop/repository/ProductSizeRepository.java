package vn.helmetshop.helmetshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.helmetshop.helmetshop.domain.Product_size;

@Repository
public interface ProductSizeRepository extends JpaRepository<Product_size, Long> {
    Product_size save(Product_size product_size);
}
