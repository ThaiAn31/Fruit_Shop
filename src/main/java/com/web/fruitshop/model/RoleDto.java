package com.web.fruitshop.model;

import java.io.Serializable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RoleDto  implements Serializable{
	private static final long serialVersionUID = 1L;
	private String id;
	private String name;
}