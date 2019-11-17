# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/dry-schema/all/dry-schema.rbi
#
# dry-schema-1.4.1
module Dry
end
module Dry::Schema
  def self.Form(**options, &block); end
  def self.JSON(**options, &block); end
  def self.Params(**options, &block); end
  def self.define(**options, &block); end
  extend Dry::Core::Extensions
  include Dry::Core::Constants
end
class Dry::Schema::InvalidSchemaError < StandardError
end
class Dry::Schema::MissingMessageError < StandardError
  def initialize(path, paths = nil); end
end
class Dry::Schema::Path
  def <=>(other); end
  def each(&block); end
  def include?(other); end
  def index(key); end
  def index?; end
  def initialize(keys); end
  def key_matches(other); end
  def keys; end
  def last; end
  def root(*arg0); end
  def same_root?(other); end
  def self.[](spec); end
  def self.keys_from_hash(hash); end
  include Comparable
  include Enumerable
end
class Dry::Schema::PredicateRegistry < Dry::Types::PredicateRegistry
  def arg_list(name, *values); end
end
class Dry::Schema::TypeContainer
  def config; end
  def initialize(*args, &block); end
  def registered?(key); end
  extend Dry::Configurable
  extend Dry::Configurable::ClassMethods
  include Dry::Container::Mixin
end
class Dry::Schema::Config
  def inspect; end
  def method_missing(meth, *args, &block); end
  def respond_to_missing?(meth, include_private = nil); end
  extend Dry::Configurable::ClassMethods
  include Anonymous_Dry_Equalizer_65
  include Dry::Configurable
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_65
  def cmp?(comparator, other); end
  def hash; end
end
class Dry::Schema::Message
  def <=>(other); end
  def dump; end
  def eql?(other); end
  def to_s; end
  extend Dry::Initializer
  include Anonymous_Dry_Equalizer_66
  include Anonymous_Module_67
  include Dry::Equalizer::Methods
  include Dry::Initializer::Mixin::Root
end
class Dry::Schema::Message::Or
  def dump; end
  def initialize(left, right, messages); end
  def left; end
  def messages; end
  def path; end
  def right; end
  def to_a; end
  def to_s; end
end
module Anonymous_Dry_Equalizer_66
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
module Anonymous_Module_67
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  def args; end
  def input; end
  def meta; end
  def path; end
  def predicate; end
  def text; end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::MessageSet
  def [](key); end
  def each(&block); end
  def empty?; end
  def fetch(key); end
  def freeze; end
  def initialize(messages, options = nil); end
  def initialize_placeholders!; end
  def messages; end
  def messages_map(messages = nil); end
  def options; end
  def paths; end
  def placeholders; end
  def self.[](messages, options = nil); end
  def to_h; end
  def to_hash; end
  include Anonymous_Dry_Equalizer_68
  include Dry::Equalizer::Methods
  include Enumerable
end
module Anonymous_Dry_Equalizer_68
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::NamespacedRule
  def ast(input = nil); end
  def call(input); end
  def initialize(namespace, rule); end
  def namespace; end
  def rule; end
  def to_ast(input = nil); end
end
class Dry::Schema::Compiler < Dry::Logic::RuleCompiler
  def self.new(predicates = nil); end
  def supports?(predicate); end
  def visit_and(node); end
  def visit_namespace(node, opts = nil); end
end
module Dry::Schema::Types
  extend Anonymous_Dry_Core_Deprecations_Tagged_69
  extend Anonymous_Module_70
  extend Dry::Core::Deprecations::Interface
  extend Dry::Types::BuilderMethods
  include Anonymous_Dry_Types_Module_71
end
module Dry::Schema::Types::Definition
end
module Anonymous_Dry_Types_Module_71
  def self.included(base); end
  extend Dry::Types::BuilderMethods
end
module Anonymous_Dry_Core_Deprecations_Tagged_69
end
module Anonymous_Module_70
  def const_missing(missing); end
end
class Dry::Schema::Predicate
  def !; end
  def args; end
  def ast(*arg0); end
  def block; end
  def compiler; end
  def ensure_valid; end
  def initialize(compiler, name, args, block); end
  def name; end
  def to_ast(*arg0); end
  def to_rule; end
  include Anonymous_Dry_Equalizer_72
  include Dry::Equalizer::Methods
  include Dry::Logic::Operators
end
class Dry::Schema::Predicate::Negation
  def ast(*args); end
  def initialize(predicate); end
  def predicate; end
  def to_ast(*args); end
end
module Anonymous_Dry_Equalizer_72
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::Trace < BasicObject
  def <<(op); end
  def append(op); end
  def captures; end
  def class; end
  def compiler; end
  def evaluate(*args, type_spec: nil, **opts); end
  def evaluate_predicates(predicates); end
  def initialize(compiler = nil); end
  def method_missing(meth, *args, &block); end
  def reduced_rule; end
  def to_ast; end
  def to_rule(name = nil); end
  include Anonymous_Dry_Equalizer_73
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_73
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
module Dry::Schema::Macros
end
class Dry::Schema::Macros::Core
  def ast(*arg0); end
  def new(options = nil); end
  def operation; end
  def to_ast(*arg0); end
  def to_rule; end
  extend Dry::Initializer
  include Anonymous_Module_74
  include Dry::Initializer::Mixin::Root
end
module Anonymous_Module_74
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  def compiler; end
  def name; end
  def schema_dsl; end
  def trace; end
  extend Dry::Initializer::Mixin::Local
end
module Anonymous_Module_75
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  def chain; end
  def predicate_inferrer; end
  def primitive_inferrer; end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::DSL < Dry::Schema::Macros::Core
  def append_macro(macro_type); end
  def array(*args, &block); end
  def each(*args, &block); end
  def extract_type_spec(*args, nullable: nil, set_type: nil); end
  def filled(*args, **opts, &block); end
  def hash(*args, &block); end
  def resolve_type(type_spec, nullable); end
  def schema(*args, &block); end
  def type(spec); end
  def value(*predicates, **opts, &block); end
  include Anonymous_Module_75
  include Dry::Logic::Operators
end
module Anonymous_Module_76
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::Array < Dry::Schema::Macros::DSL
  def ast(*arg0); end
  def to_ast(*arg0); end
  def value(*args, **opts, &block); end
  include Anonymous_Module_76
end
module Anonymous_Module_77
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::Each < Dry::Schema::Macros::DSL
  def ast(*arg0); end
  def to_ast(*arg0); end
  def value(*args, **opts); end
  include Anonymous_Module_77
end
module Anonymous_Module_78
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::Value < Dry::Schema::Macros::DSL
  def array_type?(type); end
  def build_array_type(array_type, member); end
  def call(*predicates, **opts, &block); end
  def method_missing(meth, *args, &block); end
  def respond_to_missing?(meth, include_private = nil); end
  include Anonymous_Module_78
end
module Anonymous_Module_79
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::Filled < Dry::Schema::Macros::Value
  def call(*predicates, **opts, &block); end
  def ensure_valid_predicates(predicates); end
  def expected_primitives; end
  def filter_empty_string?; end
  def processor_config; end
  def schema_type; end
  include Anonymous_Module_79
end
module Anonymous_Module_80
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::Schema < Dry::Schema::Macros::Value
  def call(*args, &block); end
  def define(*args, &block); end
  def optional?; end
  def parent_type; end
  def redefined_schema?(args); end
  def schema?; end
  include Anonymous_Module_80
end
module Anonymous_Module_81
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::Hash < Dry::Schema::Macros::Schema
  def call(*args, &block); end
  include Anonymous_Module_81
end
module Anonymous_Module_82
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::Maybe < Dry::Schema::Macros::DSL
  def call(*args, **opts, &block); end
  def to_ast; end
  include Anonymous_Module_82
end
class Dry::Schema::TypeRegistry
  def [](name); end
  def initialize(types, namespace = nil); end
  def namespace; end
  def namespaced(ns); end
  def self.new(types = nil, namespace = nil); end
  def types; end
end
class Dry::Schema::ProcessorSteps
  def [](name); end
  def []=(name, value); end
  def after(name, &block); end
  def before(name, &block); end
  def call(result); end
  def initialize_copy(source); end
  def process_step(step, result); end
  def validate_step_name(name); end
  extend Dry::Initializer
  include Anonymous_Module_83
  include Dry::Initializer::Mixin::Root
end
module Anonymous_Module_83
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  def after_steps; end
  def before_steps; end
  def steps; end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Result
  def [](name); end
  def concat(other); end
  def error?(spec); end
  def errors(options = nil); end
  def failure?; end
  def inspect; end
  def key?(name); end
  def message_set(options = nil); end
  def replace(hash); end
  def result_ast; end
  def self.new(*args); end
  def success?; end
  def to_h; end
  extend Dry::Initializer
  include Anonymous_Dry_Equalizer_84
  include Anonymous_Module_85
  include Dry::Equalizer::Methods
  include Dry::Initializer::Mixin::Root
end
module Anonymous_Dry_Equalizer_84
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
module Anonymous_Module_85
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(output, results = nil, *arg2, **__dry_initializer_options__); end
  def message_compiler; end
  def output; end
  def results; end
  extend Dry::Initializer::Mixin::Local
end
module Dry::Schema::Messages
  def self.setup(config); end
  def setup(config); end
end
class Dry::Schema::Messages::Template
  def [](data = nil); end
  def call(data = nil); end
  def data(input); end
  def evaluator; end
  def initialize(text, tokens, evaluator); end
  def self.[](input); end
  def self.parse(input); end
  def text; end
  def tokens; end
  include Anonymous_Dry_Equalizer_86
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_86
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::Messages::Abstract
  def [](predicate, options); end
  def cache; end
  def cache_key(predicate, options); end
  def call(predicate, options); end
  def custom_top_namespace?(path); end
  def default_locale; end
  def filled_lookup_paths(tokens); end
  def looked_up_paths(predicate, options); end
  def lookup(predicate, options); end
  def lookup_paths(predicate, options); end
  def lookup_tokens(predicate, options); end
  def namespaced(namespace); end
  def root; end
  def rule(name, options = nil); end
  def rule_lookup_paths(tokens); end
  def self.build(options = nil); end
  def self.cache; end
  def translate(key, locale: nil); end
  extend Dry::Configurable::ClassMethods
  include Anonymous_Dry_Equalizer_87
  include Dry::Configurable
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_87
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::Messages::Namespaced < Dry::Schema::Messages::Abstract
  def [](key, options = nil); end
  def cache_key(predicate, options); end
  def call(key, options = nil); end
  def call_opts; end
  def config; end
  def filled_lookup_paths(tokens); end
  def get(key, options = nil); end
  def initialize(namespace, messages); end
  def key?(key, *args); end
  def messages; end
  def namespace; end
  def rule_lookup_paths(tokens); end
end
class Dry::Schema::Messages::YAML < Dry::Schema::Messages::Abstract
  def data; end
  def evaluated_key(key, options); end
  def get(key, options = nil); end
  def initialize(data: nil, config: nil); end
  def key?(key, options = nil); end
  def load_translations(path); end
  def looked_up_paths(predicate, options); end
  def merge(overrides); end
  def prepare; end
  def self.build(options = nil); end
  def self.flat_hash(hash, path = nil, keys = nil); end
  def t; end
  include Anonymous_Dry_Equalizer_88
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_88
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::MessageCompiler
  def call(ast); end
  def default_lookup_options; end
  def initialize(messages, options = nil); end
  def lookup_options(arg_vals:, input:); end
  def message_text(template, tokens, options); end
  def message_tokens(args); end
  def message_type(*arg0); end
  def options; end
  def visit(node, opts = nil); end
  def visit_and(node, opts); end
  def visit_failure(node, opts); end
  def visit_hint(*arg0); end
  def visit_implication(node, *args); end
  def visit_key(node, opts); end
  def visit_namespace(node, opts); end
  def visit_not(node, opts); end
  def visit_or(node, opts); end
  def visit_predicate(node, opts); end
  def visit_set(node, opts); end
  def visit_xor(node, opts); end
  def with(new_options); end
  extend Dry::Initializer
  include Anonymous_Module_89
  include Dry::Initializer::Mixin::Root
end
class Dry::Schema::MessageCompiler::VisitorOpts < Hash
  def call(other); end
  def current_messages; end
  def dup(current_messages = nil); end
  def failures; end
  def hints; end
  def key_failure?(path); end
  def path; end
  def self.new; end
end
module Anonymous_Module_89
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(messages, *arg1, **__dry_initializer_options__); end
  def full; end
  def locale; end
  def messages; end
  def predicate_resolvers; end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::RuleApplier
  def call(input); end
  def to_ast; end
  extend Dry::Initializer
  include Anonymous_Module_90
  include Dry::Initializer::Mixin::Root
end
module Anonymous_Module_90
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(rules, *arg1, **__dry_initializer_options__); end
  def config; end
  def message_compiler; end
  def rules; end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::KeyCoercer
  def [](source); end
  def call(source); end
  def coercer; end
  def initialize(key_map, &coercer); end
  def key_map; end
  def self.new(*args, &coercer); end
  def self.symbolized(*args); end
  extend Dry::Core::Cache
  include Anonymous_Dry_Equalizer_91
  include Dry::Core::Cache::Methods
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_91
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::ValueCoercer
  def call(input); end
  extend Dry::Initializer
  include Anonymous_Dry_Equalizer_93
  include Anonymous_Module_92
  include Dry::Equalizer::Methods
  include Dry::Initializer::Mixin::Root
end
module Anonymous_Module_92
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(type_schema, *arg1); end
  def type_schema; end
  extend Dry::Initializer::Mixin::Local
end
module Anonymous_Dry_Equalizer_93
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::Processor
  def [](input); end
  def call(input); end
  def config; end
  def filter_rules?; end
  def filter_schema; end
  def inspect; end
  def key_map; end
  def message_compiler; end
  def rule_applier; end
  def rules; end
  def self.define(&block); end
  def self.definition; end
  def self.new(options = nil, &block); end
  def to_ast; end
  def to_proc; end
  def to_rule; end
  def type_schema; end
  extend Dry::Configurable
  extend Dry::Configurable::ClassMethods
  extend Dry::Initializer
  include Anonymous_Module_94
  include Dry::Initializer::Mixin::Root
end
module Anonymous_Module_94
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  def schema_dsl; end
  def steps; end
  extend Dry::Initializer::Mixin::Local
end
module Anonymous_Module_95
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  def filter_schema_dsl; end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::Key < Dry::Schema::Macros::DSL
  def filled(*args, **opts, &block); end
  def filter(*args, &block); end
  def maybe(*args, **opts, &block); end
  def to_ast; end
  def to_rule; end
  def value(*args, **opts, &block); end
  include Anonymous_Module_95
end
module Anonymous_Module_96
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::Optional < Dry::Schema::Macros::Key
  def operation; end
  def to_rule; end
  include Anonymous_Module_96
end
module Anonymous_Module_97
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Macros::Required < Dry::Schema::Macros::Key
  def operation; end
  include Anonymous_Module_97
end
class Dry::Schema::Key
  def coerced_name; end
  def coercer; end
  def coercible(&coercer); end
  def dump; end
  def id; end
  def initialize(id, name: nil, coercer: nil); end
  def name; end
  def new(new_opts = nil); end
  def read(source); end
  def self.[](name, **opts); end
  def self.new(*args); end
  def stringified; end
  def write(source, target); end
  extend Dry::Core::Cache
  include Anonymous_Dry_Equalizer_98
  include Dry::Core::Cache::Methods
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_98
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::Key::Hash < Dry::Schema::Key
  def coercible(&coercer); end
  def dump; end
  def initialize(id, members:, **opts); end
  def members; end
  def read(source); end
  def stringified; end
  def write(source, target); end
  include Anonymous_Dry_Equalizer_99
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_99
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::Key::Array < Dry::Schema::Key
  def coercible(&coercer); end
  def dump; end
  def initialize(id, member:, **opts); end
  def member; end
  def stringified; end
  def write(source, target); end
  include Anonymous_Dry_Equalizer_100
  include Dry::Equalizer::Methods
end
module Anonymous_Dry_Equalizer_100
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::KeyMap
  def +(other); end
  def coercible(&coercer); end
  def dump; end
  def each(&block); end
  def initialize(keys); end
  def inspect; end
  def keys; end
  def self.[](*keys); end
  def self.new(*args); end
  def stringified; end
  def write(source, target = nil); end
  extend Dry::Core::Cache
  include Anonymous_Dry_Equalizer_101
  include Dry::Core::Cache::Methods
  include Dry::Equalizer::Methods
  include Enumerable
end
module Anonymous_Dry_Equalizer_101
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
class Dry::Schema::DSL
  def [](name); end
  def after(key, &block); end
  def array; end
  def before(key, &block); end
  def call; end
  def configure(&block); end
  def filter_rules?; end
  def filter_schema; end
  def filter_schema_dsl; end
  def key(name, macro:, &block); end
  def key_coercer; end
  def key_map(types = nil); end
  def key_map_type; end
  def key_spec(name, type); end
  def new(options = nil, &block); end
  def optional(name, &block); end
  def parent; end
  def parent_filter_schemas; end
  def parent_key_map; end
  def parent_rules; end
  def required(name, &block); end
  def resolve_type(spec); end
  def rule_applier; end
  def rules; end
  def self.new(**options, &block); end
  def set_type(name, spec); end
  def to_rule; end
  def type_registry; end
  def type_schema; end
  def value_coercer; end
  extend Dry::Initializer
  include Anonymous_Dry_Equalizer_103
  include Anonymous_Module_102
  include Dry::Equalizer::Methods
  include Dry::Initializer::Mixin::Root
end
module Anonymous_Module_102
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  def compiler; end
  def config; end
  def macros; end
  def parents; end
  def processor_type; end
  def steps; end
  def types; end
  extend Dry::Initializer::Mixin::Local
end
module Anonymous_Dry_Equalizer_103
  def cmp?(comparator, other); end
  def hash; end
  def inspect; end
end
module Anonymous_Module_104
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::Params < Dry::Schema::Processor
  include Anonymous_Module_104
end
module Anonymous_Module_105
  def __dry_initializer_config__; end
  def __dry_initializer_initialize__(*arg0, **__dry_initializer_options__); end
  extend Dry::Initializer::Mixin::Local
end
class Dry::Schema::JSON < Dry::Schema::Processor
  include Anonymous_Module_105
end