package com.mycompany.webapp.dao.mybatis;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;

import com.mycompany.webapp.dto.product.ProductDetailDto;
import com.mycompany.webapp.dto.product.ProductDto;

@Mapper
public class ProductDaoImpl implements ProductDao{
	/*@Autowired
	private SqlSessionTemplate sqlSessionTemplate;*/
	
	@Resource
	private SqlSession sqlSession;
	
	@Override
	public List<ProductDto> selectchairlist() {
		
		return sqlSession.selectList("product.selectchairlist");
	}

	@Override
	public int insertproduct(ProductDto product) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public void saveImage(Map<String, Object> hmap) {
		sqlSession.update("sqlSession", hmap);
	}
	@Override
	public List<ProductDto> soltsalesCount(){
		return sqlSession.selectList("product.soltsalesCount");
	}
	@Override
	public List<ProductDto> soltviewCount(){
		return sqlSession.selectList("product.soltviewCount");
	}
	@Override
	public List<ProductDto> soltreviewCount(){
		return sqlSession.selectList("product.soltreviewCount");
	}
	@Override
	public List<ProductDto> solttime(){
		return sqlSession.selectList("product.solttime");
	}
	@Override
	public List<ProductDto> selectbestlist(){
		return sqlSession.selectList("product.selectbestlist");
	}
	@Override//상세보기
	public ProductDto selectDetailProduct(String modelNumber) {
		return sqlSession.selectOne("product.detailProduct", modelNumber);
	}
	@Override//카트에 들어갈 제품 선택
	public ProductDto selectProduct(String modelNumber) {
		return sqlSession.selectOne("product.selectProduct", modelNumber);
	}
	/*@Override
	public Map<String, Object> getByteImage(){
		return sqlSession.selectOne("sqlSession.getByteImage");
	}*/

	@Override
	public List<ProductDto> selectproductlist(String category) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductDto> selectreviewslist(String category) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductDto> selectviewslist(String category) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductDto> selectpopularlist(String category) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductDto> selectnewlist(String category) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<ProductDetailDto> detailProductPhoto(String modelNumber){
		return sqlSession.selectList("product.detailProductPhoto");
	}
	
	
}
