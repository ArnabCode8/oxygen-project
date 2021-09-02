package com.oxygen.OxygenProject.Controllers;

import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.oxygen.OxygenProject.Entity.City;
import com.oxygen.OxygenProject.Entity.Contact;
import com.oxygen.OxygenProject.Entity.Org;
import com.oxygen.OxygenProject.Entity.Review;
import com.oxygen.OxygenProject.Entity.Subarea;
import com.oxygen.OxygenProject.Repo.CityRepo;
import com.oxygen.OxygenProject.Repo.ContactRepo;
import com.oxygen.OxygenProject.Repo.OrgRepo;
import com.oxygen.OxygenProject.Repo.ReviewRepo;
import com.oxygen.OxygenProject.Repo.SubareaRepo;

@RestController
public class MainController {
	
	@Autowired
	private ApplicationContext context;
	
	@Autowired
	private ObjectMapper mapper;
	
	
	//views are on other controller
	
	
	//city module
	
	@GetMapping("/city")
	@ResponseBody
	public void allCities(PrintWriter out) throws JsonProcessingException
	{
	    
		CityRepo cr = context.getBean(CityRepo.class);
	    List<City> arr = cr.findAll();
	    String jsonString = mapper.writeValueAsString(arr);
	    out.println(jsonString);
	    
	}
	
	@PostMapping("city/{cityname}")
	@ResponseBody
	public void addCity(@PathVariable("cityname") String name,PrintWriter out) throws JsonProcessingException
	{
		City city = new City();
		city.setCityname(name);
		CityRepo cr = context.getBean(CityRepo.class);
		City ct1 = cr.save(city);
		String jsonString = mapper.writeValueAsString(ct1);
		out.println(jsonString);
	}
	
	
	//subarea module
	
	@GetMapping("/subarea/{cityid}")
	@ResponseBody
	public void allSubareas(@PathVariable("cityid") int cid,PrintWriter out) throws JsonProcessingException
	{
		Iterable<Integer> itr;
		SubareaRepo sr = context.getBean(SubareaRepo.class);
	    List<Subarea> arr = sr.findByCityid(cid);
	    
		String jsonString = mapper.writeValueAsString(arr);
		out.println(jsonString);
		
	}
	
	@PostMapping("/subarea/{subareaname}/{cityid}")
	@ResponseBody
	public void addSubarea(@PathVariable("subareaname") String name,@PathVariable("cityid") int cid,PrintWriter out) throws JsonProcessingException
	{
		Subarea sa = new Subarea();
		sa.setSubreaname(name);
		sa.setCityid(cid);
		SubareaRepo sr = context.getBean(SubareaRepo.class);
		Subarea sa1 = sr.save(sa);
		String jsonString = mapper.writeValueAsString(sa1);
		out.println(jsonString);
		
	}
	
	//Contact Module
	
	@GetMapping("/verifycontact/{conarrstr}")
	@ResponseBody
	public void verifyContacts(@PathVariable("conarrstr")String conarrstr, PrintWriter out) throws JsonProcessingException
	{
		String[] conarr = conarrstr.split("A");
		ArrayList<String> conlist = new ArrayList<String>(Arrays.asList(conarr));
		System.out.println("The splitted array is : " + conarr);
		ContactRepo crep = context.getBean(ContactRepo.class);
		List<Contact> arr = crep.findAllByContactIn(conlist);
		String jsonString = mapper.writeValueAsString(arr);
		out.println(jsonString);
		
	}
	
	@PostMapping("/contact/{orgid}/{contact}")
	@ResponseBody
	public void addContact(@PathVariable("orgid") int orgid, @PathVariable("contact") String contact, PrintWriter out) throws JsonProcessingException
	{
		Contact c = new Contact();
		c.setOrgid(orgid);
		c.setContact(contact);
		ContactRepo crep = context.getBean(ContactRepo.class);
		
		List<Contact> carr = crep.findAllByContact(contact);
		String str = "error occured";
		if(carr.size() > 0)
		{
			str = "this contact is already used";
		}	
		else
		{
			Contact c1 = crep.save(c);
			str = "yes";
		}	
		
		String jsonString = mapper.writeValueAsString(str);
		out.println(jsonString);
	}
	
	@PutMapping("/contact/{contactid}/{orgid}/{contact}")
	@ResponseBody
	public void updateContact(@PathVariable("contactid")int contactid,@PathVariable("orgid")int orgid,@PathVariable("contact")String contact,PrintWriter out) throws JsonProcessingException
	{
		ContactRepo crep = context.getBean(ContactRepo.class);
		Contact c = crep.findAllByContactidAndOrgid(contactid, orgid).get(0);
		List<Contact> carr = crep.findAllByContact(contact);
		String str = "some error occured";
		
		if(carr.size() > 0)
		{
			str = "This contact is already used";
		}
		else
		{
			c.setContact(contact);
			Contact c1 = crep.save(c);
			str = "yes";	
		}	
		
		String jsonString = mapper.writeValueAsString(str);
		out.println(jsonString);
		
	}
	
	@DeleteMapping("/contact/{contactid}")
	@ResponseBody
	public void deleteContactByContactId(@PathVariable("contactid") int contactid,PrintWriter out) throws JsonProcessingException
	{
		ContactRepo crep = context.getBean(ContactRepo.class);
		Contact c = crep.findAllByContactid(contactid).get(0);
		crep.delete(c);
		
		String str = "yes";
		String jsonString = mapper.writeValueAsString(str);
		out.println(jsonString);
	}
	
	@GetMapping("/contact/{orgid}")
	@ResponseBody
	public void contactByOrgId(@PathVariable("orgid") int orgid,PrintWriter out) throws JsonProcessingException
	{
		ContactRepo cr = context.getBean(ContactRepo.class);
		List<Contact> cons = cr.findContactByOrgid(orgid);
		String jsonString = mapper.writeValueAsString(cons);
		out.println(jsonString);
	}
	
	//review module
	//reviewid orgid phno remark review date
	
	@PostMapping("/review/{orgid}/{phno}/{remark}/{review}")
	@ResponseBody
	public void addReview(@PathVariable("orgid") int orgid,@PathVariable("phno") String phno,@PathVariable("remark") int remark,@PathVariable("review") String review, PrintWriter out) throws JsonProcessingException
	{
		Review re = new Review();
		re.setOrgid(orgid);
		re.setPhno(phno);
		re.setRemark(remark);
		re.setReview(review);
		
		String date = LocalDate.now().format(DateTimeFormatter.ofPattern("dd-MM-yyyy"));
		
		re.setDate(date);
		
		ReviewRepo rp = context.getBean(ReviewRepo.class);
		Review r1 = rp.save(re);
		
		OrgRepo orep = context.getBean(OrgRepo.class);
		Org or = orep.getByOrgid(orgid).get(0);
		
		if(remark == 0)
		{
			//no use section
			int nc = or.getNousecount();
			nc += 1;
			or.setNousecount(nc);
			
		}
		else
		{
			//helpful section
			int hc = or.getHelpfulcount();
			hc += 1;
			or.setHelpfulcount(hc);
		}		
		
		orep.save(or);
		
		String str = "yes";
		String jsonString = mapper.writeValueAsString(str);
		out.println(jsonString);
	}
	
	@PutMapping("/review/{orgid}/{phno}/{remark}/{review}")
	@ResponseBody
	public void editReview(@PathVariable("orgid")int orgid,@PathVariable("phno")String phno, @PathVariable("remark")int remark, @PathVariable("review")String review, PrintWriter out) throws JsonProcessingException
	{
		String date = LocalDate.now().format(DateTimeFormatter.ofPattern("dd-MM-yyyy"));
		ReviewRepo rrep = context.getBean(ReviewRepo.class);
		Review rv = rrep.getReviewsByOrgidAndPhno(orgid,phno).get(0);
		
		int prevrem = rv.getRemark();
		
		rv.setRemark(remark);
		rv.setReview(review);
		rv.setDate(date);
		
		Review rv1 = rrep.save(rv);
		
		if(prevrem == 0 && remark == 1)
		{
			//dec no use, inc helpful
			OrgRepo orep = context.getBean(OrgRepo.class);
			Org or = orep.getByOrgid(orgid).get(0);
			or.setNousecount(or.getNousecount() - 1);
			or.setHelpfulcount(or.getHelpfulcount() + 1);
			orep.save(or);
		}
		
		if(prevrem == 1 && remark == 0)
		{
			//dec helpful, inc no use
			OrgRepo orep = context.getBean(OrgRepo.class);
			Org or = orep.getByOrgid(orgid).get(0);
			or.setNousecount(or.getNousecount() + 1);
			or.setHelpfulcount(or.getHelpfulcount() - 0);
			orep.save(or);
		}
		
		String str = "yes";
		String jsonString = mapper.writeValueAsString(str);
		out.println(jsonString);
		
	}
	
	@GetMapping("/review/{orgid}")
	@ResponseBody
	public void reviewByOrgId(@PathVariable("orgid") int orgid,PrintWriter out) throws JsonProcessingException
	{
		ReviewRepo rp = context.getBean(ReviewRepo.class);
		List<Review> arr = rp.getReviewsByOrgid(orgid);
		String jsonString = mapper.writeValueAsString(arr);
		out.println(jsonString);
	}
	
	@GetMapping("unitreview/{orgid}/{phno}")
	@ResponseBody
	public void unitReviewByOrgidAndPhno(@PathVariable("orgid")int orgid,@PathVariable("phno")String phno,PrintWriter out) throws JsonProcessingException
	{
		ReviewRepo rp = context.getBean(ReviewRepo.class);
		List<Review> arr = rp.findAllByOrgidAndPhno(orgid, phno);
		String jsonString = mapper.writeValueAsString(arr);
		out.println(jsonString);
	}
	
	//org module : the important one
	//name address available cost help no use serv count
	@PostMapping("/org/{orgname}/{cityid}/{subareaid}/{address}/{available}/{cost}/{contactstr}")
	@ResponseBody
	public void addOrg(@PathVariable("contactstr") String contactstr,@PathVariable("orgname") String orgname,@PathVariable("address") String address,@PathVariable("available") int available,@PathVariable("cost") int cost,@PathVariable("cityid") int cityid,@PathVariable("subareaid")int subareaid,PrintWriter out) throws JsonProcessingException
	{
		OrgRepo or = context.getBean(OrgRepo.class);
		Org org = new Org();
		
		org.setOrgname(orgname);
		org.setCityid(cityid);
		org.setSubareaid(subareaid);
		org.setAddress(address);
		org.setAvailable(available);
		org.setCost(cost);
		org.setHelpfulcount(0);
		org.setNousecount(0);
		org.setServedcount(0);
		
		String date = LocalDate.now().format(DateTimeFormatter.ofPattern("dd-MM-yyyy"));
		
		org.setDate(date);
		
	    Org org1 = or.save(org);
	    int orgid = org1.getOrgid();
	    //adding org is done, now it's contact's turn
	    
	    ContactRepo crep = context.getBean(ContactRepo.class);
	    Contact c = new Contact();
	    c.setOrgid(orgid);
	    String[] conArr = contactstr.split("A");
	    for(String s : conArr)
	    {
	    	c.setContact(s);
	    	crep.save(c);
	    }	
	    
	    String str = "yes";
	    String jsonString = mapper.writeValueAsString(str);
	    out.println(jsonString);
		
	}
	
	@GetMapping("/verifyorgname/{cityid}/{subareaid}/{orgname}")
	@ResponseBody
	public void verifyOrgname(@PathVariable("cityid")int cityid,@PathVariable("subareaid")int subareaid,@PathVariable("orgname")String orgname,PrintWriter out) throws JsonProcessingException
	{
	   OrgRepo orep = context.getBean(OrgRepo.class);
	   List<Org> arr = orep.findAllByCityidAndSubareaidAndOrgname(cityid, subareaid, orgname);
	   String str = "match";
	   if(arr.size() == 0)
	   {
		   str = "unique";
	   }
	   
	   String jsonString = mapper.writeValueAsString(str);
	   out.println(jsonString);
	   
	}	
	
	
	@GetMapping("/org/{cityid}/{subareaid}")
	@ResponseBody
	public void getOrgByLocation(String sortby,@PathVariable("cityid") int cityid, @PathVariable("subareaid") int subareaid,PrintWriter out) throws JsonProcessingException
	{
		OrgRepo orep = context.getBean(OrgRepo.class);
		ArrayList<Object> resOut = new ArrayList<Object>();
		//date avail serve help cost
		
		List<Org> arr1 = orep.findAllByCityidAndSubareaid(cityid, subareaid);
		Collections.sort(arr1,new DateComparator());
	
		List<Org> arr2 = orep.findAllByCityidAndSubareaidOrderByAvailableDesc(cityid, subareaid);
		List<Org> arr3 = orep.findAllByCityidAndSubareaidOrderByServedcountDesc(cityid, subareaid);
		List<Org> arr4 = orep.findAllByCityidAndSubareaidOrderByHelpfulcountDesc(cityid, subareaid);
		List<Org> arr5 = orep.findAllByCityidAndSubareaidOrderByCostAsc(cityid, subareaid);
	
		resOut.add(arr1);
		resOut.add(arr2);
		resOut.add(arr3);
		resOut.add(arr4);
		resOut.add(arr5);
		
		String jsonString = mapper.writeValueAsString(resOut);
		out.println(jsonString);
	}
	
	@GetMapping("/unitorg/{orgid}")
	@ResponseBody
	public void getUnitOrg(@PathVariable("orgid")int orgid,PrintWriter out) throws JsonProcessingException
	{
		OrgRepo orep = context.getBean(OrgRepo.class);
		Org or = orep.findAllByOrgid(orgid).get(0);
		String jsonString = mapper.writeValueAsString(or);
		out.println(jsonString);
	}
	
	@PutMapping("/orgname/{orgid}/{orgname}")
	@ResponseBody
	public void updateOrgnameByOrgid(@PathVariable("orgid") int orgid,@PathVariable("orgname") String orgname,PrintWriter out) throws JsonProcessingException
	{
		OrgRepo orep = context.getBean(OrgRepo.class);
		List<Org> arr = orep.getByOrgid(orgid);
		Org or1 = arr.get(0);
		or1.setOrgname(orgname);
		orep.save(or1);
		String str = "yes";
		String jsonString = mapper.writeValueAsString(str);
		out.println(jsonString);
	}
	
	@PutMapping("/orgaddress/{orgid}/{address}")
	@ResponseBody
	public void updateAddressByOrgid(@PathVariable("orgid") int orgid,@PathVariable("address") String address,PrintWriter out) throws JsonProcessingException
	{
		OrgRepo orep = context.getBean(OrgRepo.class);
		List<Org> arr = orep.getByOrgid(orgid);
		Org or1 = arr.get(0);
		or1.setAddress(address);
		orep.save(or1);
		String str = "yes";
		String jsonString = mapper.writeValueAsString(str);
		out.println(jsonString);
		
	}
	
	@PutMapping("/changestock/{orgid}/{stock}/{status}")
	@ResponseBody
	public void addStock(@PathVariable("orgid") int orgid, @PathVariable("stock") int stock,@PathVariable("status") String status, PrintWriter out) throws JsonProcessingException
	{
		
		//serve and add-stock both are in the same url
		OrgRepo orep = context.getBean(OrgRepo.class);
		Org or = orep.getByOrgid(orgid).get(0);
		int av = or.getAvailable();
		
		if(status.equals("add"))
		{
			av += stock;	
		}
		else
		{
			//available reduces
			//serve count increases
			//serve date is updated
			av -= stock;
			int sv = or.getServedcount();
			sv += stock;
			
			String date = LocalDate.now().format(DateTimeFormatter.ofPattern("dd-MM-yyyy"));
			
			or.setServedcount(sv);
			or.setDate(date);
		}	
			
		or.setAvailable(av);
		orep.save(or);
		String str = "yes";
		String jsonString = mapper.writeValueAsString(str);
		out.println(jsonString);	
	}
	
	
	

	
	

}
