require "cs2lua__utility";
require "cs2lua__namespaces";
require "foo_System_Int32_System_Int32";

bar = {
	__new_object = function(...)
		return newobject(bar, nil, {}, ...);
	end,
	__define_class = function()
		local static = bar;

		local static_methods = {
			cctor = function()
			end,
		};

		local static_fields_build = function()
			local static_fields = {
			};
			return static_fields;
		end;
		local static_props = nil;
		local static_events = nil;

		local instance_methods = {
			test = function(this)
				local a; a = newobject(foo_System_Int32_System_Int32, "ctor", {});
				a:parse(wrapstring("123"), wrapstring("456"));
			end,
			ctor = function(this)
			end,
		};

		local instance_fields_build = function()
			local instance_fields = {
			};
			return instance_fields;
		end;
		local instance_props = nil;
		local instance_events = nil;
		local interfaces = nil;
		local interface_map = nil;

		return defineclass(nil, "bar", static, static_methods, static_fields_build, static_props, static_events, instance_methods, instance_fields_build, instance_props, instance_events, interfaces, interface_map, false);
	end,
};

bar.__define_class();
