{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 10,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 87.0, 845.0, 671.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 284.615398526191711, 239.0, 80.0, 22.0 ],
					"text" : "loadmess 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 209.890120148658752, 113.186818718910217, 206.0, 20.0 ],
					"text" : "this is a min/max crossfade ish"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 716.0, 245.0, 206.0, 33.0 ],
					"text" : "LFO 2:\nrate, amplitude, phase, accelleration"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 487.0, 145.0, 206.0, 33.0 ],
					"text" : "LFO 1:\nrate, amplitude, phase, accelleration"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-19",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 867.0, 288.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-20",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 809.0, 288.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-21",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 764.0, 288.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-22",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 716.0, 288.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 723.0, 329.0, 55.0, 22.0 ],
					"text" : "pak f f f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 723.0, 368.0, 140.0, 22.0 ],
					"text" : "prepend setWaveState 1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-17",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 635.0, 198.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-15",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 578.0, 198.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-14",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 533.0, 198.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-11",
					"maxclass" : "flonum",
					"maximum" : 12.0,
					"minimum" : -12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 485.0, 198.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 492.0, 239.0, 55.0, 22.0 ],
					"text" : "pak f f f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 492.0, 278.0, 140.0, 22.0 ],
					"text" : "prepend setWaveState 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 291.0, 317.0, 41.0, 22.0 ],
					"text" : "pak f f"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-18",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 288.0, 278.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 297.0, 368.0, 113.0, 22.0 ],
					"text" : "prepend setParams"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 916.0, 50.0, 300.0, 100.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, "C74_VST3:/LOW", ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~",
							"parameter_modmode" : 0,
							"parameter_shortname" : "vst~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "LOW.vst3info",
							"plugindisplayname" : "LOW",
							"pluginsavedname" : "",
							"pluginsaveduniqueid" : -1788789864,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"sliderorder" : [  ],
							"slidervisibility" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ],
							"blob" : "15918.VMjLgThO...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9DSL3TyLtbyMCQ1b2YDRwTEahk2ZwDFcvjFR2MiPLglKRkEcMESXpsFag0FLogTUQsVTyYVZHsxLSMjR5YlP2XmdScUPBIlbUISVuQCaUsVRxH1a3vVX3fjTLQmKosDdHg1SM4lKHYlcCQUPIUETMEjTZoFLogzSMYzXmk0UYglKnM1Y2Y0XqASZHc2LBwDZ2f1SM4lKHYlcCQUPIUETMEjTZoFLogzTQcUV3UULgglKnM1Y2Y0XqASZHMCVosTLHMDSw.UdLECQS0jLHkFSwfUZHU2LSMjRtHDR23RUPIUQTMkYpYTV3fDZPsFMFkkYDQUX0UUagoWRBgTLEYTXvTkUOgFQowDctjFR0MyTCojKBgzMtTETRUDUSYlZFkENHgVUqcWLgk1ZFMFMAgGUqQSLhglKnM1Y2Y0XqASZHY2LBwDZ2f1SM4lKHYlcCQUPIUETMEjTZoFLogjP3XzX5giUgUGQTEVcU0VX5kjPHESQFEFLUY0SnQzPLY2LBwDZ2f1SM4lKHYlcCQUPIUETMEjTZoFLogjP3XzX5giUgUGQDMldEECVwEDZQgWUVkEZtf1XmcmUisFLogjdhMjSzgzTNkmYowTdHMTS3QzPNICUogTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRnAUcQczX0ASLKETTGM1YMEiVlwTUjQWSrgTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRnAUcQczX0ASLKwDNwDlc3HTT3sFaYoWRBgTLEYTXvTkUOgFSowDcLMjS3o1PNoGQo0zcLkWSwn1TMg1Mn8TSt4BRlY2PTETRUAUSAIkVpASZHIDNFMld3XUX0YmdgUWPxrTQzXTVn4BZic1cVM1ZvjFR1MCZLIiKCwDdpMjSxfTZMACUC4TLlMUSncCZO0jatfjY1MDUAkTUP0TPRokZvjFRBgiQioGNVEVc1oWX0EjLKIUQFM1ZAgVT3UkUYglKnM1Y2Y0XqASZHc2LnwjLTMUS1gTZMMCQ40TdHMESxXVZHU2LSMjRtHDR23RUPIUQTMkYpYTV3fDZPUWTGMVcvDyRLgSLgYGNnQ0YQcUVlwTUjQWSrgTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRnAUcQczX0ASLKwDNwDlc3fGUu81UYglKnM1Y2Y0XqASZHY2LBwTdTkWS4gTZMEiKC0jdHMUSz3RdMcGR3sTN5YlPl4hPOAUQpQUPvPDRuEkUOgFR5EldQISXygCZTs1cVk0YMcUVlgkZhsVUrgjYXcEVxU0UYgCRR4jcyHDSv.0TLgGRS4DdPMjS1AUZMQCR3sTN5YlPl4hPOAUQpQUPvPDRuEkUOgFR5EldQISXygCZTs1cVk0YMcUVlwTUjQWSrgTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRnAUcQczX0ASLKM0ZsEVZIIDRwTjQgASUV8DZtj1R1gDdKkidlIjYtHzSPUjZTEDLDgzaQY0SnwjdgIGNrIVcDQUX0UUagoWRBgTLEYTXvTkUOgFVowDcDkWSvf0TLkGTCwTdLkFS1wzTLg1Mn8TSt4BRlY2PTETRUAUSAIkVpASZHMDNFEVcIIyRAE0QicVSwnkYXolXqUEaHYFVWgkbUcUV3fjPNQCSosDLlkVSwf0TNQCRSwzLhMUSncCZO0jatfjY1MDUAkTUP0TPRokZvjFRCgiQgUWRxrTPQczXm0TLZYFSUQFcMwFR0MyTCojKBgzMtTETRUDUSYlZFkENHgGT0cWLggGNBMUc3XjX0AkZh8VVFMFZtf1XmcmUisFLogjcyfFS24xPNMiYo0DLLMkSzvTZMYGVo0DZ2f1SM4lKHYlcCQUPIUETMEjTZoFLogzP3XTX0kjLKwDNwDlc3HUTzEEaHYFVWgkbUcUV3fjPLQGVS0zcDMjS14RZLMiZSwDLPMDSvvTZHU2LSMjRtHDR23RUPIUQTMkYpYTV3fDdPU2cwDFd3HzT0giQhUGRUgkdUYDRFkzUYsVRBgTLEYTXvTkUOglKosTdPMESzfUZMICTC4DdLkWSw3xTNQCR3sTN5YlPl4hPOAUQpQUPvPDRuEkUOgFS5Elb3vlX0YmdgUWPxrjTEYzXqEDdTQCMwfEZ2f1SM4lKHYlcCQUPIUETMEjTZoFLogzP3XTX0kjLKwDNwDlc3fGUu81UYglKnM1Y2Y0XqASZHY2LBwDdhkFS3A0TMoGVowDMlkGSy.UZMICR3sTN5YlPl4hPOAUQpQUPvPDRuEkUOgFS5Elb3vlX0gTUYIWUVgUdUYDRFkzUYsVRBgTLEYTXvTkUOgFTo0jLyHUSxPUZMMCSS0DMLkWSvfDdKkidlIjYtHzSPUjZTEDLDgzaQY0SnwjdgIGNrIVcHUUVxUkUXkWUFgzTq0VXokDdKkidlIjYtHzSPUjZTEDLDgzaQY0SnwjdgIGNrIVcLUEYz0DaHYFVWgkbUcUV3fjPLQmKogTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRBEkSEo2RGUjUZQGNRA0b3X0XzEUaHYFVWgkbUcUV3fjTLoGSoszLTkFSv3xPNACTC0DMHMESzfDdKkidlIjYtHzSPUjZTEDLDgzaQY0SnAkZSEDN3E0YqwVX0QDQioWQwfUbAgVT3UkUYglKnM1Y2Y0XqASZHMCUC0DchkFS1A0TMMiZC4jdLkWSvfDdKkidlIjYtHzSPUjZTEDLDgzaQY0SnAkZSEDN3E0YqwVX0QDQioWQwfUbAgGUzPSLXg1Mn8TSt4BRlY2PTETRUAUSAIkVpASZHQDMTAUchQEVuQSLKwDNwDlc3HTT3sFaYoWRBgTLEYTXvTkUOgFQCwjcyHDSncCZO0jatfjY1MDUAkTUP0TPRokZvjFRDQCUPUmXTg0azDyRLgSLgYGNREEcQwFRlg0UXIWUWkENHIDSzg0PNYGQCwTLHkFS3gUZLQCUC0jLDkFR0MyTCojKBgzMtTETRUDUSYlZFkENHITTNUjdKcTQVoEc3HzT0giQhUGRUgkdUYDRFkzUYsVRBgTLEYTXvTkUOglKosDLDMTS2QzTNgGV40jdXkGSwX1PMcGR3sTN5YlPl4hPOAUQpQUPvPDRuEkUOgFTpMUP3fWTmsFagUmc5EVcAIyRRUjQisVP3QEMzDCVncCZO0jatfjY1MDUAkTUP0TPRokZvjFRDQCUPUmXTg0azDyRLgSLgYGN3Q0aucUVn4BZic1cVM1ZvjFR1MiPLEiZ40TLPMDS4gzTNAiZS4TdlMDSvfDdKkidlIjYtHzSPUjZTEDLDgzaQY0SnAkZSEDN3E0YqwVX0gTUYIWUVgUdUYDRFkzUYsVRBgTLEYTXvTkUOgFV4wTdyfVS3QUZMICQ4wzLXkWS2Y1PNg1Mn8TSt4BRlY2PTETRUAUSAIkVpASZHQDMTAUchQEVuQSLKIUUFE1ZEEiXqEDdTQCMwfEZ2f1SM4lKHYlcCQUPIUETMEjTZoFLogDQzPET0IFUX8FMwrzTq0VXokjPHESQFEFLUY0Sn4RZKYGR3sTN5YlPl4hPOAUQpQUPvPDRuEkUOgFTpMUP3H0TvD0UXoWUwrTPvDSXvPiQiglKnM1Y2Y0XqASZHMGTC0DctjFR0MyTCojKBgzMtTETRUDUSYlZFkENHITTNUjdK0TUGM1YQcUV0QDQioWQwfUbAgVT3UkUYglKnM1Y2Y0XqASZHEiKS0DcpMTSy.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.UdLICUogTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRBYUcYcUV3giPR81XFoUcHoWXpslLKETTGM1YMEiVlwTUjQWSrgTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRBYUcYcUV3giPR81XFoUcHoWXpslLKcTQVoEcIIDRwTjQgASUV8DZLk1R24RZLECTCwTLHMjSyPzPMEiZ40DZ2f1SM4lKHYlcCQUPIUETMEjTZoFLogDV3v1XqkjLKgzZwjka3fFT0EkUjUmc5EVcAIyRDkzUZwVTsgjYXcEVxU0UYgCR3wDLyHES5gzTMkmZS4jLlMDS3IVdLoGR3sTN5YlPl4hPOAUQpQUPvPDRuEkUOglYvDVLUwlX0YFUZ01YwrjP3XTVzfiPSUGNFIVcToVXpkjPHESQFEFLUY0Sn4RZKIiYC4DLXkWS2Y1TMomKSwDMDkVSvfDdKkidlIjYtHzSPUjZTEDLDgzaQY0SnYFLgESUrIVclQkVscVLKIDNFkEM3HzT0giQhUGRUgkdUYDRFkzUYsVR3sTN5YlPl4hPOAUQpQUPvPDRuEkUOglYvDVLUwlX0YFUZ01YwrjP3XTVzfiPSUGNFIVcHUEV5UkQHM0ZsEVZIg2R4nmYBYlKB8DTEoFUAACQH8VTV8DZlASXwTEahUmYToUamEyRBgiQYQCNBMUc3XjX0wTUZUSUrgjYXcEVxU0UYgCRBwDcHMDSvP0PLomY40DMLMUSv.UdLYGVogTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRBYUcYcUV3giPR81XFoUcHoWXpslLKIUUFE1ZEEiXqEDZQgWUVkEZtf1XmcmUisFLogDdlMESzgTZLgGRowDMtLDS4o1PLECRogTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRBYUcYcUV3giPR81XFoUcHoWXpslLKIUUFE1ZEEiXqEDdTQCMwfEZ2f1SM4lKHYlcCQUPIUETMEjTZoFLogDV3v1XqkjLKgzZwjka3fFT0EkUjUGSUQFcMwFRlg0UXIWUWkENHIDSz4RZHU2LSMjRtHDR23RUPIUQTMkYpYTV3fjPVUWVWkEd3HjTuMlQZUmZTElcEECV5giPQASRWgkdqESXzkjPHESQFEFLUY0SnY1PLQmZSwjdhkFSwfzTMICSowjdHkFSncCZO0jatfjY1MDUAkTUP0TPRokZvjFRXgCaisVRxrDRqESVtgiTRMWPWgUZQIyRGUjUZQWRBgTLEYTXvTkUOgFVosjcHg2R4nmYBYlKB8DTEoFUAACQH8VTV8DZlASXwTEahUmZTElcEECV5gCdPU2cwDFdIIDRwTjQgASUV8DZDMDS1MiPLg1Mn8TSt4BRlY2PTETRUAUSAIkVpASZHgENrM1ZIIyRIAiQhcVSFMVchQEVuQCaHYFVWgkbUcUV3fjTKg2LnwTLhkVSx.0PMoGVSwjcTMkSvHVZHU2LSMjRtHDR23RUPIUQTMkYpYTV3fjPVUWVWkEd3HzT0MlLKIDNFkEM3HET5E0UXk1bFgjQIcUVqkjPHESQFEFLUY0SngzPLQiXosTLPMkSz3RZLkGT4wjLTkFR0MyTCojKBgzMtTETRUDUSYlZFkENHIjU0k0UYgGNBMUciIyRBgiQYQCNRAkdQcEVoMmQHM0ZsEVZIg2R4nmYBYlKB8DTEoFUAACQH8VTV8DZlASXwTEahUmc5ElL3fFT0EkUjUmXTg0azvFRlg0UXIWUWkENHI0R2MiTLcGRSwjLTMTSw.UZMkmKSwDdhkFR0MyTCojKBgzMtTETRUDUSYlZFkENHIjU0k0UYgGNBMUciIyRBgiQYQCNBMUc3XjX0AkZh8VVFMFZtf1XmcmUisFLogjdlk1R4Y1PNgmYowjLhMUSyH1PNQCQogTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRBYUcYcUV3giPSU2XxrjP3XTVzfiPSUGNFIVcToVXpkjPHESQFEFLUY0Sn4RZKEiKCwjctLDS1gTdLMCTSwzLTkWSzfDdKkidlIjYtHzSPUjZTEDLDgzaQY0SnYFLgESUrIVc1oWXxfCZPUWTVQVc1oWX0EjLKIUQFM1ZAgVT3UkUYg1Mn8TSt4BRlY2PTETRUAUSAIkVpASZHgENrM1ZIIyRLgSLiUGR5ElZqIyRLgSLgYGNnQ0YQcUVlwTUjQWSrgTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRBYUcYcUV3giPSU2XxrjP3XTVzfiPSUGNFIVcLUkV0TEaHYFVWgkbUcUV3fjPLQmKS4TLtjGSznVdMkGQS4DMLkVSxPUZLg1Mn8TSt4BRlY2PTETRUAUSAIkVpASZHgENrM1ZIIyRLgSLiUGR5ElZqIyRRUkQgsVQwH1ZAgVT3UkUYglKnM1Y2Y0XqASZHgmKCwjcyHDSncCZO0jatfjY1MDUAkTUP0TPRokZvjFRXgCaisVRxrDS3DyX0gjdgo1ZxrjTUYTXqUTLhsVP3QEMzDCVncCZO0jatfjY1MDUAkTUP0TPRokZvjFRXgCaisVRxrDS3DyX0gjdgo1ZxrzTq0VXokjPHESQFEFLUY0Sn4RZKYGR3sTN5YlPl4hPOAUQpQUPvPDRuEkUOglYvDVLUwlX0YmdgICNRI0bAcEVoEkLKQTUsI1YQckV0QCaHYFVWgkbUcUV3fDZLQiYosDMpMTSxX1TLomZC0zcPMDSwfDdKkidlIjYtHzSPUjZTEDLDgzaQY0SnYFLgESUrIVc1oWXxfiTRMWPWgUZQIyRGUjUZQWRBgTLEYTXvTkUOgldnwDcXkWS3I1PNEiXSwDdXMTSw.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.Ub3nFU2kUdRQic5QkZEoGSzDkQSIUSwLEdvvlTwbVZgAURT0zcLslTzACUX8TSoYUb5YjSwTELYwTQ4AUQIQEVUgCQNgTV5ElLyf1RzMCZKQ2LnsDcyf1RzMCZKQ2LnsDZ2f1SM4lKHYlcSEkSYUUTLgCQTUTPnE1YvXUV3fDZXUWTVQFS3DyXEQCaiglKng0YMcUVw.UZNoVQFM1YvjFR3QUZMQGTsU0ayomRx3RQSQiY4A0LyEyX3cCQiQGQCkUbHcUV3E0PNM0apQVaIk2TV8lZhk1bnEVayoFYynVahEmdpwzSYYUTykTLJwTQrQVLmkGUX8FaMc2MTwzUqYEVwg0QhkTSG4zPiUkUvTTdSIWUVElVyg1X3UTZgMiZGMkcuUESO8lQUU0ZvnjL2XjXvcVdPEGVEM0c2n2TzfCQVEGVr0TLTYjSSM1TiEiK4MEbzHUVWMGZXUzXog0LpcUUwr1QL8TSCQlcXAiRxXVdRc1YSQVQqQUX1cidSkTVpUUblACSzfUQN8VTSEVUAk2TyvTQMQ0bnI1SYQEUynlQNMCQDwzSuwFVo0DLJQUSCQESmMEYv8FUjUCN5U0LToFUwMSLgAWRD4zamMkU2olLS8TRFIkSyglXukkQLICS5UUbxIDYOUEaR81a5oDTqo2TmM1TjEmKGMVL3nFV2EULMQCSCIFVIsVSCgiQVcTRxLkLEoGTwr1PSMzYV4DLLoWUyUkUh8zYD0jdDckSz4RUhEWUSQ1QiQEV0giZV4VTskEMLMUS58VQMM0ZGIFUiEyTzgkQQEyY4wDLlQUV2wDLLAiZUI0Szf1RzMCZKQGR3sTN5YlPl4hPOUDMpUUQ2o2TPUEQHQWQVE1ZvjFRngiQYQCLTokZUoVXwjjPHgVQwH1ZYMTS0.kUXoWQV8DZHMUSwLiTXMWUWkUblsVSxX1PNMTRpI1LIk2TuMVUMo1b3wTL5YUSyvDQQg0brwzSmYETAEULJA0bDQ1clMkVAUjZUg2M5M0ZygFVwAkZPg2YG4zTUMTXDkTdSMSQC0zYyglXGUEQiMiZFMVRicESOUUZMM2avnDbMomXzcVdToFNVg0c2P0X0.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.0ZTwTUpwzaEYkUvrFLSkTQqUETmklXM8lQMMSSqQkTQwVXNQCZKQ2LnsDcyf1RzMCZKQ2LnsDcyf1RzMCZKQ2LnsDcyf1RzMCZKQ2LnsDcyf1RzMCZKg1Mn8TSt4BRlY2TQ4TVUEES3PDUEEDZgcFLVkENHgWX40TLPU2cwDFdUoVXwjjPHgVQwH1ZYMTS0.kUXoWQV8DZHMUSwLiPRkVSVMUbLklUsUELMMENDwTdUIyTZkELPMyZCMEdUYTTvnlQggGSwn0SiYkVVcVUNQzbB4TMQkGU44lUXQGNpgkd5wlVzfkQQo0XV0zamM0Xy3hLSEiYT4TLqMTTGc1ZRECSpsjcpomXOkUUQYmKS4TdyXzTnkUdTAiKvvTd3PEYT8VLLQic5QUTmwVSCsVQU0TTxLUdhoVX5o1PSgGV4EVLLACSz81Qi8zXVokTYMkSDQiZRkWV4QUdyvFY5giZYsVUW0DMXcUUqMGaMM0ZUUETQIyTHcVdZgmZ4wzcxQEVwvDUQYURwH1Su01XL81UNgVSWMVRYkGTzYVURgGN5EFZYMzXz3BLYc1ZW0zT3PjTREjLSo0Z4wzbqMTUHcGUQACSqg0TQcUXOM1USoGTV4DRUUjXSUUdT8TQFMEc3nWUykjQVQCTDMVbuQTSzDEaQk1awLEclAiRPs1PVcTTssjdLo1RnMFUZ8TRwfkbzHkSXcmUQ4VRSo0LXUETngiZXUUS5o0LlQUTME0QLQSTwzjZYAyT44FUTQ0YoEFTyoFS0r1QLEEMVQ0SQACSEEEQNICQvLEdqICUncVZU0DNTEkdYY0TxLCZHU2LSMjRtHDR2PkZSYUUDM0SAUUTlMiUXMWUV8DZ2DiXocmdgISVTgkdUoVXwjjPHgVQwH1ZYMTS0.kUXoWQV8DZHMUSwLiPRgGSrIUbXEiXSM1QNMTU5U0aIk2TzMCZKw1bnsDcyf1RzvjZKQ2L3wzSzf1RzgULJQ2LnsDcpkGTzMCZKk2MpsDcyfVVwMCZKQ2LR4zPzf1RzwTdSQ2LnsDayg1RzMCZKQCSpsDcyfGSOQCZKQGVwnDSikFVxXVdPgUVxnEd2nFUwYVLXEGVxLEdlcjSSkzZigGQ4MkR2YkSYMGZjMyZDo0LpYUUZ81QL8zZG0zSYAiRXUzQTQ0YSQVLvXET1cCQUg0b5QUbHYETUcFQNMDNrM1SuIyTJkEaL8zbBIUSvXTSxvjZLoVUTQ1SicEYx7ldJQWQDEkbikGUOcldMICN50DcHwVTwYVUZMWSvzzTzPEU2gkLSAUVFkUPygWSs8FaKIiZVIlcTQ0XOMVLQ8TTS4DZUckXYkUdPMURTwDd3PkVTQCZiQCVVoULucUSSUkQQcUPxLEbYckVwsVZgESRqAELpcDUP0zPg8zcwj0LQUkSDQiZPgGS4AkTUwlVsgidSoUSS4zLhk2XFUkZLMUSoQ0chAyTyf0QiozYCIUQuUDSxzjdgESSFQkSzf1RzMCZKQ2LnsDcyf1RzMCZKQ2LnsDcyf1RzMCZHU2LSMjRtHDR2PkZSYUUDM0SAUUTlMiUXMWUV8DZtbkV50jQZQTRxDlcUoVXwjjPHgVQwH1ZYMTS0.kUXoWQV8DZHMUSwLCZKQ2LnkUblsVSxX1PNMTRpI1LIk2TuMVUMo1b3wTL5YUSyvDQQg0brwzSmYETAEULJA0bDQ1clMkVAUjZUg2M5M0ZygFVwAkZPg2YG4zTUMTXDkTdSMSQC0zYyglXGUEQiMiZFMVRicESOUUZMM2avnDbMomXzcVdToFNVg0c2P0X0.CUVEmXCEFQqYjSCAiQQMTQ4MkTiYkXWMGdMM2aqg0LLQkXnQiQL8zZq0jLTAiR0jTdSU0Y4QERY0lT1ciZMIiY4QUblAiVCACQNMURF4DcuIyTBkzQjE0bBMURYQTTyvDUgQTSpQ1SuwFTWgidJwzYWwjdhMkVzUEUVQCNDYEL1YzTw4lLLEWTxzzaqMkS0clLSkVSEoURyITT3clLYICS5EVLAk2XOEzTSkTV5oDVuEiXSMVdT81XU0TL3PUUuM1ZPE2LrMlcLoWSzTkQhISUxL0U3nlTxnVZj0VVqoULLQTUMEULh8TSpAEdmckSDs1ZMICU4Q0aiUUS1giZLoGVSEFMyfVU54RUMM0ZpEEQzDyT5EkQUg0ZooEdMYkS4olLLEWTxj0SzXUTYk0PNgFLVM1ZEMkVBMFLSIENpsDcyf1RzMCZHU2LSMjRtHDR2PkZSYUUDM0SAUUTlMiUXMWUV8DZtbkV50jQZkDLFI1YMYzXEQCaiglKng0YMcUVw.UZNoVQFM1YvjFR3QUZMQ2LnsDcXEiR3UzQRMiYSo0TUMkU3cidh8zZVYUbLMETzIGQN81ZUUkamIyTyzjUiczbngULIcUVxvDUNcTVDQ1SAUDUMsldJQmcrM1biMEYxXVdYMCNpYEUUwlTwMiUTMyMwzzTyEiRmclLSoWPE0jdqMTUzXlZLACSE0zaIYkXOkzZMQCUW4DcHYzXHk0TjQiYWQUd3nWUz3lULQiaFk0SMwVSSsldPASSxLkaiQ0XyrVZZQzaD0jdpc0TyXGUg8TRoQFMIYkSv0TZRcGTSQVZEkVSygCQjIzZokEMPUESwwTUMQSQooUa3DyTWQiQiE2Z4wTLyIDUvvjZKg0YVE1SQ0VXyjTUNg1XDoULMkGU5omQY4FN5o0ZUMkTz3lQR0VSxvzaQolXwrVLSIUUU4TTqklX54VaRomZGE1TE0lVOsFQSsVPU4DUYo2T40zTZA2bDU0Y3PEVQkTdZMiaFUkaEUESSkTURYzZvL0YQESTwcVZZIiZoE1cLASXQEzUX8TRCMEcQcjSzg0QL4VQ4QkT3DCVRgiZLY0XTwjLPsFU2A0ZiMUREokaAk1TzMCZKQ2LnsDcyf1RzMCZKQ2LnsDcyf1RzMCZKQGR3sTN5YlPl4hPOsTUTYEUIUETCMGUR4zXp8TSt4BRl4hPHcCTqQUPMomTEEkdWAUQpQUPvPUTTUkZTYlZFkENHIDUuEkLX4FNRI0bAcEVoEkLKQTUsI1YQckV0QCaHkidlIjYtHDRl4hPHciKvLURzPTUlY1UOgFRosjcHIDRz.SZHY2LR0TdLkGS4wTdLYGQS0jdPMESyn1TMg1Mn8TSt4BRl4hPHYlKB8DT3PkTNEUQHMCLogDdPk1R1gjPHQCLogjcyHES4wTdLkGS4wDdTkGSyf0PLomXC0DZ2f1SM4lKHYlKBgjYtHzSPgCUR4TTEgzLvjFR4gUZKYGRBgDMvjFR1MiPLcGVo0TLXkVSv3RdMICRCwDMPkWS4gDdKkidlIjYtHDRl4hPHciKvLURzPTUlY1UOgFVS0DctjFRlo1UOgldBwDcpkVSwfUZMECVS4zLPMUSvX1TLYGUogTcyL0PJ4hPHYlKB8TcPsFUA0jdRUTT5cETEoFUAACUQQUUpQUN5YlPl4hPHYlcCUkTEoGTKUEQQUVPUAkTEQ0TEEUUQIUPRokZvjFRPslQik1YwrTRvXjXm0jQiUGQTEVcU0VX5EjTPgVSxDlbUczXqkDZO0jatfjYtHDRl4hPOAENTIkSQUDRy.SZHcGSosjcHIDRz.SZHY2LBwTLXkVSwfUZMECRo0DMLMDS3wTZMMCR3sTN5YlPl4hPHYlKBgzMt.yTIQCQUYlYW8DZHkVSz4RZHYlZW8DZ5IDSz4RZMECVo0TLhkFS3gzTNICVo0zLPkVSncCZO0jatfjYtHDRl4hPOAENTIkSQUDRy.SZHACSosjcHIDRz.SZHMmKosDLHg2R4nmYBYlKBgjY1k2RTkTUPMzbTEEQ3TDUAkTUP0TUDUUQIs1SM4lKHYlc4szRUQkUTkTUPMzbTIkSio1SM4lKHYlcSMURQQkTk0jdPUFLTAETAUkTNMldTU2LSMjR1k2RLgidUkidlIjKt3hKt3hKt3hKlIUUMQUTPkzUZESQFM1ZQQEV5UjQtDDQlAEMAcEV40zQtDDQ14hK5EjKt3hKt3hKt3hRUACTEEzZh8VVWgkdUYTTmE0UXwyKIMzasA2atUlaz4COuX0TTMCTrU2Yo41TzEFck4C."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "LOW",
									"origin" : "LOW.vst3info",
									"type" : "VST3",
									"subtype" : "Instrument",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "LOW.vst3info",
										"plugindisplayname" : "LOW",
										"pluginsavedname" : "",
										"pluginsaveduniqueid" : -1788789864,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"sliderorder" : [  ],
										"slidervisibility" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ],
										"blob" : "15918.VMjLgThO...O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVMEUy.Ea0cVZtMEcgQWY9vSRC8Vav8lak4Fc9DSL3TyLtbyMCQ1b2YDRwTEahk2ZwDFcvjFR2MiPLglKRkEcMESXpsFag0FLogTUQsVTyYVZHsxLSMjR5YlP2XmdScUPBIlbUISVuQCaUsVRxH1a3vVX3fjTLQmKosDdHg1SM4lKHYlcCQUPIUETMEjTZoFLogzSMYzXmk0UYglKnM1Y2Y0XqASZHc2LBwDZ2f1SM4lKHYlcCQUPIUETMEjTZoFLogzTQcUV3UULgglKnM1Y2Y0XqASZHMCVosTLHMDSw.UdLECQS0jLHkFSwfUZHU2LSMjRtHDR23RUPIUQTMkYpYTV3fDZPsFMFkkYDQUX0UUagoWRBgTLEYTXvTkUOgFQowDctjFR0MyTCojKBgzMtTETRUDUSYlZFkENHgVUqcWLgk1ZFMFMAgGUqQSLhglKnM1Y2Y0XqASZHY2LBwDZ2f1SM4lKHYlcCQUPIUETMEjTZoFLogjP3XzX5giUgUGQTEVcU0VX5kjPHESQFEFLUY0SnQzPLY2LBwDZ2f1SM4lKHYlcCQUPIUETMEjTZoFLogjP3XzX5giUgUGQDMldEECVwEDZQgWUVkEZtf1XmcmUisFLogjdhMjSzgzTNkmYowTdHMTS3QzPNICUogTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRnAUcQczX0ASLKETTGM1YMEiVlwTUjQWSrgTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRnAUcQczX0ASLKwDNwDlc3HTT3sFaYoWRBgTLEYTXvTkUOgFSowDcLMjS3o1PNoGQo0zcLkWSwn1TMg1Mn8TSt4BRlY2PTETRUAUSAIkVpASZHIDNFMld3XUX0YmdgUWPxrTQzXTVn4BZic1cVM1ZvjFR1MCZLIiKCwDdpMjSxfTZMACUC4TLlMUSncCZO0jatfjY1MDUAkTUP0TPRokZvjFRBgiQioGNVEVc1oWX0EjLKIUQFM1ZAgVT3UkUYglKnM1Y2Y0XqASZHc2LnwjLTMUS1gTZMMCQ40TdHMESxXVZHU2LSMjRtHDR23RUPIUQTMkYpYTV3fDZPUWTGMVcvDyRLgSLgYGNnQ0YQcUVlwTUjQWSrgTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRnAUcQczX0ASLKwDNwDlc3fGUu81UYglKnM1Y2Y0XqASZHY2LBwTdTkWS4gTZMEiKC0jdHMUSz3RdMcGR3sTN5YlPl4hPOAUQpQUPvPDRuEkUOgFR5EldQISXygCZTs1cVk0YMcUVlgkZhsVUrgjYXcEVxU0UYgCRR4jcyHDSv.0TLgGRS4DdPMjS1AUZMQCR3sTN5YlPl4hPOAUQpQUPvPDRuEkUOgFR5EldQISXygCZTs1cVk0YMcUVlwTUjQWSrgTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRnAUcQczX0ASLKM0ZsEVZIIDRwTjQgASUV8DZtj1R1gDdKkidlIjYtHzSPUjZTEDLDgzaQY0SnwjdgIGNrIVcDQUX0UUagoWRBgTLEYTXvTkUOgFVowDcDkWSvf0TLkGTCwTdLkFS1wzTLg1Mn8TSt4BRlY2PTETRUAUSAIkVpASZHMDNFEVcIIyRAE0QicVSwnkYXolXqUEaHYFVWgkbUcUV3fjPNQCSosDLlkVSwf0TNQCRSwzLhMUSncCZO0jatfjY1MDUAkTUP0TPRokZvjFRCgiQgUWRxrTPQczXm0TLZYFSUQFcMwFR0MyTCojKBgzMtTETRUDUSYlZFkENHgGT0cWLggGNBMUc3XjX0AkZh8VVFMFZtf1XmcmUisFLogjcyfFS24xPNMiYo0DLLMkSzvTZMYGVo0DZ2f1SM4lKHYlcCQUPIUETMEjTZoFLogzP3XTX0kjLKwDNwDlc3HUTzEEaHYFVWgkbUcUV3fjPLQGVS0zcDMjS14RZLMiZSwDLPMDSvvTZHU2LSMjRtHDR23RUPIUQTMkYpYTV3fDdPU2cwDFd3HzT0giQhUGRUgkdUYDRFkzUYsVRBgTLEYTXvTkUOglKosTdPMESzfUZMICTC4DdLkWSw3xTNQCR3sTN5YlPl4hPOAUQpQUPvPDRuEkUOgFS5Elb3vlX0YmdgUWPxrjTEYzXqEDdTQCMwfEZ2f1SM4lKHYlcCQUPIUETMEjTZoFLogzP3XTX0kjLKwDNwDlc3fGUu81UYglKnM1Y2Y0XqASZHY2LBwDdhkFS3A0TMoGVowDMlkGSy.UZMICR3sTN5YlPl4hPOAUQpQUPvPDRuEkUOgFS5Elb3vlX0gTUYIWUVgUdUYDRFkzUYsVRBgTLEYTXvTkUOgFTo0jLyHUSxPUZMMCSS0DMLkWSvfDdKkidlIjYtHzSPUjZTEDLDgzaQY0SnwjdgIGNrIVcHUUVxUkUXkWUFgzTq0VXokDdKkidlIjYtHzSPUjZTEDLDgzaQY0SnwjdgIGNrIVcLUEYz0DaHYFVWgkbUcUV3fjPLQmKogTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRBEkSEo2RGUjUZQGNRA0b3X0XzEUaHYFVWgkbUcUV3fjTLoGSoszLTkFSv3xPNACTC0DMHMESzfDdKkidlIjYtHzSPUjZTEDLDgzaQY0SnAkZSEDN3E0YqwVX0QDQioWQwfUbAgVT3UkUYglKnM1Y2Y0XqASZHMCUC0DchkFS1A0TMMiZC4jdLkWSvfDdKkidlIjYtHzSPUjZTEDLDgzaQY0SnAkZSEDN3E0YqwVX0QDQioWQwfUbAgGUzPSLXg1Mn8TSt4BRlY2PTETRUAUSAIkVpASZHQDMTAUchQEVuQSLKwDNwDlc3HTT3sFaYoWRBgTLEYTXvTkUOgFQCwjcyHDSncCZO0jatfjY1MDUAkTUP0TPRokZvjFRDQCUPUmXTg0azDyRLgSLgYGNREEcQwFRlg0UXIWUWkENHIDSzg0PNYGQCwTLHkFS3gUZLQCUC0jLDkFR0MyTCojKBgzMtTETRUDUSYlZFkENHITTNUjdKcTQVoEc3HzT0giQhUGRUgkdUYDRFkzUYsVRBgTLEYTXvTkUOglKosDLDMTS2QzTNgGV40jdXkGSwX1PMcGR3sTN5YlPl4hPOAUQpQUPvPDRuEkUOgFTpMUP3fWTmsFagUmc5EVcAIyRRUjQisVP3QEMzDCVncCZO0jatfjY1MDUAkTUP0TPRokZvjFRDQCUPUmXTg0azDyRLgSLgYGN3Q0aucUVn4BZic1cVM1ZvjFR1MiPLEiZ40TLPMDS4gzTNAiZS4TdlMDSvfDdKkidlIjYtHzSPUjZTEDLDgzaQY0SnAkZSEDN3E0YqwVX0gTUYIWUVgUdUYDRFkzUYsVRBgTLEYTXvTkUOgFV4wTdyfVS3QUZMICQ4wzLXkWS2Y1PNg1Mn8TSt4BRlY2PTETRUAUSAIkVpASZHQDMTAUchQEVuQSLKIUUFE1ZEEiXqEDdTQCMwfEZ2f1SM4lKHYlcCQUPIUETMEjTZoFLogDQzPET0IFUX8FMwrzTq0VXokjPHESQFEFLUY0Sn4RZKYGR3sTN5YlPl4hPOAUQpQUPvPDRuEkUOgFTpMUP3H0TvD0UXoWUwrTPvDSXvPiQiglKnM1Y2Y0XqASZHMGTC0DctjFR0MyTCojKBgzMtTETRUDUSYlZFkENHITTNUjdK0TUGM1YQcUV0QDQioWQwfUbAgVT3UkUYglKnM1Y2Y0XqASZHEiKS0DcpMTSy.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.UdLICUogTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRBYUcYcUV3giPR81XFoUcHoWXpslLKETTGM1YMEiVlwTUjQWSrgTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRBYUcYcUV3giPR81XFoUcHoWXpslLKcTQVoEcIIDRwTjQgASUV8DZLk1R24RZLECTCwTLHMjSyPzPMEiZ40DZ2f1SM4lKHYlcCQUPIUETMEjTZoFLogDV3v1XqkjLKgzZwjka3fFT0EkUjUmc5EVcAIyRDkzUZwVTsgjYXcEVxU0UYgCR3wDLyHES5gzTMkmZS4jLlMDS3IVdLoGR3sTN5YlPl4hPOAUQpQUPvPDRuEkUOglYvDVLUwlX0YFUZ01YwrjP3XTVzfiPSUGNFIVcToVXpkjPHESQFEFLUY0Sn4RZKIiYC4DLXkWS2Y1TMomKSwDMDkVSvfDdKkidlIjYtHzSPUjZTEDLDgzaQY0SnYFLgESUrIVclQkVscVLKIDNFkEM3HzT0giQhUGRUgkdUYDRFkzUYsVR3sTN5YlPl4hPOAUQpQUPvPDRuEkUOglYvDVLUwlX0YFUZ01YwrjP3XTVzfiPSUGNFIVcHUEV5UkQHM0ZsEVZIg2R4nmYBYlKB8DTEoFUAACQH8VTV8DZlASXwTEahUmYToUamEyRBgiQYQCNBMUc3XjX0wTUZUSUrgjYXcEVxU0UYgCRBwDcHMDSvP0PLomY40DMLMUSv.UdLYGVogTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRBYUcYcUV3giPR81XFoUcHoWXpslLKIUUFE1ZEEiXqEDZQgWUVkEZtf1XmcmUisFLogDdlMESzgTZLgGRowDMtLDS4o1PLECRogTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRBYUcYcUV3giPR81XFoUcHoWXpslLKIUUFE1ZEEiXqEDdTQCMwfEZ2f1SM4lKHYlcCQUPIUETMEjTZoFLogDV3v1XqkjLKgzZwjka3fFT0EkUjUGSUQFcMwFRlg0UXIWUWkENHIDSz4RZHU2LSMjRtHDR23RUPIUQTMkYpYTV3fjPVUWVWkEd3HjTuMlQZUmZTElcEECV5giPQASRWgkdqESXzkjPHESQFEFLUY0SnY1PLQmZSwjdhkFSwfzTMICSowjdHkFSncCZO0jatfjY1MDUAkTUP0TPRokZvjFRXgCaisVRxrDRqESVtgiTRMWPWgUZQIyRGUjUZQWRBgTLEYTXvTkUOgFVosjcHg2R4nmYBYlKB8DTEoFUAACQH8VTV8DZlASXwTEahUmZTElcEECV5gCdPU2cwDFdIIDRwTjQgASUV8DZDMDS1MiPLg1Mn8TSt4BRlY2PTETRUAUSAIkVpASZHgENrM1ZIIyRIAiQhcVSFMVchQEVuQCaHYFVWgkbUcUV3fjTKg2LnwTLhkVSx.0PMoGVSwjcTMkSvHVZHU2LSMjRtHDR23RUPIUQTMkYpYTV3fjPVUWVWkEd3HzT0MlLKIDNFkEM3HET5E0UXk1bFgjQIcUVqkjPHESQFEFLUY0SngzPLQiXosTLPMkSz3RZLkGT4wjLTkFR0MyTCojKBgzMtTETRUDUSYlZFkENHIjU0k0UYgGNBMUciIyRBgiQYQCNRAkdQcEVoMmQHM0ZsEVZIg2R4nmYBYlKB8DTEoFUAACQH8VTV8DZlASXwTEahUmc5ElL3fFT0EkUjUmXTg0azvFRlg0UXIWUWkENHI0R2MiTLcGRSwjLTMTSw.UZMkmKSwDdhkFR0MyTCojKBgzMtTETRUDUSYlZFkENHIjU0k0UYgGNBMUciIyRBgiQYQCNBMUc3XjX0AkZh8VVFMFZtf1XmcmUisFLogjdlk1R4Y1PNgmYowjLhMUSyH1PNQCQogTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRBYUcYcUV3giPSU2XxrjP3XTVzfiPSUGNFIVcToVXpkjPHESQFEFLUY0Sn4RZKEiKCwjctLDS1gTdLMCTSwzLTkWSzfDdKkidlIjYtHzSPUjZTEDLDgzaQY0SnYFLgESUrIVc1oWXxfCZPUWTVQVc1oWX0EjLKIUQFM1ZAgVT3UkUYg1Mn8TSt4BRlY2PTETRUAUSAIkVpASZHgENrM1ZIIyRLgSLiUGR5ElZqIyRLgSLgYGNnQ0YQcUVlwTUjQWSrgTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRBYUcYcUV3giPSU2XxrjP3XTVzfiPSUGNFIVcLUkV0TEaHYFVWgkbUcUV3fjPLQmKS4TLtjGSznVdMkGQS4DMLkVSxPUZLg1Mn8TSt4BRlY2PTETRUAUSAIkVpASZHgENrM1ZIIyRLgSLiUGR5ElZqIyRRUkQgsVQwH1ZAgVT3UkUYglKnM1Y2Y0XqASZHgmKCwjcyHDSncCZO0jatfjY1MDUAkTUP0TPRokZvjFRXgCaisVRxrDS3DyX0gjdgo1ZxrjTUYTXqUTLhsVP3QEMzDCVncCZO0jatfjY1MDUAkTUP0TPRokZvjFRXgCaisVRxrDS3DyX0gjdgo1ZxrzTq0VXokjPHESQFEFLUY0Sn4RZKYGR3sTN5YlPl4hPOAUQpQUPvPDRuEkUOglYvDVLUwlX0YmdgICNRI0bAcEVoEkLKQTUsI1YQckV0QCaHYFVWgkbUcUV3fDZLQiYosDMpMTSxX1TLomZC0zcPMDSwfDdKkidlIjYtHzSPUjZTEDLDgzaQY0SnYFLgESUrIVc1oWXxfiTRMWPWgUZQIyRGUjUZQWRBgTLEYTXvTkUOgldnwDcXkWS3I1PNEiXSwDdXMTSw.0PNoGR3sTN5YlPl4hPOAUQpQUPvPDRuEkUOglYvDVLUwlX0oGUZMSRBgTLEYTXvTkUOglYosDdlMES1A0PLcmZSwTLTMDS4o1TLg1Mn8TSt4BRlY2PTETRUAUSAIkVpASZHgENrM1ZIIyRBgiQYQCN3AUc2ESX3kjPHESQFEFLUY0SnAUZMQGQowzctjFS2gTdMYmXS0zcpMUSncCZO0jatfjY1MDUAkTUP0TPRokZvjFRXgCaisVRxrjQIcUV2U0UYQWSVQlYlQkVscFaHYFVWgkbUcUV3fjTMgGTo0DchMUSzHVZMACVowDLHg2R4nmYBYlKB8DTEoFUAACQH8VTV8DZlASXwTEahUGVpI1ZEc0XqQSLXQSPBMUci0FRlg0UXIWUWkENHIES2QTZKQCQ40jdPMkSzP0TLcmXSwDMHg2R4nmYBYlKB8DTEoFUAACQH8VTV8DZlASXwTEahUmdTokZ3fFT0EkUjUGQDMldEECVwEDZQgWUVkEZ2f1SM4lKHYlcCQUPIUETMEjTZoFLogDV3v1XqkjLK0zZFkUcHoWXpslLKETTGM1YMEiVlwTUjQWSrgTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRBYUcYcUV3giTS8VTwrjP3XTVzfCdQc1ZrEFZtf1XmcmUisFLogDLyHkSzn1TNQiYS0TLpMTSyX1TMgGUogTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRBYUcYcUV3giTS8VTwrjP3XTVzfiPSUGNFIVcPolXukkQiglKnM1Y2Y0XqASZHMCRoszLLMTS5QzTNgGUCwjdlMjS3YVZHU2LSMjRtHDR23RUPIUQTMkYpYTV3fjPVUWVWkEd3H0TuEULKIDNFkEM3HzT0giQhUGUpElZIg2R4nmYBYlKB8DTEoFUAACQH8VTV8DZlASXwTEahUmdTokZ3fFT0EkUjUmc5EVcAIyRRUjQisVPnEEdUYUVncCZO0jatfjY1MDUAkTUP0TPRokZvjFRXgCaisVRxrTSqYTV0gjdgo1ZxrDS3DSX1gCZTcVTWkkYLUEYz0DaHU2LSMjRtHDR23RUPIUQTMkYpYTV3fjPVUWVWkEd3H0TuEULKIDNFkEM3HzT0giQhUGSUoUMUwFRlg0UXIWUWkENHIDSzQTdMIiXSwjdDkFS5wTZLcmZ4wjLXkFR0MyTCojKBgzMtTETRUDUSYlZFkENHIjU0k0UYgGNRM0aQEyRBgiQYQCNnQ0Z2YUVm0zUYYFVpI1ZUwFR0MyTCojKBgzMtTETRUDUSYlZFkENHIjU0k0UYgGNRM0aQEyRBgiQYQCNnQ0Z2YUVm0zUYYFSUQFcMwFR0MyTCojKBgzMtTETRUDUSYlZFkENHIjU0k0UYgGNRM0aQEyRBgiQYQCN3QEMzDCVncCZO0jatfjY1MDUAkTUP0TPRokZvjFRXgCaisVRxrTSqYTV0oFUgYWQwfkd3HTTvjzUXo2ZwDFcIIDRwTjQgASUV8DZDMDS3MCdMomZC4DLTMDS5QzTMYGSS4DZ2f1SM4lKHYlcCQUPIUETMEjTZoFLogDV3v1XqkjLK0zZFkUcpQUX1UTLXoGN3E0YqwVXn4BZic1cVM1ZvjFRwLiPLg1Mn8TSt4BRlY2PTETRUAUSAIkVpASZHgENrM1ZIIyRRUjQi8FNFgDRqESVtkjPHESQFEFLUY0SnQUZKgGQC0jLpMDSyfzTLYmXS0jdLMkSncCZO0jatfjY1MDUAkTUP0TPRokZvjFRXgCaisVRxrjTEYzXugiQHwDNwLFZtf1XmcmUisFLogDLyfFSxP0TNoGT40jcpkWSxH1PNkGRogTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRnE0azXUVlAUUiQWUrgTcyL0PJ4hPHciKUAkTEQ0TlolQYgCRBUEdEwVX4EjLgkWUrgTcyL0PJ4hPHcCUpMkUUQzTOETUQY1LVg0bUY0SngTLgo1ZsE0a2YzXqkzUQQWVsgjYHYEV4UEaMomaCk0YQcEV3fDZLACVosDdQACTGMGZY8FLrM0LpYjSxjUQL8TQFUkTYAiRzslQTU0YSQVQ3v1X0fCUMYUVEQUblomXVUUdMQyYoQ0UqIyTwPUZjszbnMFQ2YkXxnlUNc1aFQ1SUM0XQ8ldJQ2bnEUciMEYCE0UgMCN5oEcH0lTwg0UZAWQxzzPuUES0blLSQ2ZvP0RygFYGkDQiIiZGYUMucDYOUzZYc2a5oTMEM0XwM1TZc2YxnjL3nGS2IlZQEmcDMkPEASSSU0TgUWVxL0LtbTUzImPSICTEwTLpwVTVkkQi8zcVQUdEMkSL8lQToTVSQ1azfFY2giZKo1b5IFMtTjXEE0UMMzYGwTZAIyTxzTUSQ2ZosDRiECVvvjZYQTQ4E1SzfFUXAiUNkmapI0ZUMkV2QSLMUGNTwTPmUUXzXFQN01YU0DMAAiVRQSLSc0XUMUVqkFVoETZZomZGMkZYYTXOMFaMYWQV4DQvDSU2E0TZITQw.Ub3nFU2kUdRQic5QkZEoGSzDkQSIUSwLEdvvlTwbVZgAURT0zcLslTzACUX8TSoYUb5YjSwTELYwTQ4AUQIQEVUgCQNgTV5ElLyf1RzMCZKQ2LnsDcyf1RzMCZKQ2LnsDZ2f1SM4lKHYlcSEkSYUUTLgCQTUTPnE1YvXUV3fDZXUWTVQFS3DyXEQCaiglKng0YMcUVw.UZNoVQFM1YvjFR3QUZMQGTsU0ayomRx3RQSQiY4A0LyEyX3cCQiQGQCkUbHcUV3E0PNM0apQVaIk2TV8lZhk1bnEVayoFYynVahEmdpwzSYYUTykTLJwTQrQVLmkGUX8FaMc2MTwzUqYEVwg0QhkTSG4zPiUkUvTTdSIWUVElVyg1X3UTZgMiZGMkcuUESO8lQUU0ZvnjL2XjXvcVdPEGVEM0c2n2TzfCQVEGVr0TLTYjSSM1TiEiK4MEbzHUVWMGZXUzXog0LpcUUwr1QL8TSCQlcXAiRxXVdRc1YSQVQqQUX1cidSkTVpUUblACSzfUQN8VTSEVUAk2TyvTQMQ0bnI1SYQEUynlQNMCQDwzSuwFVo0DLJQUSCQESmMEYv8FUjUCN5U0LToFUwMSLgAWRD4zamMkU2olLS8TRFIkSyglXukkQLICS5UUbxIDYOUEaR81a5oDTqo2TmM1TjEmKGMVL3nFV2EULMQCSCIFVIsVSCgiQVcTRxLkLEoGTwr1PSMzYV4DLLoWUyUkUh8zYD0jdDckSz4RUhEWUSQ1QiQEV0giZV4VTskEMLMUS58VQMM0ZGIFUiEyTzgkQQEyY4wDLlQUV2wDLLAiZUI0Szf1RzMCZKQGR3sTN5YlPl4hPOUDMpUUQ2o2TPUEQHQWQVE1ZvjFRngiQYQCLTokZUoVXwjjPHgVQwH1ZYMTS0.kUXoWQV8DZHMUSwLiTXMWUWkUblsVSxX1PNMTRpI1LIk2TuMVUMo1b3wTL5YUSyvDQQg0brwzSmYETAEULJA0bDQ1clMkVAUjZUg2M5M0ZygFVwAkZPg2YG4zTUMTXDkTdSMSQC0zYyglXGUEQiMiZFMVRicESOUUZMM2avnDbMomXzcVdToFNVg0c2P0X0.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.0ZTwTUpwzaEYkUvrFLSkTQqUETmklXM8lQMMSSqQkTQwVXNQCZKQ2LnsDcyf1RzMCZKQ2LnsDcyf1RzMCZKQ2LnsDcyf1RzMCZKQ2LnsDcyf1RzMCZKg1Mn8TSt4BRlY2TQ4TVUEES3PDUEEDZgcFLVkENHgWX40TLPU2cwDFdUoVXwjjPHgVQwH1ZYMTS0.kUXoWQV8DZHMUSwLiPRkVSVMUbLklUsUELMMENDwTdUIyTZkELPMyZCMEdUYTTvnlQggGSwn0SiYkVVcVUNQzbB4TMQkGU44lUXQGNpgkd5wlVzfkQQo0XV0zamM0Xy3hLSEiYT4TLqMTTGc1ZRECSpsjcpomXOkUUQYmKS4TdyXzTnkUdTAiKvvTd3PEYT8VLLQic5QUTmwVSCsVQU0TTxLUdhoVX5o1PSgGV4EVLLACSz81Qi8zXVokTYMkSDQiZRkWV4QUdyvFY5giZYsVUW0DMXcUUqMGaMM0ZUUETQIyTHcVdZgmZ4wzcxQEVwvDUQYURwH1Su01XL81UNgVSWMVRYkGTzYVURgGN5EFZYMzXz3BLYc1ZW0zT3PjTREjLSo0Z4wzbqMTUHcGUQACSqg0TQcUXOM1USoGTV4DRUUjXSUUdT8TQFMEc3nWUykjQVQCTDMVbuQTSzDEaQk1awLEclAiRPs1PVcTTssjdLo1RnMFUZ8TRwfkbzHkSXcmUQ4VRSo0LXUETngiZXUUS5o0LlQUTME0QLQSTwzjZYAyT44FUTQ0YoEFTyoFS0r1QLEEMVQ0SQACSEEEQNICQvLEdqICUncVZU0DNTEkdYY0TxLCZHU2LSMjRtHDR2PkZSYUUDM0SAUUTlMiUXMWUV8DZ2DiXocmdgISVTgkdUoVXwjjPHgVQwH1ZYMTS0.kUXoWQV8DZHMUSwLiPRgGSrIUbXEiXSM1QNMTU5U0aIk2TzMCZKw1bnsDcyf1RzvjZKQ2L3wzSzf1RzgULJQ2LnsDcpkGTzMCZKk2MpsDcyfVVwMCZKQ2LR4zPzf1RzwTdSQ2LnsDayg1RzMCZKQCSpsDcyfGSOQCZKQGVwnDSikFVxXVdPgUVxnEd2nFUwYVLXEGVxLEdlcjSSkzZigGQ4MkR2YkSYMGZjMyZDo0LpYUUZ81QL8zZG0zSYAiRXUzQTQ0YSQVLvXET1cCQUg0b5QUbHYETUcFQNMDNrM1SuIyTJkEaL8zbBIUSvXTSxvjZLoVUTQ1SicEYx7ldJQWQDEkbikGUOcldMICN50DcHwVTwYVUZMWSvzzTzPEU2gkLSAUVFkUPygWSs8FaKIiZVIlcTQ0XOMVLQ8TTS4DZUckXYkUdPMURTwDd3PkVTQCZiQCVVoULucUSSUkQQcUPxLEbYckVwsVZgESRqAELpcDUP0zPg8zcwj0LQUkSDQiZPgGS4AkTUwlVsgidSoUSS4zLhk2XFUkZLMUSoQ0chAyTyf0QiozYCIUQuUDSxzjdgESSFQkSzf1RzMCZKQ2LnsDcyf1RzMCZKQ2LnsDcyf1RzMCZHU2LSMjRtHDR2PkZSYUUDM0SAUUTlMiUXMWUV8DZtbkV50jQZQTRxDlcUoVXwjjPHgVQwH1ZYMTS0.kUXoWQV8DZHMUSwLCZKQ2LnkUblsVSxX1PNMTRpI1LIk2TuMVUMo1b3wTL5YUSyvDQQg0brwzSmYETAEULJA0bDQ1clMkVAUjZUg2M5M0ZygFVwAkZPg2YG4zTUMTXDkTdSMSQC0zYyglXGUEQiMiZFMVRicESOUUZMM2avnDbMomXzcVdToFNVg0c2P0X0.CUVEmXCEFQqYjSCAiQQMTQ4MkTiYkXWMGdMM2aqg0LLQkXnQiQL8zZq0jLTAiR0jTdSU0Y4QERY0lT1ciZMIiY4QUblAiVCACQNMURF4DcuIyTBkzQjE0bBMURYQTTyvDUgQTSpQ1SuwFTWgidJwzYWwjdhMkVzUEUVQCNDYEL1YzTw4lLLEWTxzzaqMkS0clLSkVSEoURyITT3clLYICS5EVLAk2XOEzTSkTV5oDVuEiXSMVdT81XU0TL3PUUuM1ZPE2LrMlcLoWSzTkQhISUxL0U3nlTxnVZj0VVqoULLQTUMEULh8TSpAEdmckSDs1ZMICU4Q0aiUUS1giZLoGVSEFMyfVU54RUMM0ZpEEQzDyT5EkQUg0ZooEdMYkS4olLLEWTxj0SzXUTYk0PNgFLVM1ZEMkVBMFLSIENpsDcyf1RzMCZHU2LSMjRtHDR2PkZSYUUDM0SAUUTlMiUXMWUV8DZtbkV50jQZkDLFI1YMYzXEQCaiglKng0YMcUVw.UZNoVQFM1YvjFR3QUZMQ2LnsDcXEiR3UzQRMiYSo0TUMkU3cidh8zZVYUbLMETzIGQN81ZUUkamIyTyzjUiczbngULIcUVxvDUNcTVDQ1SAUDUMsldJQmcrM1biMEYxXVdYMCNpYEUUwlTwMiUTMyMwzzTyEiRmclLSoWPE0jdqMTUzXlZLACSE0zaIYkXOkzZMQCUW4DcHYzXHk0TjQiYWQUd3nWUz3lULQiaFk0SMwVSSsldPASSxLkaiQ0XyrVZZQzaD0jdpc0TyXGUg8TRoQFMIYkSv0TZRcGTSQVZEkVSygCQjIzZokEMPUESwwTUMQSQooUa3DyTWQiQiE2Z4wTLyIDUvvjZKg0YVE1SQ0VXyjTUNg1XDoULMkGU5omQY4FN5o0ZUMkTz3lQR0VSxvzaQolXwrVLSIUUU4TTqklX54VaRomZGE1TE0lVOsFQSsVPU4DUYo2T40zTZA2bDU0Y3PEVQkTdZMiaFUkaEUESSkTURYzZvL0YQESTwcVZZIiZoE1cLASXQEzUX8TRCMEcQcjSzg0QL4VQ4QkT3DCVRgiZLY0XTwjLPsFU2A0ZiMUREokaAk1TzMCZKQ2LnsDcyf1RzMCZKQ2LnsDcyf1RzMCZKQGR3sTN5YlPl4hPOsTUTYEUIUETCMGUR4zXp8TSt4BRl4hPHcCTqQUPMomTEEkdWAUQpQUPvPUTTUkZTYlZFkENHIDUuEkLX4FNRI0bAcEVoEkLKQTUsI1YQckV0QCaHkidlIjYtHDRl4hPHciKvLURzPTUlY1UOgFRosjcHIDRz.SZHY2LR0TdLkGS4wTdLYGQS0jdPMESyn1TMg1Mn8TSt4BRl4hPHYlKB8DT3PkTNEUQHMCLogDdPk1R1gjPHQCLogjcyHES4wTdLkGS4wDdTkGSyf0PLomXC0DZ2f1SM4lKHYlKBgjYtHzSPgCUR4TTEgzLvjFR4gUZKYGRBgDMvjFR1MiPLcGVo0TLXkVSv3RdMICRCwDMPkWS4gDdKkidlIjYtHDRl4hPHciKvLURzPTUlY1UOgFVS0DctjFRlo1UOgldBwDcpkVSwfUZMECVS4zLPMUSvX1TLYGUogTcyL0PJ4hPHYlKB8TcPsFUA0jdRUTT5cETEoFUAACUQQUUpQUN5YlPl4hPHYlcCUkTEoGTKUEQQUVPUAkTEQ0TEEUUQIUPRokZvjFRPslQik1YwrTRvXjXm0jQiUGQTEVcU0VX5EjTPgVSxDlbUczXqkDZO0jatfjYtHDRl4hPOAENTIkSQUDRy.SZHcGSosjcHIDRz.SZHY2LBwTLXkVSwfUZMECRo0DMLMDS3wTZMMCR3sTN5YlPl4hPHYlKBgzMt.yTIQCQUYlYW8DZHkVSz4RZHYlZW8DZ5IDSz4RZMECVo0TLhkFS3gzTNICVo0zLPkVSncCZO0jatfjYtHDRl4hPOAENTIkSQUDRy.SZHACSosjcHIDRz.SZHMmKosDLHg2R4nmYBYlKBgjY1k2RTkTUPMzbTEEQ3TDUAkTUP0TUDUUQIs1SM4lKHYlc4szRUQkUTkTUPMzbTIkSio1SM4lKHYlcSMURQQkTk0jdPUFLTAETAUkTNMldTU2LSMjR1k2RLgidUkidlIjKt3hKt3hKt3hKlIUUMQUTPkzUZESQFM1ZQQEV5UjQtDDQlAEMAcEV40zQtDDQ14hK5EjKt3hKt3hKt3hRUACTEEzZh8VVWgkdUYTTmE0UXwyKIMzasA2atUlaz4COuX0TTMCTrU2Yo41TzEFck4C."
									}
,
									"fileref" : 									{
										"name" : "LOW",
										"filename" : "LOW.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "325a61eba998944a4aa7b183f6e31c3c"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ C74_VST3:/LOW",
					"varname" : "vst~",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"filename" : "modGraphics.js",
					"id" : "obj-7",
					"maxclass" : "v8ui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 297.0, 418.0, 432.0, 124.0 ],
					"textfile" : 					{
						"filename" : "modGraphics.js",
						"flags" : 0,
						"embed" : 0,
						"autowatch" : 1
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 2 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 3 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 3 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 2 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 1 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-13" : [ "vst~", "vst~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ],
					"buttons" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "LOW.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../Documents/Max 9/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "modGraphics.js",
				"bootpath" : "~/GitHub/Obsidian/prototypes",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
