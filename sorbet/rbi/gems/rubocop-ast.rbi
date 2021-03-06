# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rubocop-ast/all/rubocop-ast.rbi
#
# rubocop-ast-0.2.0

module RuboCop
end
module RuboCop::AST
end
class RuboCop::AST::NodePattern
  def ==(other); end
  def eql?(other); end
  def initialize(str); end
  def marshal_dump; end
  def marshal_load(pattern); end
  def match(*args, **rest); end
  def pattern; end
  def self.descend(element, &block); end
  def to_s; end
end
class RuboCop::AST::NodePattern::Invalid < StandardError
end
class RuboCop::AST::NodePattern::Compiler
  def access_unify(name); end
  def atom_to_expr(atom); end
  def auto_use_temp_node?(code); end
  def captures; end
  def compile_any_order(capture_all = nil); end
  def compile_arg; end
  def compile_args; end
  def compile_ascend; end
  def compile_atom(token); end
  def compile_capture; end
  def compile_captured_ellipsis; end
  def compile_descend; end
  def compile_ellipsis; end
  def compile_expr(token = nil); end
  def compile_funcall(method); end
  def compile_guard_clause; end
  def compile_intersect; end
  def compile_negation; end
  def compile_new_wildcard(name); end
  def compile_nodetype(type); end
  def compile_predicate(predicate); end
  def compile_repeated_expr(token); end
  def compile_seq; end
  def compile_union; end
  def def_helper(base, method_name, **defaults); end
  def def_node_matcher(base, method_name, **defaults); end
  def def_node_search(base, method_name, **defaults); end
  def emit_keyword_list(forwarding: nil); end
  def emit_method_code; end
  def emit_node_search(method_name); end
  def emit_node_search_body(method_name, prelude:, on_match:); end
  def emit_param_list; end
  def emit_params(*first, forwarding: nil); end
  def emit_retval; end
  def emit_yield_capture(when_no_capture = nil); end
  def expr_to_atom(expr); end
  def fail_due_to(message); end
  def forbid_unification(*names); end
  def get_const(const); end
  def get_keyword(name); end
  def get_param(number); end
  def initialize(str, root = nil, node_var = nil); end
  def insure_same_captures(enum, what); end
  def match_code; end
  def next_capture; end
  def next_temp_value; end
  def next_temp_variable(name); end
  def parse_repetition_token; end
  def repeated_generator(expr, captured, accumulate); end
  def run; end
  def self.tokens(pattern); end
  def substitute_cur_node(code, cur_node, first_cur_node: nil); end
  def tokens; end
  def tokens_until(stop, what); end
  def unify_in_union(enum); end
  def variadic_seq_term; end
  def with_child_context(code, child_index); end
  def with_context(code, cur_node, use_temp_node: nil); end
  def with_seq_head_context(code); end
  def with_temp_node(cur_node); end
  def with_temp_variables(&block); end
  def wrapping_block(method_name, **defaults); end
end
class RuboCop::AST::NodePattern::Compiler::Sequence
  def compile; end
  def compile_child_nb_guard; end
  def compile_first_terms; end
  def compile_guard_clause(*args, &block); end
  def compile_last_terms; end
  def compile_seq_head; end
  def compile_terms(index_range, start); end
  def compile_variadic_term; end
  def fail_due_to(*args, &block); end
  def first_terms_arity; end
  def first_terms_range; end
  def initialize(compiler, *arity_term_list); end
  def last_terms_arity; end
  def last_terms_range; end
  def seq_head?; end
  def term(index, range); end
  def variadic_arity; end
  def variadic_term_min_arity; end
  def with_child_context(*args, &block); end
  def with_seq_head_context(*args, &block); end
  extend Forwardable
end
module RuboCop::AST::NodePattern::Macros
  def def_node_matcher(method_name, pattern_str, **keyword_defaults); end
  def def_node_search(method_name, pattern_str, **keyword_defaults); end
end
class RuboCop::AST::NodePattern::Matcher
  def ===(compare); end
  def initialize(&block); end
end
module RuboCop::AST::Sexp
  def s(type, *children); end
end
class RuboCop::AST::Node < Parser::AST::Node
  def __ENCODING___type?; end
  def __FILE___type?; end
  def __LINE___type?; end
  def alias_type?; end
  def ancestors; end
  def and_asgn_type?; end
  def and_type?; end
  def arg_expr_type?; end
  def arg_type?; end
  def args_type?; end
  def argument?; end
  def argument_type?; end
  def array_pattern_type?; end
  def array_pattern_with_tail_type?; end
  def array_type?; end
  def assignment?; end
  def assignment_or_similar?(node = nil); end
  def back_ref_type?; end
  def basic_conditional?; end
  def basic_literal?; end
  def begin_type?; end
  def begin_value_used?; end
  def block_pass_type?; end
  def block_type?; end
  def blockarg_expr_type?; end
  def blockarg_type?; end
  def boolean_type?; end
  def break_type?; end
  def call_type?; end
  def case_if_value_used?; end
  def case_match_type?; end
  def case_type?; end
  def casgn_type?; end
  def cbase_type?; end
  def chained?; end
  def child_nodes; end
  def class_constructor?(node = nil); end
  def class_definition?(node = nil); end
  def class_type?; end
  def complete!; end
  def complete?; end
  def complex_type?; end
  def conditional?; end
  def const_name; end
  def const_pattern_type?; end
  def const_type?; end
  def csend_type?; end
  def cvar_type?; end
  def cvasgn_type?; end
  def def_e_type?; end
  def def_type?; end
  def defined_module0(node = nil); end
  def defined_module; end
  def defined_module_name; end
  def defined_type?; end
  def defs_e_type?; end
  def defs_type?; end
  def descendants; end
  def dstr_type?; end
  def dsym_type?; end
  def each_ancestor(*types, &block); end
  def each_child_node(*types); end
  def each_descendant(*types, &block); end
  def each_node(*types, &block); end
  def eflipflop_type?; end
  def empty_else_type?; end
  def empty_source?; end
  def ensure_type?; end
  def equals_asgn?; end
  def erange_type?; end
  def false_type?; end
  def falsey_literal?; end
  def find_pattern_type?; end
  def first_line; end
  def float_type?; end
  def for_type?; end
  def for_value_used?; end
  def forward_arg_type?; end
  def forward_args_type?; end
  def forwarded_args_type?; end
  def global_const?(node = nil, param1); end
  def guard_clause?; end
  def gvar_type?; end
  def gvasgn_type?; end
  def hash_pattern_type?; end
  def hash_type?; end
  def ident_type?; end
  def if_guard_type?; end
  def if_type?; end
  def iflipflop_type?; end
  def immutable_literal?; end
  def in_match_type?; end
  def in_pattern_type?; end
  def index_type?; end
  def indexasgn_type?; end
  def initialize(type, children = nil, properties = nil); end
  def int_type?; end
  def irange_type?; end
  def ivar_type?; end
  def ivasgn_type?; end
  def keyword?; end
  def kwarg_type?; end
  def kwbegin_type?; end
  def kwnilarg_type?; end
  def kwoptarg_type?; end
  def kwrestarg_type?; end
  def kwsplat_type?; end
  def lambda?(node = nil); end
  def lambda_or_proc?(node = nil); end
  def lambda_type?; end
  def last_line; end
  def line_count; end
  def literal?; end
  def loop_keyword?; end
  def lvar_type?; end
  def lvasgn_type?; end
  def masgn_type?; end
  def match_alt_type?; end
  def match_as_type?; end
  def match_current_line_type?; end
  def match_guard_clause?(node = nil); end
  def match_nil_pattern_type?; end
  def match_rest_type?; end
  def match_var_type?; end
  def match_with_lvasgn_type?; end
  def match_with_trailing_comma_type?; end
  def mlhs_type?; end
  def module_definition?(node = nil); end
  def module_type?; end
  def mrasgn_type?; end
  def multiline?; end
  def mutable_literal?; end
  def new_class_or_module_block?(node = nil); end
  def next_type?; end
  def nil_type?; end
  def node_parts; end
  def nonempty_line_count; end
  def not_type?; end
  def nth_ref_type?; end
  def numargs_type?; end
  def numblock_type?; end
  def numeric_type?; end
  def objc_kwarg_type?; end
  def objc_restarg_type?; end
  def objc_varargs_type?; end
  def op_asgn_type?; end
  def operator_keyword?; end
  def optarg_type?; end
  def or_asgn_type?; end
  def or_type?; end
  def pair_type?; end
  def parent; end
  def parent=(node); end
  def parent_module_name; end
  def parent_module_name_for_block(ancestor); end
  def parent_module_name_for_sclass(sclass_node); end
  def parent_module_name_part(node); end
  def parenthesized_call?; end
  def pin_type?; end
  def post_condition_loop?; end
  def postexe_type?; end
  def preexe_type?; end
  def proc?(node = nil); end
  def procarg0_type?; end
  def pure?; end
  def range_type?; end
  def rasgn_type?; end
  def rational_type?; end
  def receiver(node = nil); end
  def recursive_basic_literal?; end
  def recursive_literal?; end
  def redo_type?; end
  def reference?; end
  def regexp_type?; end
  def regopt_type?; end
  def resbody_type?; end
  def rescue_type?; end
  def restarg_expr_type?; end
  def restarg_type?; end
  def retry_type?; end
  def return_type?; end
  def root_type?; end
  def sclass_type?; end
  def self_type?; end
  def send_type?; end
  def shadowarg_type?; end
  def shorthand_asgn?; end
  def sibling_index; end
  def single_line?; end
  def source; end
  def source_length; end
  def source_range; end
  def special_keyword?; end
  def splat_type?; end
  def str_content(node = nil); end
  def str_type?; end
  def struct_constructor?(node = nil); end
  def super_type?; end
  def sym_type?; end
  def true_type?; end
  def truthy_literal?; end
  def undef_type?; end
  def unless_guard_type?; end
  def until_post_type?; end
  def until_type?; end
  def updated(type = nil, children = nil, properties = nil); end
  def value_used?; end
  def variable?; end
  def visit_ancestors(types); end
  def visit_descendants(types, &block); end
  def when_type?; end
  def while_post_type?; end
  def while_type?; end
  def while_until_value_used?; end
  def xstr_type?; end
  def yield_type?; end
  def zsuper_type?; end
  extend RuboCop::AST::NodePattern::Macros
  include RuboCop::AST::Sexp
end
module RuboCop::AST::MethodIdentifierPredicates
  def assignment_method?; end
  def bang_method?; end
  def camel_case_method?; end
  def comparison_method?; end
  def const_receiver?; end
  def enumerable_method?; end
  def enumerator_method?; end
  def method?(name); end
  def negation_method?; end
  def nonmutating_array_method?; end
  def nonmutating_binary_operator_method?; end
  def nonmutating_hash_method?; end
  def nonmutating_operator_method?; end
  def nonmutating_string_method?; end
  def nonmutating_unary_operator_method?; end
  def operator_method?; end
  def predicate_method?; end
  def prefix_bang?; end
  def prefix_not?; end
  def self_receiver?; end
end
module RuboCop::AST::BinaryOperatorNode
  def conditions; end
  def lhs; end
  def rhs; end
end
module RuboCop::AST::CollectionNode
  def &(*args, &block); end
  def *(*args, &block); end
  def +(*args, &block); end
  def -(*args, &block); end
  def <<(*args, &block); end
  def [](*args, &block); end
  def []=(*args, &block); end
  def all?(*args, &block); end
  def any?(*args, &block); end
  def append(*args, &block); end
  def assoc(*args, &block); end
  def at(*args, &block); end
  def bsearch(*args, &block); end
  def bsearch_index(*args, &block); end
  def chain(*args, &block); end
  def chunk(*args, &block); end
  def chunk_while(*args, &block); end
  def clear(*args, &block); end
  def collect!(*args, &block); end
  def collect(*args, &block); end
  def collect_concat(*args, &block); end
  def combination(*args, &block); end
  def compact!(*args, &block); end
  def compact(*args, &block); end
  def concat(*args, &block); end
  def count(*args, &block); end
  def cycle(*args, &block); end
  def delete(*args, &block); end
  def delete_at(*args, &block); end
  def delete_if(*args, &block); end
  def detect(*args, &block); end
  def difference(*args, &block); end
  def dig(*args, &block); end
  def drop(*args, &block); end
  def drop_while(*args, &block); end
  def each(*args, &block); end
  def each_cons(*args, &block); end
  def each_entry(*args, &block); end
  def each_index(*args, &block); end
  def each_slice(*args, &block); end
  def each_with_index(*args, &block); end
  def each_with_object(*args, &block); end
  def empty?(*args, &block); end
  def entries(*args, &block); end
  def extract_options!(*args, &block); end
  def fetch(*args, &block); end
  def fill(*args, &block); end
  def filter!(*args, &block); end
  def filter(*args, &block); end
  def find(*args, &block); end
  def find_all(*args, &block); end
  def find_index(*args, &block); end
  def first(*args, &block); end
  def flat_map(*args, &block); end
  def flatten!(*args, &block); end
  def flatten(*args, &block); end
  def grep(*args, &block); end
  def grep_v(*args, &block); end
  def group_by(*args, &block); end
  def include?(*args, &block); end
  def index(*args, &block); end
  def inject(*args, &block); end
  def insert(*args, &block); end
  def join(*args, &block); end
  def keep_if(*args, &block); end
  def last(*args, &block); end
  def lazy(*args, &block); end
  def length(*args, &block); end
  def map!(*args, &block); end
  def map(*args, &block); end
  def max(*args, &block); end
  def max_by(*args, &block); end
  def member?(*args, &block); end
  def min(*args, &block); end
  def min_by(*args, &block); end
  def minmax(*args, &block); end
  def minmax_by(*args, &block); end
  def none?(*args, &block); end
  def one?(*args, &block); end
  def pack(*args, &block); end
  def partition(*args, &block); end
  def permutation(*args, &block); end
  def pop(*args, &block); end
  def prepend(*args, &block); end
  def product(*args, &block); end
  def push(*args, &block); end
  def rassoc(*args, &block); end
  def reduce(*args, &block); end
  def reject!(*args, &block); end
  def reject(*args, &block); end
  def repeated_combination(*args, &block); end
  def repeated_permutation(*args, &block); end
  def replace(*args, &block); end
  def reverse!(*args, &block); end
  def reverse(*args, &block); end
  def reverse_each(*args, &block); end
  def rindex(*args, &block); end
  def rotate!(*args, &block); end
  def rotate(*args, &block); end
  def sample(*args, &block); end
  def select!(*args, &block); end
  def select(*args, &block); end
  def shelljoin(*args, &block); end
  def shift(*args, &block); end
  def shuffle!(*args, &block); end
  def shuffle(*args, &block); end
  def size(*args, &block); end
  def slice!(*args, &block); end
  def slice(*args, &block); end
  def slice_after(*args, &block); end
  def slice_before(*args, &block); end
  def slice_when(*args, &block); end
  def sort!(*args, &block); end
  def sort(*args, &block); end
  def sort_by!(*args, &block); end
  def sort_by(*args, &block); end
  def sum(*args, &block); end
  def take(*args, &block); end
  def take_while(*args, &block); end
  def to_ary(*args, &block); end
  def to_default_s(*args, &block); end
  def to_formatted_s(*args, &block); end
  def to_h(*args, &block); end
  def to_sentence(*args, &block); end
  def to_set(*args, &block); end
  def to_xml(*args, &block); end
  def transpose(*args, &block); end
  def union(*args, &block); end
  def uniq!(*args, &block); end
  def uniq(*args, &block); end
  def unshift(*args, &block); end
  def values_at(*args, &block); end
  def zip(*args, &block); end
  def |(*args, &block); end
  extend Forwardable
end
module RuboCop::AST::ConditionalNode
  def body; end
  def condition; end
  def multiline_condition?; end
  def single_line_condition?; end
end
module RuboCop::AST::HashElementNode
  def delimiter_delta(other); end
  def key; end
  def key_delta(other, alignment = nil); end
  def same_line?(other); end
  def value; end
  def value_delta(other); end
end
class RuboCop::AST::HashElementNode::HashElementDelta
  def delimiter_delta; end
  def delta(first, second, alignment = nil); end
  def first; end
  def initialize(first, second); end
  def key_delta(alignment = nil); end
  def keyword_splat?; end
  def second; end
  def valid_argument_types?; end
  def value_delta; end
end
module RuboCop::AST::MethodDispatchNode
  def access_modifier?; end
  def adjacent_def_modifier?(node = nil); end
  def arguments; end
  def arithmetic_operation?; end
  def assignment?; end
  def bare_access_modifier?; end
  def bare_access_modifier_declaration?(node = nil); end
  def binary_operation?; end
  def block_literal?; end
  def block_node; end
  def command?(name); end
  def const_receiver?; end
  def def_modifier?; end
  def dot?; end
  def double_colon?; end
  def implicit_call?; end
  def lambda?; end
  def lambda_literal?; end
  def macro?; end
  def macro_kwbegin_wrapper?(parent); end
  def macro_scope?(node = nil); end
  def method_name; end
  def non_bare_access_modifier?; end
  def non_bare_access_modifier_declaration?(node = nil); end
  def receiver; end
  def root_node?(node); end
  def safe_navigation?; end
  def self_receiver?; end
  def setter_method?; end
  def special_modifier?; end
  def unary_operation?; end
  extend RuboCop::AST::NodePattern::Macros
  include RuboCop::AST::MethodIdentifierPredicates
end
module RuboCop::AST::ModifierNode
  def modifier_form?; end
end
module RuboCop::AST::NumericNode
  def sign?; end
end
module RuboCop::AST::ParameterizedNode
  def arguments?; end
  def block_argument?; end
  def first_argument; end
  def last_argument; end
  def parenthesized?; end
  def rest_argument?; end
  def splat_argument?; end
end
module RuboCop::AST::PredicateOperatorNode
  def logical_operator?; end
  def operator; end
  def semantic_operator?; end
end
module RuboCop::AST::BasicLiteralNode
  def value; end
end
class RuboCop::AST::AliasNode < RuboCop::AST::Node
  def new_identifier; end
  def old_identifier; end
end
class RuboCop::AST::AndNode < RuboCop::AST::Node
  def alternate_operator; end
  def inverse_operator; end
  include RuboCop::AST::BinaryOperatorNode
  include RuboCop::AST::PredicateOperatorNode
end
class RuboCop::AST::ArgsNode < RuboCop::AST::Node
  def empty_and_without_delimiters?; end
  include RuboCop::AST::CollectionNode
end
class RuboCop::AST::ArrayNode < RuboCop::AST::Node
  def bracketed?; end
  def each_value(&block); end
  def percent_literal?(type = nil); end
  def square_brackets?; end
  def values; end
end
class RuboCop::AST::BlockNode < RuboCop::AST::Node
  def arguments; end
  def arguments?; end
  def body; end
  def braces?; end
  def closing_delimiter; end
  def delimiters; end
  def keywords?; end
  def lambda?; end
  def method_name; end
  def multiline?; end
  def opening_delimiter; end
  def send_node; end
  def single_line?; end
  def void_context?; end
  include RuboCop::AST::MethodIdentifierPredicates
end
class RuboCop::AST::BreakNode < RuboCop::AST::Node
  def arguments; end
  include RuboCop::AST::MethodDispatchNode
  include RuboCop::AST::ParameterizedNode
end
class RuboCop::AST::CaseMatchNode < RuboCop::AST::Node
  def each_in_pattern; end
  def else?; end
  def else_branch; end
  def in_pattern_branches; end
  def keyword; end
  include RuboCop::AST::ConditionalNode
end
class RuboCop::AST::CaseNode < RuboCop::AST::Node
  def each_when; end
  def else?; end
  def else_branch; end
  def keyword; end
  def when_branches; end
  include RuboCop::AST::ConditionalNode
end
class RuboCop::AST::ClassNode < RuboCop::AST::Node
  def body; end
  def identifier; end
  def parent_class; end
end
class RuboCop::AST::DefNode < RuboCop::AST::Node
  def argument_forwarding?; end
  def arguments; end
  def body; end
  def method_name; end
  def receiver; end
  def void_context?; end
  include RuboCop::AST::MethodIdentifierPredicates
  include RuboCop::AST::ParameterizedNode
end
class RuboCop::AST::DefinedNode < RuboCop::AST::Node
  def node_parts; end
  include RuboCop::AST::MethodDispatchNode
  include RuboCop::AST::ParameterizedNode
end
class RuboCop::AST::EnsureNode < RuboCop::AST::Node
  def body; end
end
class RuboCop::AST::ForNode < RuboCop::AST::Node
  def body; end
  def collection; end
  def do?; end
  def keyword; end
  def variable; end
  def void_context?; end
end
class RuboCop::AST::ForwardArgsNode < RuboCop::AST::Node
  def to_a; end
  include RuboCop::AST::CollectionNode
end
class RuboCop::AST::FloatNode < RuboCop::AST::Node
  include RuboCop::AST::NumericNode
end
class RuboCop::AST::HashNode < RuboCop::AST::Node
  def braces?; end
  def each_key; end
  def each_pair; end
  def each_value; end
  def empty?; end
  def keys; end
  def mixed_delimiters?; end
  def pairs; end
  def pairs_on_same_line?; end
  def values; end
end
class RuboCop::AST::IfNode < RuboCop::AST::Node
  def branches; end
  def each_branch; end
  def else?; end
  def else_branch; end
  def elsif?; end
  def elsif_conditional?; end
  def if?; end
  def if_branch; end
  def inverse_keyword; end
  def keyword; end
  def modifier_form?; end
  def nested_conditional?; end
  def node_parts; end
  def ternary?; end
  def unless?; end
  include RuboCop::AST::ConditionalNode
  include RuboCop::AST::ModifierNode
end
class RuboCop::AST::IndexNode < RuboCop::AST::Node
  def arguments; end
  def assignment_method?; end
  def attribute_accessor?; end
  def method_name; end
  include RuboCop::AST::MethodDispatchNode
  include RuboCop::AST::ParameterizedNode
end
class RuboCop::AST::IndexasgnNode < RuboCop::AST::Node
  def arguments; end
  def assignment_method?; end
  def attribute_accessor?; end
  def method_name; end
  include RuboCop::AST::MethodDispatchNode
  include RuboCop::AST::ParameterizedNode
end
class RuboCop::AST::IntNode < RuboCop::AST::Node
  include RuboCop::AST::NumericNode
end
class RuboCop::AST::KeywordSplatNode < RuboCop::AST::Node
  def colon?; end
  def hash_rocket?; end
  def node_parts; end
  def operator; end
  include RuboCop::AST::HashElementNode
end
class RuboCop::AST::LambdaNode < RuboCop::AST::Node
  def arguments; end
  def assignment_method?; end
  def attribute_accessor?; end
  def lambda?; end
  def lambda_literal?; end
  def method_name; end
  include RuboCop::AST::MethodDispatchNode
  include RuboCop::AST::ParameterizedNode
end
class RuboCop::AST::ModuleNode < RuboCop::AST::Node
  def body; end
  def identifier; end
end
class RuboCop::AST::OrNode < RuboCop::AST::Node
  def alternate_operator; end
  def inverse_operator; end
  include RuboCop::AST::BinaryOperatorNode
  include RuboCop::AST::PredicateOperatorNode
end
class RuboCop::AST::PairNode < RuboCop::AST::Node
  def colon?; end
  def delimiter(with_spacing = nil); end
  def hash_rocket?; end
  def inverse_delimiter(with_spacing = nil); end
  def value_on_new_line?; end
  include RuboCop::AST::HashElementNode
end
class RuboCop::AST::RangeNode < RuboCop::AST::Node
  def begin; end
  def end; end
end
class RuboCop::AST::RegexpNode < RuboCop::AST::Node
  def content; end
  def delimiter?(char); end
  def delimiters; end
  def extended?; end
  def ignore_case?; end
  def interpolation?; end
  def multiline_mode?; end
  def no_encoding?; end
  def percent_r_literal?; end
  def regopt; end
  def regopt_include?(option); end
  def single_interpolation?; end
  def slash_literal?; end
  def to_regexp; end
end
class RuboCop::AST::ResbodyNode < RuboCop::AST::Node
  def body; end
  def exception_variable; end
end
class RuboCop::AST::RetryNode < RuboCop::AST::Node
  def arguments; end
  include RuboCop::AST::MethodDispatchNode
  include RuboCop::AST::ParameterizedNode
end
class RuboCop::AST::ReturnNode < RuboCop::AST::Node
  def arguments; end
  include RuboCop::AST::MethodDispatchNode
  include RuboCop::AST::ParameterizedNode
end
class RuboCop::AST::SelfClassNode < RuboCop::AST::Node
  def body; end
  def identifier; end
end
class RuboCop::AST::SendNode < RuboCop::AST::Node
  def attribute_accessor?(node = nil); end
  include RuboCop::AST::MethodDispatchNode
  include RuboCop::AST::ParameterizedNode
end
class RuboCop::AST::StrNode < RuboCop::AST::Node
  def heredoc?; end
  include RuboCop::AST::BasicLiteralNode
end
class RuboCop::AST::SuperNode < RuboCop::AST::Node
  def node_parts; end
  include RuboCop::AST::MethodDispatchNode
  include RuboCop::AST::ParameterizedNode
end
class RuboCop::AST::SymbolNode < RuboCop::AST::Node
  include RuboCop::AST::BasicLiteralNode
end
class RuboCop::AST::UntilNode < RuboCop::AST::Node
  def do?; end
  def inverse_keyword; end
  def keyword; end
  include RuboCop::AST::ConditionalNode
  include RuboCop::AST::ModifierNode
end
class RuboCop::AST::WhenNode < RuboCop::AST::Node
  def body; end
  def branch_index; end
  def conditions; end
  def each_condition; end
  def then?; end
end
class RuboCop::AST::WhileNode < RuboCop::AST::Node
  def do?; end
  def inverse_keyword; end
  def keyword; end
  include RuboCop::AST::ConditionalNode
  include RuboCop::AST::ModifierNode
end
class RuboCop::AST::YieldNode < RuboCop::AST::Node
  def node_parts; end
  include RuboCop::AST::MethodDispatchNode
  include RuboCop::AST::ParameterizedNode
end
class RuboCop::AST::Builder < Parser::Builders::Default
  def n(type, children, source_map); end
  def node_klass(type); end
  def string_value(token); end
end
class RuboCop::AST::ProcessedSource
  def [](*args); end
  def ast; end
  def ast_with_comments; end
  def blank?; end
  def buffer; end
  def checksum; end
  def comment_lines; end
  def commented?(source_range); end
  def comments; end
  def comments_before_line(line); end
  def contains_comment?(source_range); end
  def create_parser(ruby_version); end
  def current_line(token); end
  def diagnostics; end
  def each_comment; end
  def each_token; end
  def file_path; end
  def find_comment; end
  def find_token; end
  def following_line(token); end
  def initialize(source, ruby_version, path = nil); end
  def line_indentation(line_number); end
  def line_with_comment?(line); end
  def lines; end
  def parse(source, ruby_version); end
  def parser_class(ruby_version); end
  def parser_error; end
  def path; end
  def preceding_line(token); end
  def raw_source; end
  def ruby_version; end
  def self.from_file(path, ruby_version); end
  def start_with?(string); end
  def tokenize(parser); end
  def tokens; end
  def valid_syntax?; end
end
class RuboCop::AST::Token
  def begin_pos; end
  def column; end
  def comma?; end
  def comment?; end
  def end?; end
  def end_pos; end
  def equal_sign?; end
  def initialize(pos, type, text); end
  def left_array_bracket?; end
  def left_brace?; end
  def left_bracket?; end
  def left_curly_brace?; end
  def left_parens?; end
  def left_ref_bracket?; end
  def line; end
  def pos; end
  def rescue_modifier?; end
  def right_bracket?; end
  def right_curly_brace?; end
  def right_parens?; end
  def self.from_parser_token(parser_token); end
  def semicolon?; end
  def space_after?; end
  def space_before?; end
  def text; end
  def to_s; end
  def type; end
end
module RuboCop::AST::Traversal
  def on___ENCODING__(node); end
  def on_alias(node); end
  def on_and(node); end
  def on_and_asgn(node); end
  def on_arg(node); end
  def on_arg_expr(node); end
  def on_args(node); end
  def on_array(node); end
  def on_array_pattern(node); end
  def on_array_pattern_with_tail(node); end
  def on_back_ref(node); end
  def on_begin(node); end
  def on_block(node); end
  def on_block_pass(node); end
  def on_blockarg(node); end
  def on_break(node); end
  def on_case(node); end
  def on_case_match(node); end
  def on_casgn(node); end
  def on_cbase(node); end
  def on_class(node); end
  def on_complex(node); end
  def on_const(node); end
  def on_const_pattern(node); end
  def on_csend(node); end
  def on_cvar(node); end
  def on_cvasgn(node); end
  def on_def(node); end
  def on_defined?(node); end
  def on_defs(node); end
  def on_dstr(node); end
  def on_dsym(node); end
  def on_eflipflop(node); end
  def on_empty_else(node); end
  def on_ensure(node); end
  def on_erange(node); end
  def on_false(node); end
  def on_find_pattern(node); end
  def on_float(node); end
  def on_for(node); end
  def on_forward_arg(node); end
  def on_forward_args(node); end
  def on_forwarded_args(node); end
  def on_gvar(node); end
  def on_gvasgn(node); end
  def on_hash(node); end
  def on_hash_pattern(node); end
  def on_if(node); end
  def on_if_guard(node); end
  def on_iflipflop(node); end
  def on_in_match(node); end
  def on_in_pattern(node); end
  def on_index(node); end
  def on_indexasgn(node); end
  def on_int(node); end
  def on_irange(node); end
  def on_ivar(node); end
  def on_ivasgn(node); end
  def on_kwarg(node); end
  def on_kwbegin(node); end
  def on_kwoptarg(node); end
  def on_kwrestarg(node); end
  def on_kwsplat(node); end
  def on_lambda(node); end
  def on_lvar(node); end
  def on_lvasgn(node); end
  def on_masgn(node); end
  def on_match_alt(node); end
  def on_match_as(node); end
  def on_match_current_line(node); end
  def on_match_nil_pattern(node); end
  def on_match_rest(node); end
  def on_match_var(node); end
  def on_match_with_lvasgn(node); end
  def on_match_with_trailing_comma(node); end
  def on_mlhs(node); end
  def on_module(node); end
  def on_next(node); end
  def on_nil(node); end
  def on_not(node); end
  def on_nth_ref(node); end
  def on_numblock(node); end
  def on_op_asgn(node); end
  def on_optarg(node); end
  def on_or(node); end
  def on_or_asgn(node); end
  def on_pair(node); end
  def on_pin(node); end
  def on_postexe(node); end
  def on_preexe(node); end
  def on_procarg0(node); end
  def on_rational(node); end
  def on_redo(node); end
  def on_regexp(node); end
  def on_regopt(node); end
  def on_resbody(node); end
  def on_rescue(node); end
  def on_restarg(node); end
  def on_retry(node); end
  def on_return(node); end
  def on_sclass(node); end
  def on_self(node); end
  def on_send(node); end
  def on_shadowarg(node); end
  def on_splat(node); end
  def on_str(node); end
  def on_super(node); end
  def on_sym(node); end
  def on_true(node); end
  def on_undef(node); end
  def on_unless_guard(node); end
  def on_until(node); end
  def on_until_post(node); end
  def on_when(node); end
  def on_while(node); end
  def on_while_post(node); end
  def on_xstr(node); end
  def on_yield(node); end
  def on_zsuper(node); end
  def walk(node); end
end
module RuboCop::AST::Version
end
