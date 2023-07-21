{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 129.0, 509.0, 839.0, 629.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-11",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 416.0, 512.0, 150.0, 33.0 ],
					"presentation_linecount" : 2,
					"text" : "Last output (joint anle data)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 97.0, 512.0, 150.0, 20.0 ],
					"text" : "Last output (pose data)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-5",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 166.0, 120.0, 105.0, 47.0 ],
					"presentation_linecount" : 3,
					"text" : "Receive datagram from Xsens"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 68.5, 225.0, 105.0, 20.0 ],
					"text" : "reset output"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 170.0, 175.0, 97.0, 22.0 ],
					"text" : "udpreceive 7000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 136.0, 414.0, 150.0, 20.0 ],
					"text" : "number of data"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 73.5, 256.0, 105.0, 22.0 ],
					"text" : "reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 449.0, 155.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 343.0, 155.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-24",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 437.5, 102.0, 86.0, 47.0 ],
					"text" : "Joint angle datagram example"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-25",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 298.5, 116.0, 105.0, 33.0 ],
					"text" : "Pose datagram example"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 106.0, 1558.0, 845.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 20.0,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 808.0, 65.0, 360.0, 29.0 ],
									"text" : "Joint angle datagram example"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 20.0,
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 107.0, 60.0, 232.0, 29.0 ],
									"text" : "Pose datagram example"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 737.0, 65.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 737.0, 22.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 65.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 22.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"linecount" : 15,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 737.0, 105.0, 646.0, 210.0 ],
									"text" : "77 88 84 80 50 48 0 0 1 194 128 28 0 0 17 148 0 23 0 0 0 0 2 48 0 0 1 2 0 0 2 1 192 133 64 198 63 53 116 116 192 10 30 184 0 0 2 2 0 0 3 1 191 232 63 175 62 246 223 115 192 217 0 202 0 0 3 2 0 0 4 1 191 232 62 13 62 246 247 253 191 117 254 175 0 0 4 2 0 0 5 1 191 178 11 122 62 95 234 12 64 163 207 168 0 0 5 2 0 0 6 1 64 60 203 221 64 157 110 254 65 187 29 222 0 0 6 2 0 0 7 1 64 213 22 75 65 4 130 13 64 246 71 164 0 0 5 3 0 0 8 1 64 167 93 81 193 47 201 39 65 96 205 110 0 0 8 2 0 0 9 1 66 84 148 90 66 154 50 133 66 213 253 57 0 0 9 2 0 0 10 1 65 162 111 145 66 207 243 18 193 131 181 17 0 0 10 2 0 0 11 1 166 243 1 95 167 151 240 124 167 41 167 234 0 0 5 4 0 0 12 1 192 166 69 179 64 7 71 12 192 138 228 29 0 0 12 2 0 0 13 1 65 115 120 7 191 149 201 251 64 181 138 31 0 0 13 2 0 0 14 1 63 32 83 228 66 171 249 194 63 58 224 76 0 0 14 2 0 0 15 1 39 126 43 40 164 5 13 55 38 232 132 188 0 0 1 3 0 0 16 1 39 18 35 185 166 199 92 134 166 54 163 171 0 0 16 2 0 0 17 1 39 18 35 185 166 199 92 134 38 54 163 171 0 0 17 2 0 0 18 1 39 18 35 185 166 199 92 134 166 54 163 171 0 0 18 2 0 0 19 1 167 16 249 219 39 122 206 29 38 6 180 135 0 0 1 4 0 0 20 1 167 18 35 185 38 199 92 134 166 54 163 171 0 0 20 2 0 0 21 1 167 18 35 185 38 199 92 134 38 54 163 171 0 0 21 2 0 0 22 1 167 18 35 185 38 199 92 134 166 54 163 171 0 0 22 2 0 0 23 1 39 16 249 219 167 122 206 29 38 6 180 135 0 0 5 0 0 0 7 0 65 14 86 63 65 89 200 53 65 253 114 156 0 0 5 0 0 0 13 0 65 29 78 7 62 222 165 142 63 227 121 217 0 0 5 0 0 0 9 0 66 116 58 50 66 188 123 209 67 8 1 248 0 0 1 0 0 0 5 0 193 19 100 126 63 230 43 67 192 156 138 161 0 0 1 0 0 0 1 0 191 38 235 193 40 80 169 115 64 74 138 30 0 0 1 0 0 0 5 0 193 29 201 123 63 237 100 142 191 222 72 174"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"linecount" : 23,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 564.0, 317.0 ],
									"text" : "77 88 84 80 48 49 0 0 0 176 128 23 0 0 6 224 0 23 0 0 0 0 2 132 0 0 0 1 0 0 0 0 66 250 0 0 0 0 0 0 64 172 16 99 65 186 215 104 191 14 189 171 0 0 0 2 60 235 126 236 67 6 95 177 190 20 40 2 64 98 40 186 65 165 116 112 63 135 141 39 0 0 0 3 61 128 206 236 67 16 165 143 62 229 186 95 192 72 36 204 65 156 19 167 63 230 27 104 0 0 0 4 190 206 212 180 67 26 4 126 189 30 58 142 192 126 148 229 65 146 199 242 64 35 38 8 0 0 0 5 191 131 99 190 67 35 92 94 191 41 41 53 63 155 102 237 65 139 221 118 64 71 195 219 0 0 0 6 191 212 92 224 67 48 127 220 190 202 45 254 65 176 13 111 65 174 255 64 64 9 9 105 0 0 0 7 191 61 62 186 67 56 163 45 64 41 185 180 65 201 225 110 65 241 132 11 64 10 121 197 0 0 0 8 192 131 133 131 67 42 148 121 62 181 38 59 64 223 74 50 65 168 66 55 65 43 227 53 0 0 0 9 193 131 196 4 67 40 60 39 64 166 31 13 65 188 205 182 63 221 66 3 66 182 119 253 0 0 0 10 193 125 145 63 67 11 82 160 64 194 10 35 65 185 99 190 64 189 125 87 66 177 175 98 0 0 0 11 193 130 148 255 66 231 160 189 65 8 14 169 65 185 99 190 64 189 125 87 66 177 175 98 0 0 0 12 63 174 16 28 67 42 224 204 191 175 142 215 63 197 240 241 65 148 215 219 192 232 146 5 0 0 0 13 65 96 130 241 67 41 67 21 192 181 129 49 193 141 233 203 188 208 107 164 194 171 242 191 0 0 0 14 65 128 129 171 67 12 102 192 192 181 20 159 193 147 29 18 191 190 24 120 194 173 22 32 0 0 0 15 65 139 232 225 66 233 159 202 192 161 117 206 193 147 29 18 191 190 24 120 194 173 22 32 0 0 0 16 192 225 148 3 66 250 41 79 64 66 207 243 64 172 16 99 65 186 215 104 191 14 189 171 0 0 0 17 193 14 181 163 66 170 181 103 190 200 78 125 64 172 16 99 65 186 215 104 191 14 189 171 0 0 0 18 193 43 226 62 66 58 128 6 192 111 106 76 64 172 16 99 65 186 215 104 191 14 189 171 0 0 0 19 192 165 81 44 66 26 119 44 65 21 167 172 64 172 16 99 65 186 215 104 191 14 189 171 0 0 0 20 64 225 148 145 66 249 225 250 192 66 213 134 64 172 16 99 65 186 215 104 191 14 189 171 0 0 0 21 64 165 189 77 66 170 110 18 192 207 87 165 64 172 16 99 65 186 215 104 191 14 189 171 0 0 0 22 64 86 200 46 66 57 241 92 193 29 67 241 64 172 16 99 65 186 215 104 191 14 189 171 0 0 0 23 65 14 235 180 66 25 232 130 64 80 249 56 64 172 16 99 65 186 215 104 191 14 189 171"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-22",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 387.5, 477.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 343.0, 189.0, 125.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p datagram-examples"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 31.0, 423.0, 38.0 ],
					"text" : "Xsens MVN datagram paser implemented in java (MXJ)\n"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"linecount" : 25,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 589.0, 64.0, 44.0, 342.0 ],
					"text" : "segID\n--------\n1\n2\n3\n4\n5\n6\n7\n8\n9\n10\n11\n12\n13\n14\n15\n16\n17\n18\n19\n20\n21\n22\n23"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"linecount" : 25,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 645.0, 64.0, 134.0, 342.0 ],
					"text" : "Segment name:\n---------------------\npelvis\nl5\nl3\nt12\nt8\nneck\nhead\nright_shoulder\nright_upper_arm\nright_fore_arm\nright_hand\nleft_shoulder\nleft_upper_arm\nleft_fore_arm\nleft_hand\nright_upper_leg\nright_lower_leg\nright_foot\nright_toe\nleft_upper_leg\nleft_lower_leg\nleft_foot\nleft_toe"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 145.0, 381.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 176.5, 292.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 202.0, 292.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 145.0, 348.0, 61.0, 22.0 ],
					"text" : "counter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 97.0, 450.0, 29.5, 22.0 ],
					"text" : "set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 416.0, 483.0, 266.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 411.0, 282.0, 57.0, 22.0 ],
					"text" : "print joint"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 273.0, 296.0, 55.0, 22.0 ],
					"text" : "print pos"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 97.0, 483.0, 266.0, 22.0 ],
					"text" : "/Xsens/23/rot 5.377 23.355179 -0.557582"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 231.0, 244.0, 149.0, 22.0 ],
					"text" : "mxj XsensJointUDPparser"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 1,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 1,
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"order" : 0,
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"order" : 2,
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"order" : 2,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"order" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 3 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 1,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 1 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 1,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "mxj.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
