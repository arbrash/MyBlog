/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50628
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2015-12-31 01:54:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `title` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(20000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdtime` datetime DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Relationship_1` (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('21', '2', 'French Artists Will Take Their Irreverence to the Grave', '<p>PARIS &mdash; Beno&icirc;t Del&eacute;pine, a French film director, likes to stroll by his tomb occasionally to check on the neighbors and the new arrivals.</p>\r\n\r\n<p>Sometimes he brushes away debris from the bronze monument &mdash; a prickly cactus that rises from the Montmartre cemetery on the city&rsquo;s Right Bank. Then he steps back to admire its patina, which is oxidizing to a less obtrusive olive green among the flower-strewn crypts and stately granite family mausoleums here.</p>\r\n\r\n<p>The cactus tomb &mdash; with space for 60 cremation urns &mdash; was a scheme hatched by a small band of drinking buddies and artists that includes Mr. Del&eacute;pine, 57, and a former Charlie Hebdo political cartoonist. Their aim, they say, is to create an irreverent mausoleum that is a symbol of absurdity in this Parisian village of the dead, whose 21,500 graves include Edgar Degas and Fran&ccedil;ois Truffaut.</p>\r\n\r\n<p>The cactus looks suspiciously like a raised finger &mdash; or doigt d&rsquo;honneur, in more elegant French terms &mdash; and that is by design. For the glory of residing here for all eternity, each participant has booked a space for about 500 euros. Seven people have made reservations so far, among them a jazz critic, several filmmakers, a television comedy writer and a journalist.</p>\r\n\r\n<p>The tomb is almost six feet high and weighs 220 pounds. It was erected in 2010 and is inscribed with a simple epitaph: &ldquo;Die? Rather croak!&rdquo; It awaits its first occupant.</p>\r\n\r\n<p>&ldquo;Death is crazy. It&rsquo;s not serious,&rdquo; said Maurice Sinet, 87, a dean of French political cartoonists and the guiding force on the project. &ldquo;We don&rsquo;t believe in God. So the cactus is a symbol of how we feel about the world and all of society.&rdquo;</p>\r\n\r\n<p>After much debate, the cactus was chosen because of its tough, thorny exterior and the notion that a plant represents a transformation from the remains of death into life.</p>\r\n\r\n<p>Mr. Sinet &mdash; better known by his pen name, Sin&eacute; &mdash; entered the hospital this month for surgery, mocking his own health anxieties in his columns for a publication he founded, Sin&eacute; Mensuel. He assured readers that upon his recovery &ldquo;a bottle of Chablis Premier Cru is waiting for me in a bucket of ice.&rdquo;</p>\r\n\r\n<p>Mr. Sinet said he and his partners chose Montmartre because they considered the atmosphere more welcoming than the city&rsquo;s largest cemetery, P&egrave;re Lachaise, which holds the tombs of Proust, Moli&egrave;re and Balzac.</p>\r\n\r\n<p>&ldquo;P&egrave;re Lachaise is a little snobby,&rdquo; he said. &ldquo;Montmartre is not for the aristocrats.&rdquo;</p>\r\n\r\n<p>Spread over 26 acres, the Montmartre cemetery dates to 1825. It was built on the site of an old gypsum quarry that also served as a mass grave for thousands of victims of riots during the French Revolution.</p>\r\n\r\n<p>The vast collection of crumbling and lustrous graves lies just off Boulevard de Clichy near the Pigalle red light district of sex shops, pornographic theaters and the Moulin Rouge cabaret &mdash; whose former owner, Jean Bauchet, is buried here under a giant nude sculpture of a man sitting pensively on a black marble crypt.</p>\r\n\r\n<p>Mr. Del&eacute;pine said he prefers this cemetery precisely because of the subversive history of Montmartre. It was a bohemian quarter where art, anarchy and cabaret thrived in the 19th century.</p>\r\n\r\n<p>&ldquo;It&rsquo;s a place of tranquillity with no businesses or money,&rdquo; he said, surveying the feral cats roaming the tombs and the moody landscape that he considers his private garden.</p>\r\n\r\n<p>&ldquo;And I like the neighbors,&rdquo; he added.</p>\r\n\r\n<p>So have other artists, who have long been intrigued by the tales of those who lie here, like Adolphe Sax, the 19th-century inventor of the saxophone, and La Goulue, the cabaret dancer and star of the Moulin Rouge who is credited with creating the French cancan.</p>\r\n\r\n<p>Mr. Truffaut, the New Wave director, used the wrought-iron bridge that crosses over the cemetery as a setting for several movies, including &ldquo;The 400 Blows&rdquo; in 1959. He is buried here under dark marble stone, not far from the crypt of the composer Hector Berlioz. The grave site appealed to the director because of the view of the Gaumont Palace movie theater, which was torn down in 1972.</p>\r\n\r\n<p>Alexandre Dumas, the French dramatist and son of the writer of the same name, was inspired by Alphonsine Plessis, whose white marble grave makes no mention of her history as one of 19th-century Paris&rsquo;s most famous courtesans. He transformed her into a fictional character in his novel &ldquo;La Dame aux Cam&eacute;lias,&rdquo; where he complained that &ldquo;without a guide, there is no way of finding one&rsquo;s way&rdquo; around Montmartre cemetery. Still, he is buried here under a life-size figure of himself, hands folded in repose.</p>\r\n\r\n<p>Among the newer generations, some graves already share the bold qualities of the communal cactus tomb. Along Chemin des Gardes, a white marble memorial of Guy Pitchal, a psychoanalyst to celebrities, who died in 1989, poses with a pipe. The face carved into the stone creates the illusion that his eyes are following passing visitors.</p>\r\n\r\n<p>On the same lane is a shrine to one of his former clients, the pharaoh-like figure of&nbsp;<a href=\"http://www.nytimes.com/1987/05/05/obituaries/dalida.html\" title=\"Her obituary.\">Dalida</a>, a former Miss Egypt and popular singer in France, reigning over a corner in a sleek, golden evening gown with a sunburst spreading behind her. She died in 1987.</p>\r\n\r\n<p>Mr. Del&eacute;pine said the idea to create a cactus memorial resulted from a wine-soaked discussion that is typical of France, where &ldquo;political movements, new enterprises, projects &mdash; or whatever &mdash; are born in a cafe with a crazy conversation.&rdquo;</p>\r\n\r\n<p>It was also a conversation that reflected the twilight of Mr. Sinet&rsquo;s career. As he approached 80 in 2008, he was ousted from Charlie Hebdo, the satirical French magazine, which he helped found in 1970. He was&nbsp;<a href=\"http://www.telegraph.co.uk/news/worldnews/europe/france/2798250/Sarkozys-son-weds-amid-controversy.html\" title=\"Telegraph article.\">fired for publishing</a>&nbsp;a cartoon on the marriage of a son of Nicolas Sarkozy to a Jewish retailing heiress, which an editor considered anti-Semitic. Two years later Mr. Sinet won a lawsuit for wrongful termination.</p>\r\n\r\n<p>As Mr. Del&eacute;pine remembers it, Mr. Sinet was ailing, which accelerated the discussions about a proper memorial for an anarchist.</p>\r\n\r\n<p>Patrick Chappet, the cactus sculptor, said it took six months to create a design that would be acceptable in such a fabled cemetery. &ldquo;Sin&eacute; wanted to make the cactus more irreverent,&rdquo; he said. &ldquo;I tried to make it a little less aggressive. I am a little bit of an alchemist.&rdquo;</p>\r\n\r\n<p>In the years after the creation of the tomb, Mr. Sinet rallied in health and spirit but remained estranged from his former comrades at Charlie Hebdo, where 12 people were killed in January by masked Islamic militants in a terrorist attack.</p>\r\n\r\n<p>&ldquo;The irony is that he is still alive and here is his tomb. The cactus is stronger than ISIS,&rdquo; said Mr. Del&eacute;pine, referring to the Islamic State.</p>\r\n\r\n<p>He noted that any potential tomb-mates would have to be carefully vetted to fit in with the other eclectic artists. &ldquo;Sin&eacute; doesn&rsquo;t fear death, but he does have a fear of being alone.&rdquo;</p>\r\n', '2015-12-30 00:44:59', '1');
INSERT INTO `blog` VALUES ('23', '1', '#1: Two Sum', '<p>Given an array of integers, find two numbers such that they add up to a specific target number.</p>\r\n\r\n<p>The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2. Please note that your returned answers (both index1 and index2) are not zero-based.</p>\r\n\r\n<p>You may assume that each input would have exactly one solution.</p>\r\n\r\n<p><strong>Input:</strong>&nbsp;numbers={2, 7, 11, 15}, target=9<br />\r\n<strong>Output:</strong>&nbsp;index1=1, index2=2</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Solution:</p>\r\n\r\n<p>public class Solution {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; public int[] twoSum(int[] nums, int target) {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int[] defaultres = {0, 0};</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HashMap&lt;Integer, Integer&gt; map = new HashMap&lt;Integer, Integer&gt;();</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(int i = 0; i &lt; nums.length; i++) {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if(map.get(nums[i]) != null) {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int[] result = {map.get(nums[i])+1,i+1};</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return result;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; map.put(target-nums[i], i);</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return defaultres;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p>}</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Using hashmap to store target - current number and then compare the value with the key which already exist in the hashmap, if there is a pair, this two will be the result, if not, continue to find the next one.</p>\r\n', '2015-12-30 00:52:00', '1');
INSERT INTO `blog` VALUES ('24', '1', '#2 Add Two Numbers', '<p>You are given two linked lists representing two non-negative numbers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.</p>\r\n\r\n<p><strong>Input:</strong>&nbsp;(2 -&gt; 4 -&gt; 3) + (5 -&gt; 6 -&gt; 4)<br />\r\n<strong>Output:</strong>&nbsp;7 -&gt; 0 -&gt; 8</p>\r\n\r\n<p>/**</p>\r\n\r\n<p>&nbsp;* Definition for singly-linked list.</p>\r\n\r\n<p>&nbsp;* public class ListNode {</p>\r\n\r\n<p>&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp; int val;</p>\r\n\r\n<p>&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp; ListNode next;</p>\r\n\r\n<p>&nbsp;*&nbsp;&nbsp;&nbsp;&nbsp; ListNode(int x) { val = x; }</p>\r\n\r\n<p>&nbsp;* }</p>\r\n\r\n<p>&nbsp;*/</p>\r\n\r\n<p>public class Solution {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; public ListNode addTwoNumbers(ListNode l1, ListNode l2) {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if(l1==null || l2==null) return l1==null?l2:l1;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int carry = 0;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ListNode head = new ListNode(0);</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ListNode res = head;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while(carry!=0 ||(carry==0 &amp;&amp; l1!=null &amp;&amp; l2!=null)){</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if(l1==null&amp;&amp;l2==null) {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; head.next = new ListNode(carry);</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; head=head.next;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; carry=0;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }else{</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int num1 = l1==null?0:l1.val;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int num2 = l2==null?0:l2.val;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int sum=num1+num2+carry;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; carry = sum/10;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; head.next=new ListNode(sum%10);</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; head=head.next;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if(l1!=null) l1=l1.next;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if(l2!=null) l2=l2.next;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; head.next = l1==null ? l2:l1;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return res.next;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p>}</p>\r\n', '2015-12-30 00:52:45', '1');
INSERT INTO `blog` VALUES ('25', '1', '#3 Longest Substring Without Repeating Characters', '<p>Given a string, find the length of the longest substring without repeating characters. For example, the longest substring without repeating letters for &quot;abcabcbb&quot; is &quot;abc&quot;, which the length is 3. For &quot;bbbbb&quot; the longest substring is &quot;b&quot;, with the length of 1.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>public class Solution {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; public int lengthOfLongestSubstring(String s) {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (s.length()==0) return 0;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HashMap&lt;Character, Integer&gt; map = new HashMap&lt;Character, Integer&gt;();</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int max=0;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (int i=0, j=0; i&lt;s.length(); ++i){</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (map.containsKey(s.charAt(i))){</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; j = Math.max(j,map.get(s.charAt(i))+1);</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; map.put(s.charAt(i),i);</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; max = Math.max(max,i-j+1);</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return max;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p>}</p>\r\n\r\n<p>Use hashmap to compare characters, if detect the same char, move pointer j to the right of the char last found and continue scan the string. In each loop, get the max of max and i-j+1</p>\r\n', '2015-12-30 00:53:40', '1');
INSERT INTO `blog` VALUES ('26', '1', '#4 Median of Two Sorted Arrays', '<p>There are two sorted arrays&nbsp;<strong>nums1</strong>&nbsp;and&nbsp;<strong>nums2</strong>&nbsp;of size m and n respectively. Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>public class Solution {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; public double findMedianSortedArrays(int[] nums1, int[] nums2) {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int m = nums1.length, n = nums2.length;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int l = (m + n + 1) / 2;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int r = (m + n + 2) / 2;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return (getkth(nums1, 0, nums2, 0, l) + getkth(nums1, 0, nums2, 0, r)) / 2.0;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>public double getkth(int[] A, int aStart, int[] B, int bStart, int k) {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; if (aStart &gt; A.length - 1) return B[bStart + k - 1];&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; if (bStart &gt; B.length - 1) return A[aStart + k - 1];&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; if (k == 1) return Math.min(A[aStart], B[bStart]);</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; int aMid = Integer.MAX_VALUE, bMid = Integer.MAX_VALUE;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; if (aStart + k/2 - 1 &lt; A.length) aMid = A[aStart + k/2 - 1];</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; if (bStart + k/2 - 1 &lt; B.length) bMid = B[bStart + k/2 - 1];&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; if (aMid &lt; bMid)</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return getkth(A, aStart + k/2, B, bStart,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; k - k/2);</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; else</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return getkth(A, aStart,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; B, bStart + k/2, k - k/2);</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p>}</p>\r\n', '2015-12-30 15:16:15', null);
INSERT INTO `blog` VALUES ('29', '1', '#5 Longest Palindromic Substring', '<p>Given a string&nbsp;<em>S</em>, find the longest palindromic substring in&nbsp;<em>S</em>. You may assume that the maximum length of&nbsp;<em>S</em>&nbsp;is 1000, and there exists one unique longest palindromic substring.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>public class Solution {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; private int lo, maxLen;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; public String longestPalindrome(String s) {</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int len = s.length();</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if(len&lt;2)</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return s;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(int i=0;i&lt;len-1;i++){</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; palindrome(s,i,i);</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; palindrome(s,i,i+1);</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return s.substring(lo, lo + maxLen);</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; private void palindrome(String s,int m,int n){</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while(m &gt;= 0 &amp;&amp; n &lt; s.length() &amp;&amp; s.charAt(m) == s.charAt(n)){</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; n++;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; m--;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if(maxLen&lt;n-m-1){</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; maxLen = n-m-1;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; lo = m+1;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; }</p>\r\n\r\n<p>}</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Scan the whole string, find the palindromic substring at each scan, then find the max length substring.</p>\r\n', '2015-12-30 15:35:06', null);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'LeetCode', '30');
INSERT INTO `category` VALUES ('2', 'Other', '20');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blogid` int(11) DEFAULT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdtime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Relationship_2` (`blogid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('12', '29', 'Jian Ye', 'good', '2015-12-30 22:19:33');
INSERT INTO `comment` VALUES ('15', '24', 'Anonymity', 'good', '2015-12-30 23:18:44');
INSERT INTO `comment` VALUES ('16', '29', 'Anonymity', 'good', '2015-12-31 00:29:55');
INSERT INTO `comment` VALUES ('17', '29', 'Anonymity', 'good', '2015-12-31 00:29:58');
INSERT INTO `comment` VALUES ('18', '29', 'Anonymity', 'good', '2015-12-31 00:30:02');
INSERT INTO `comment` VALUES ('19', '29', 'Anonymity', 'good', '2015-12-31 00:30:05');
INSERT INTO `comment` VALUES ('20', '29', 'Anonymity', 'good', '2015-12-31 00:30:07');
INSERT INTO `comment` VALUES ('21', '29', 'Anonymity', 'good', '2015-12-31 00:30:11');
INSERT INTO `comment` VALUES ('22', '29', 'Anonymity', 'good', '2015-12-31 00:30:13');
INSERT INTO `comment` VALUES ('23', '29', 'Anonymity', 'good', '2015-12-31 00:30:57');
INSERT INTO `comment` VALUES ('24', '29', 'Anonymity', 'good', '2015-12-31 00:31:02');
INSERT INTO `comment` VALUES ('25', '29', 'Anonymity', 'good', '2015-12-31 00:31:06');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'arbrash', 'laozi1026', 'Pei Gu', '908-367-0468', 'arbrash@163.com', 'New Jersey Institute of Technology, Newark, NJ');
