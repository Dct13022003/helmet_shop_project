package vn.helmetshop.helmetshop.service;

import java.sql.Timestamp;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import vn.helmetshop.helmetshop.domain.Category;

import vn.helmetshop.helmetshop.domain.dto.CategoryDTO;
import vn.helmetshop.helmetshop.repository.CategoryRepository;

import vn.helmetshop.helmetshop.repository.Mapper.CategoryMapper;

@Service
public class CategorySevice {
    private final CategoryRepository categoryRepository;
    private final UploadFileService uploadFileService;
    private CategoryMapper categoryMapper = CategoryMapper.INSTANCE;

    public CategorySevice(CategoryRepository categoryRepository, UploadFileService uploadFileService) {
        this.categoryRepository = categoryRepository;
        this.uploadFileService = uploadFileService;
    }

    public Category getCreateCategory(Category newCategory, MultipartFile file, MultipartFile file2) {
        String fileThumbnailName = this.uploadFileService.handleSaveUploadFile(file, "category");
        String fileBannerName = this.uploadFileService.handleSaveUploadFile(file2, "category");
        Timestamp creat_at = new Timestamp(System.currentTimeMillis());
        newCategory.setThumbnail(fileThumbnailName);
        newCategory.setBanner(fileBannerName);
        newCategory.setCreated_at(creat_at);
        return this.categoryRepository.save(newCategory);
    }

    public List<CategoryDTO> getAllCategories() {
        List<Category> categories = this.categoryRepository.findAll();

        return categories.stream().map(categoryMapper::toDTO)
                .collect(Collectors.toList());
    }

    public Page<Category> getAllCategoriesPage(Pageable pageable) {
        Page<Category> categories = this.categoryRepository.findAll(pageable);
        return categories;
    }

    public Category getCategoryById(long id) {
        return this.categoryRepository.findById(id);

    }

    public Category updateCategory(Category category, MultipartFile file, MultipartFile file2) {

        Optional<Category> upCategory = Optional.of(this.categoryRepository.findById(category.getId()));
        if (upCategory.isPresent()) {
            if (file.getOriginalFilename() != "") {
                String fileThumbnailName = this.uploadFileService.handleSaveUploadFile(file, "category");
                category.setThumbnail(fileThumbnailName);
            }
            if (file2.getOriginalFilename() != "") {
                String fileBannerName = this.uploadFileService.handleSaveUploadFile(file2, "category");
                category.setBanner(fileBannerName);
            }
        }

        Timestamp update_at = new Timestamp(System.currentTimeMillis());

        category.setUpdated_at(update_at);

        return this.categoryRepository.save(category);
    }

}
