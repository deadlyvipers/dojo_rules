package Unicode::Collate::CJK::GB2312;

use 5.006;
use strict;
use warnings;

our $VERSION = '1.12';

my %u2p;
my $wt = 0x8000;

while (<DATA>) {
    last if /^__END__/;
    my @c = split;
    for my $c (@c) {
	next if !$c;
	$u2p{hex($c)} = $wt;
	$wt++;
    }
}

sub weightGB2312 {
    my $u = shift;
    return exists $u2p{$u} ? $u2p{$u} : undef;
}

1;
__DATA__
554A 963F 57C3 6328 54CE 5509 54C0 7691 764C 853C
77EE 827E 788D 7231 9698 978D 6C28 5B89 4FFA 6309
6697 5CB8 80FA 6848 80AE 6602 76CE 51F9 6556 71AC
7FF1 8884 50B2 5965 61CA 6FB3 82AD 634C 6252 53ED
5427 7B06 516B 75A4 5DF4 62D4 8DCB 9776 628A 8019
575D 9738 7F62 7238 767D 67CF 767E 6446 4F70 8D25
62DC 7A17 6591 73ED 642C 6273 822C 9881 677F 7248
626E 62CC 4F34 74E3 534A 529E 7ECA 90A6 5E2E 6886
699C 8180 7ED1 68D2 78C5 868C 9551 508D 8C24 82DE
80DE 5305 8912 5265 8584 96F9 4FDD 5821 9971 5B9D
62B1 62A5 66B4 8C79 9C8D 7206 676F 7891 60B2 5351
5317 8F88 80CC 8D1D 94A1 500D 72C8 5907 60EB 7119
88AB 5954 82EF 672C 7B28 5D29 7EF7 752D 6CF5 8E66
8FF8 903C 9F3B 6BD4 9119 7B14 5F7C 78A7 84D6 853D
6BD5 6BD9 6BD6 5E01 5E87 75F9 95ED 655D 5F0A 5FC5
8F9F 58C1 81C2 907F 965B 97AD 8FB9 7F16 8D2C 6241
4FBF 53D8 535E 8FA8 8FA9 8FAB 904D 6807 5F6A 8198
8868 9CD6 618B 522B 762A 5F6C 658C 6FD2 6EE8 5BBE
6448 5175 51B0 67C4 4E19 79C9 997C 70B3 75C5 5E76
73BB 83E0 64AD 62E8 94B5 6CE2 535A 52C3 640F 94C2
7B94 4F2F 5E1B 8236 8116 818A 6E24 6CCA 9A73 6355
535C 54FA 8865 57E0 4E0D 5E03 6B65 7C3F 90E8 6016
64E6 731C 88C1 6750 624D 8D22 776C 8E29 91C7 5F69
83DC 8521 9910 53C2 8695 6B8B 60ED 60E8 707F 82CD
8231 4ED3 6CA7 85CF 64CD 7CD9 69FD 66F9 8349 5395
7B56 4FA7 518C 6D4B 5C42 8E6D 63D2 53C9 832C 8336
67E5 78B4 643D 5BDF 5C94 5DEE 8BE7 62C6 67F4 8C7A
6400 63BA 8749 998B 8C17 7F20 94F2 4EA7 9610 98A4
660C 7316 573A 5C1D 5E38 957F 507F 80A0 5382 655E
7545 5531 5021 8D85 6284 949E 671D 5632 6F6E 5DE2
5435 7092 8F66 626F 64A4 63A3 5F7B 6F88 90F4 81E3
8FB0 5C18 6668 5FF1 6C89 9648 8D81 886C 6491 79F0
57CE 6A59 6210 5448 4E58 7A0B 60E9 6F84 8BDA 627F
901E 9A8B 79E4 5403 75F4 6301 5319 6C60 8FDF 5F1B
9A70 803B 9F7F 4F88 5C3A 8D64 7FC5 65A5 70BD 5145
51B2 866B 5D07 5BA0 62BD 916C 7574 8E0C 7A20 6101
7B79 4EC7 7EF8 7785 4E11 81ED 521D 51FA 6A71 53A8
8E87 9504 96CF 6EC1 9664 695A 7840 50A8 77D7 6410
89E6 5904 63E3 5DDD 7A7F 693D 4F20 8239 5598 4E32
75AE 7A97 5E62 5E8A 95EF 521B 5439 708A 6376 9524
5782 6625 693F 9187 5507 6DF3 7EAF 8822 6233 7EF0
75B5 8328 78C1 96CC 8F9E 6148 74F7 8BCD 6B64 523A
8D50 6B21 806A 8471 56F1 5306 4ECE 4E1B 51D1 7C97
918B 7C07 4FC3 8E7F 7BE1 7A9C 6467 5D14 50AC 8106
7601 7CB9 6DEC 7FE0 6751 5B58 5BF8 78CB 64AE 6413
63AA 632B 9519 642D 8FBE 7B54 7629 6253 5927 5446
6B79 50A3 6234 5E26 6B86 4EE3 8D37 888B 5F85 902E
6020 803D 62C5 4E39 5355 90F8 63B8 80C6 65E6 6C2E
4F46 60EE 6DE1 8BDE 5F39 86CB 5F53 6321 515A 8361
6863 5200 6363 8E48 5012 5C9B 7977 5BFC 5230 7A3B
60BC 9053 76D7 5FB7 5F97 7684 8E6C 706F 767B 7B49
77AA 51F3 9093 5824 4F4E 6EF4 8FEA 654C 7B1B 72C4
6DA4 7FDF 5AE1 62B5 5E95 5730 8482 7B2C 5E1D 5F1F
9012 7F14 98A0 6382 6EC7 7898 70B9 5178 975B 57AB
7535 4F43 7538 5E97 60E6 5960 6DC0 6BBF 7889 53FC
96D5 51CB 5201 6389 540A 9493 8C03 8DCC 7239 789F
8776 8FED 8C0D 53E0 4E01 76EF 53EE 9489 9876 9F0E
952D 5B9A 8BA2 4E22 4E1C 51AC 8463 61C2 52A8 680B
4F97 606B 51BB 6D1E 515C 6296 6597 9661 8C46 9017
75D8 90FD 7763 6BD2 728A 72EC 8BFB 5835 7779 8D4C
675C 9540 809A 5EA6 6E21 5992 7AEF 77ED 953B 6BB5
65AD 7F0E 5806 5151 961F 5BF9 58A9 5428 8E72 6566
987F 56E4 949D 76FE 9041 6387 54C6 591A 593A 579B
8EB2 6735 8DFA 8235 5241 60F0 5815 86FE 5CE8 9E45
4FC4 989D 8BB9 5A25 6076 5384 627C 904F 9102 997F
6069 800C 513F 8033 5C14 9975 6D31 4E8C 8D30 53D1
7F5A 7B4F 4F10 4E4F 9600 6CD5 73D0 85E9 5E06 756A
7FFB 6A0A 77FE 9492 7E41 51E1 70E6 53CD 8FD4 8303
8D29 72AF 996D 6CDB 574A 82B3 65B9 80AA 623F 9632
59A8 4EFF 8BBF 7EBA 653E 83F2 975E 5561 98DE 80A5
532A 8BFD 5420 80BA 5E9F 6CB8 8D39 82AC 915A 5429
6C1B 5206 7EB7 575F 711A 6C7E 7C89 594B 4EFD 5FFF
6124 7CAA 4E30 5C01 67AB 8702 5CF0 950B 98CE 75AF
70FD 9022 51AF 7F1D 8BBD 5949 51E4 4F5B 5426 592B
6577 80A4 5B75 6276 62C2 8F90 5E45 6C1F 7B26 4F0F
4FD8 670D 6D6E 6DAA 798F 88B1 5F17 752B 629A 8F85
4FEF 91DC 65A7 812F 8151 5E9C 8150 8D74 526F 8986
8D4B 590D 5085 4ED8 961C 7236 8179 8D1F 5BCC 8BA3
9644 5987 7F1A 5490 5676 560E 8BE5 6539 6982 9499
76D6 6E89 5E72 7518 6746 67D1 7AFF 809D 8D76 611F
79C6 6562 8D63 5188 521A 94A2 7F38 809B 7EB2 5C97
6E2F 6760 7BD9 768B 9AD8 818F 7F94 7CD5 641E 9550
7A3F 544A 54E5 6B4C 6401 6208 9E3D 80F3 7599 5272
9769 845B 683C 86E4 9601 9694 94EC 4E2A 5404 7ED9
6839 8DDF 8015 66F4 5E9A 7FB9 57C2 803F 6897 5DE5
653B 529F 606D 9F9A 4F9B 8EAC 516C 5BAB 5F13 5DE9
6C5E 62F1 8D21 5171 94A9 52FE 6C9F 82DF 72D7 57A2
6784 8D2D 591F 8F9C 83C7 5495 7B8D 4F30 6CBD 5B64
59D1 9F13 53E4 86CA 9AA8 8C37 80A1 6545 987E 56FA
96C7 522E 74DC 5250 5BE1 6302 8902 4E56 62D0 602A
68FA 5173 5B98 51A0 89C2 7BA1 9986 7F50 60EF 704C
8D2F 5149 5E7F 901B 7470 89C4 572D 7845 5F52 9F9F
95FA 8F68 9B3C 8BE1 7678 6842 67DC 8DEA 8D35 523D
8F8A 6EDA 68CD 9505 90ED 56FD 679C 88F9 8FC7 54C8
9AB8 5B69 6D77 6C26 4EA5 5BB3 9A87 9163 61A8 90AF
97E9 542B 6DB5 5BD2 51FD 558A 7F55 7FF0 64BC 634D
65F1 61BE 608D 710A 6C57 6C49 592F 676D 822A 58D5
568E 8C6A 6BEB 90DD 597D 8017 53F7 6D69 5475 559D
8377 83CF 6838 79BE 548C 4F55 5408 76D2 8C89 9602
6CB3 6DB8 8D6B 8910 9E64 8D3A 563F 9ED1 75D5 5F88
72E0 6068 54FC 4EA8 6A2A 8861 6052 8F70 54C4 70D8
8679 9E3F 6D2A 5B8F 5F18 7EA2 5589 4FAF 7334 543C
539A 5019 540E 547C 4E4E 5FFD 745A 58F6 846B 80E1
8774 72D0 7CCA 6E56 5F27 864E 552C 62A4 4E92 6CAA
6237 82B1 54D7 534E 733E 6ED1 753B 5212 5316 8BDD
69D0 5F8A 6000 6DEE 574F 6B22 73AF 6853 8FD8 7F13
6362 60A3 5524 75EA 8C62 7115 6DA3 5BA6 5E7B 8352
614C 9EC4 78FA 8757 7C27 7687 51F0 60F6 714C 6643
5E4C 604D 8C0E 7070 6325 8F89 5FBD 6062 86D4 56DE
6BC1 6094 6167 5349 60E0 6666 8D3F 79FD 4F1A 70E9
6C47 8BB3 8BF2 7ED8 8364 660F 5A5A 9B42 6D51 6DF7
8C41 6D3B 4F19 706B 83B7 6216 60D1 970D 8D27 7978
51FB 573E 57FA 673A 7578 7A3D 79EF 7B95 808C 9965
8FF9 6FC0 8BA5 9E21 59EC 7EE9 7F09 5409 6781 68D8
8F91 7C4D 96C6 53CA 6025 75BE 6C72 5373 5AC9 7EA7
6324 51E0 810A 5DF1 84DF 6280 5180 5B63 4F0E 796D
5242 60B8 6D4E 5BC4 5BC2 8BA1 8BB0 65E2 5FCC 9645
5993 7EE7 7EAA 5609 67B7 5939 4F73 5BB6 52A0 835A
988A 8D3E 7532 94BE 5047 7A3C 4EF7 67B6 9A7E 5AC1
6B7C 76D1 575A 5C16 7B3A 95F4 714E 517C 80A9 8270
5978 7F04 8327 68C0 67EC 78B1 7877 62E3 6361 7B80
4FED 526A 51CF 8350 69DB 9274 8DF5 8D31 89C1 952E
7BAD 4EF6 5065 8230 5251 996F 6E10 6E85 6DA7 5EFA
50F5 59DC 5C06 6D46 6C5F 7586 848B 6868 5956 8BB2
5320 9171 964D 8549 6912 7901 7126 80F6 4EA4 90CA
6D47 9A84 5A07 56BC 6405 94F0 77EB 4FA5 811A 72E1
89D2 997A 7F34 7EDE 527F 6559 9175 8F7F 8F83 53EB
7A96 63ED 63A5 7686 79F8 8857 9636 622A 52AB 8282
6854 6770 6377 776B 7AED 6D01 7ED3 89E3 59D0 6212
85C9 82A5 754C 501F 4ECB 75A5 8BEB 5C4A 5DFE 7B4B
65A4 91D1 4ECA 6D25 895F 7D27 9526 4EC5 8C28 8FDB
9773 664B 7981 8FD1 70EC 6D78 5C3D 52B2 8346 5162
830E 775B 6676 9CB8 4EAC 60CA 7CBE 7CB3 7ECF 4E95
8B66 666F 9888 9759 5883 656C 955C 5F84 75C9 9756
7ADF 7ADE 51C0 70AF 7A98 63EA 7A76 7EA0 7396 97ED
4E45 7078 4E5D 9152 53A9 6551 65E7 81FC 8205 548E
5C31 759A 97A0 62D8 72D9 75BD 5C45 9A79 83CA 5C40
5480 77E9 4E3E 6CAE 805A 62D2 636E 5DE8 5177 8DDD
8E1E 952F 4FF1 53E5 60E7 70AC 5267 6350 9E43 5A1F
5026 7737 5377 7EE2 6485 652B 6289 6398 5014 7235
89C9 51B3 8BC0 7EDD 5747 83CC 94A7 519B 541B 5CFB
4FCA 7AE3 6D5A 90E1 9A8F 5580 5496 5361 54AF 5F00
63E9 6977 51EF 6168 520A 582A 52D8 574E 780D 770B
5EB7 6177 7CE0 625B 6297 4EA2 7095 8003 62F7 70E4
9760 5777 82DB 67EF 68F5 78D5 9897 79D1 58F3 54B3
53EF 6E34 514B 523B 5BA2 8BFE 80AF 5543 57A6 6073
5751 542D 7A7A 6050 5B54 63A7 62A0 53E3 6263 5BC7
67AF 54ED 7A9F 82E6 9177 5E93 88E4 5938 57AE 630E
8DE8 80EF 5757 7B77 4FA9 5FEB 5BBD 6B3E 5321 7B50
72C2 6846 77FF 7736 65F7 51B5 4E8F 76D4 5CBF 7AA5
8475 594E 9B41 5080 9988 6127 6E83 5764 6606 6346
56F0 62EC 6269 5ED3 9614 5783 62C9 5587 8721 814A
8FA3 5566 83B1 6765 8D56 84DD 5A6A 680F 62E6 7BEE
9611 5170 6F9C 8C30 63FD 89C8 61D2 7F06 70C2 6EE5
7405 6994 72FC 5ECA 90CE 6717 6D6A 635E 52B3 7262
8001 4F6C 59E5 916A 70D9 6D9D 52D2 4E50 96F7 956D
857E 78CA 7D2F 5121 5792 64C2 808B 7C7B 6CEA 68F1
695E 51B7 5398 68A8 7281 9ECE 7BF1 72F8 79BB 6F13
7406 674E 91CC 9CA4 793C 8389 8354 540F 6817 4E3D
5389 52B1 783E 5386 5229 5088 4F8B 4FD0 75E2 7ACB
7C92 6CA5 96B6 529B 7483 54E9 4FE9 8054 83B2 8FDE
9570 5EC9 601C 6D9F 5E18 655B 8138 94FE 604B 70BC
7EC3 7CAE 51C9 6881 7CB1 826F 4E24 8F86 91CF 667E
4EAE 8C05 64A9 804A 50DA 7597 71CE 5BE5 8FBD 6F66
4E86 6482 9563 5ED6 6599 5217 88C2 70C8 52A3 730E
7433 6797 78F7 9716 4E34 90BB 9CDE 6DCB 51DB 8D41
541D 62CE 73B2 83F1 96F6 9F84 94C3 4F36 7F9A 51CC
7075 9675 5CAD 9886 53E6 4EE4 6E9C 7409 69B4 786B
998F 7559 5218 7624 6D41 67F3 516D 9F99 804B 5499
7B3C 7ABF 9686 5784 62E2 9647 697C 5A04 6402 7BD3
6F0F 964B 82A6 5362 9885 5E90 7089 63B3 5364 864F
9C81 9E93 788C 9732 8DEF 8D42 9E7F 6F5E 7984 5F55
9646 622E 9A74 5415 94DD 4FA3 65C5 5C65 5C61 7F15
8651 6C2F 5F8B 7387 6EE4 7EFF 5CE6 631B 5B6A 6EE6
5375 4E71 63A0 7565 62A1 8F6E 4F26 4ED1 6CA6 7EB6
8BBA 841D 87BA 7F57 903B 9523 7BA9 9AA1 88F8 843D
6D1B 9A86 7EDC 5988 9EBB 739B 7801 8682 9A6C 9A82
561B 5417 57CB 4E70 9EA6 5356 8FC8 8109 7792 9992
86EE 6EE1 8513 66FC 6162 6F2B 8C29 8292 832B 76F2
6C13 5FD9 83BD 732B 8305 951A 6BDB 77DB 94C6 536F
8302 5192 5E3D 8C8C 8D38 4E48 73AB 679A 6885 9176
9709 7164 6CA1 7709 5A92 9541 6BCF 7F8E 6627 5BD0
59B9 5A9A 95E8 95F7 4EEC 840C 8499 6AAC 76DF 9530
731B 68A6 5B5F 772F 919A 9761 7CDC 8FF7 8C1C 5F25
7C73 79D8 89C5 6CCC 871C 5BC6 5E42 68C9 7720 7EF5
5195 514D 52C9 5A29 7F05 9762 82D7 63CF 7784 85D0
79D2 6E3A 5E99 5999 8511 706D 6C11 62BF 76BF 654F
60AF 95FD 660E 879F 9E23 94ED 540D 547D 8C2C 6478
6479 8611 6A21 819C 78E8 6469 9B54 62B9 672B 83AB
58A8 9ED8 6CAB 6F20 5BDE 964C 8C0B 725F 67D0 62C7
7261 4EA9 59C6 6BCD 5893 66AE 5E55 52DF 6155 6728
76EE 7766 7267 7A46 62FF 54EA 5450 94A0 90A3 5A1C
7EB3 6C16 4E43 5976 8010 5948 5357 7537 96BE 56CA
6320 8111 607C 95F9 6DD6 5462 9981 5185 5AE9 80FD
59AE 9713 502A 6CE5 5C3C 62DF 4F60 533F 817B 9006
6EBA 852B 62C8 5E74 78BE 64B5 637B 5FF5 5A18 917F
9E1F 5C3F 634F 8042 5B7D 556E 954A 954D 6D85 60A8
67E0 72DE 51DD 5B81 62E7 6CDE 725B 626D 94AE 7EBD
8113 6D53 519C 5F04 5974 52AA 6012 5973 6696 8650
759F 632A 61E6 7CEF 8BFA 54E6 6B27 9E25 6BB4 85D5
5455 5076 6CA4 556A 8DB4 722C 5E15 6015 7436 62CD
6392 724C 5F98 6E43 6D3E 6500 6F58 76D8 78D0 76FC
7554 5224 53DB 4E53 5E9E 65C1 802A 80D6 629B 5486
5228 70AE 888D 8DD1 6CE1 5478 80DA 57F9 88F4 8D54
966A 914D 4F69 6C9B 55B7 76C6 7830 62A8 70F9 6F8E
5F6D 84EC 68DA 787C 7BF7 81A8 670B 9E4F 6367 78B0
576F 7812 9739 6279 62AB 5288 7435 6BD7 5564 813E
75B2 76AE 5339 75DE 50FB 5C41 8B6C 7BC7 504F 7247
9A97 98D8 6F02 74E2 7968 6487 77A5 62FC 9891 8D2B
54C1 8058 4E52 576A 82F9 840D 5E73 51ED 74F6 8BC4
5C4F 5761 6CFC 9887 5A46 7834 9B44 8FEB 7C95 5256
6251 94FA 4EC6 8386 8461 83E9 84B2 57D4 6734 5703
666E 6D66 8C31 66DD 7011 671F 6B3A 6816 621A 59BB
4E03 51C4 6F06 67D2 6C8F 5176 68CB 5947 6B67 7566
5D0E 8110 9F50 65D7 7948 7941 9A91 8D77 5C82 4E5E
4F01 542F 5951 780C 5668 6C14 8FC4 5F03 6C7D 6CE3
8BAB 6390 6070 6D3D 7275 6266 948E 94C5 5343 8FC1
7B7E 4EDF 8C26 4E7E 9ED4 94B1 94B3 524D 6F5C 9063
6D45 8C34 5811 5D4C 6B20 6B49 67AA 545B 8154 7F8C
5899 8537 5F3A 62A2 6A47 9539 6572 6084 6865 77A7
4E54 4FA8 5DE7 9798 64AC 7FD8 5CED 4FCF 7A8D 5207
8304 4E14 602F 7A83 94A6 4FB5 4EB2 79E6 7434 52E4
82B9 64D2 79BD 5BDD 6C81 9752 8F7B 6C22 503E 537F
6E05 64CE 6674 6C30 60C5 9877 8BF7 5E86 743C 7A77
79CB 4E18 90B1 7403 6C42 56DA 914B 6CC5 8D8B 533A
86C6 66F2 8EAF 5C48 9A71 6E20 53D6 5A36 9F8B 8DA3
53BB 5708 98A7 6743 919B 6CC9 5168 75CA 62F3 72AC
5238 529D 7F3A 7094 7638 5374 9E4A 69B7 786E 96C0
88D9 7FA4 7136 71C3 5189 67D3 74E4 58E4 6518 56B7
8BA9 9976 6270 7ED5 60F9 70ED 58EC 4EC1 4EBA 5FCD
97E7 4EFB 8BA4 5203 598A 7EAB 6254 4ECD 65E5 620E
8338 84C9 8363 878D 7194 6EB6 5BB9 7ED2 5197 63C9
67D4 8089 8339 8815 5112 5B7A 5982 8FB1 4E73 6C5D
5165 8925 8F6F 962E 854A 745E 9510 95F0 6DA6 82E5
5F31 6492 6D12 8428 816E 9CC3 585E 8D5B 4E09 53C1
4F1E 6563 6851 55D3 4E27 6414 9A9A 626B 5AC2 745F
8272 6DA9 68EE 50E7 838E 7802 6740 5239 6C99 7EB1
50BB 5565 715E 7B5B 6652 73CA 82EB 6749 5C71 5220
717D 886B 95EA 9655 64C5 8D61 81B3 5584 6C55 6247
7F2E 5892 4F24 5546 8D4F 664C 4E0A 5C1A 88F3 68A2
634E 7A0D 70E7 828D 52FA 97F6 5C11 54E8 90B5 7ECD
5962 8D4A 86C7 820C 820D 8D66 6444 5C04 6151 6D89
793E 8BBE 7837 7533 547B 4F38 8EAB 6DF1 5A20 7EC5
795E 6C88 5BA1 5A76 751A 80BE 614E 6E17 58F0 751F
7525 7272 5347 7EF3 7701 76DB 5269 80DC 5723 5E08
5931 72EE 65BD 6E7F 8BD7 5C38 8671 5341 77F3 62FE
65F6 4EC0 98DF 8680 5B9E 8BC6 53F2 77E2 4F7F 5C4E
9A76 59CB 5F0F 793A 58EB 4E16 67FF 4E8B 62ED 8A93
901D 52BF 662F 55DC 566C 9002 4ED5 4F8D 91CA 9970
6C0F 5E02 6043 5BA4 89C6 8BD5 6536 624B 9996 5B88
5BFF 6388 552E 53D7 7626 517D 852C 67A2 68B3 6B8A
6292 8F93 53D4 8212 6DD1 758F 4E66 8D4E 5B70 719F
85AF 6691 66D9 7F72 8700 9ECD 9F20 5C5E 672F 8FF0
6811 675F 620D 7AD6 5885 5EB6 6570 6F31 6055 5237
800D 6454 8870 7529 5E05 6813 62F4 971C 53CC 723D
8C01 6C34 7761 7A0E 542E 77AC 987A 821C 8BF4 7855
6714 70C1 65AF 6495 5636 601D 79C1 53F8 4E1D 6B7B
8086 5BFA 55E3 56DB 4F3A 4F3C 9972 5DF3 677E 8038
6002 9882 9001 5B8B 8BBC 8BF5 641C 8258 64DE 55FD
82CF 9165 4FD7 7D20 901F 7C9F 50F3 5851 6EAF 5BBF
8BC9 8083 9178 849C 7B97 867D 968B 968F 7EE5 9AD3
788E 5C81 7A57 9042 96A7 795F 5B59 635F 7B0B 84D1
68AD 5506 7F29 7410 7D22 9501 6240 584C 4ED6 5B83
5979 5854 736D 631E 8E4B 8E0F 80CE 82D4 62AC 53F0
6CF0 915E 592A 6001 6C70 574D 644A 8D2A 762B 6EE9
575B 6A80 75F0 6F6D 8C2D 8C08 5766 6BEF 8892 78B3
63A2 53F9 70AD 6C64 5858 642A 5802 68E0 819B 5510
7CD6 5018 8EBA 6DCC 8D9F 70EB 638F 6D9B 6ED4 7EE6
8404 6843 9003 6DD8 9676 8BA8 5957 7279 85E4 817E
75BC 8A8A 68AF 5254 8E22 9511 63D0 9898 8E44 557C
4F53 66FF 568F 60D5 6D95 5243 5C49 5929 6DFB 586B
7530 751C 606C 8214 8146 6311 6761 8FE2 773A 8DF3
8D34 94C1 5E16 5385 542C 70C3 6C40 5EF7 505C 4EAD
5EAD 633A 8247 901A 6850 916E 77B3 540C 94DC 5F64
7AE5 6876 6345 7B52 7EDF 75DB 5077 6295 5934 900F
51F8 79C3 7A81 56FE 5F92 9014 6D82 5C60 571F 5410
5154 6E4D 56E2 63A8 9893 817F 8715 892A 9000 541E
5C6F 81C0 62D6 6258 8131 9E35 9640 9A6E 9A7C 692D
59A5 62D3 553E 6316 54C7 86D9 6D3C 5A03 74E6 889C
6B6A 5916 8C4C 5F2F 6E7E 73A9 987D 4E38 70F7 5B8C
7897 633D 665A 7696 60CB 5B9B 5A49 4E07 8155 6C6A
738B 4EA1 6789 7F51 5F80 65FA 671B 5FD8 5984 5A01
5DCD 5FAE 5371 97E6 8FDD 6845 56F4 552F 60DF 4E3A
6F4D 7EF4 82C7 840E 59D4 4F1F 4F2A 5C3E 7EAC 672A
851A 5473 754F 80C3 5582 9B4F 4F4D 6E2D 8C13 5C09
6170 536B 761F 6E29 868A 6587 95FB 7EB9 543B 7A33
7D0A 95EE 55E1 7FC1 74EE 631D 8717 6DA1 7A9D 6211
65A1 5367 63E1 6C83 5DEB 545C 94A8 4E4C 6C61 8BEC
5C4B 65E0 829C 68A7 543E 5434 6BCB 6B66 4E94 6342
5348 821E 4F0D 4FAE 575E 620A 96FE 6664 7269 52FF
52A1 609F 8BEF 6614 7199 6790 897F 7852 77FD 6670
563B 5438 9521 727A 7A00 606F 5E0C 6089 819D 5915
60DC 7184 70EF 6EAA 6C50 7280 6A84 88AD 5E2D 4E60
5AB3 559C 94E3 6D17 7CFB 9699 620F 7EC6 778E 867E
5323 971E 8F96 6687 5CE1 4FA0 72ED 4E0B 53A6 590F
5413 6380 9528 5148 4ED9 9C9C 7EA4 54B8 8D24 8854
8237 95F2 6D8E 5F26 5ACC 663E 9669 73B0 732E 53BF
817A 9985 7FA1 5BAA 9677 9650 7EBF 76F8 53A2 9576
9999 7BB1 8944 6E58 4E61 7FD4 7965 8BE6 60F3 54CD
4EAB 9879 5DF7 6A61 50CF 5411 8C61 8427 785D 9704
524A 54EE 56A3 9500 6D88 5BB5 6DC6 6653 5C0F 5B5D
6821 8096 5578 7B11 6548 6954 4E9B 6B47 874E 978B
534F 631F 643A 90AA 659C 80C1 8C10 5199 68B0 5378
87F9 61C8 6CC4 6CFB 8C22 5C51 85AA 82AF 950C 6B23
8F9B 65B0 5FFB 5FC3 4FE1 8845 661F 8165 7329 60FA
5174 5211 578B 5F62 90A2 884C 9192 5E78 674F 6027
59D3 5144 51F6 80F8 5308 6C79 96C4 718A 4F11 4FEE
7F9E 673D 55C5 9508 79C0 8896 7EE3 589F 620C 9700
865A 5618 987B 5F90 8BB8 84C4 9157 53D9 65ED 5E8F
755C 6064 7D6E 5A7F 7EEA 7EED 8F69 55A7 5BA3 60AC
65CB 7384 9009 7663 7729 7EDA 9774 859B 5B66 7A74
96EA 8840 52CB 718F 5FAA 65EC 8BE2 5BFB 9A6F 5DE1
6B89 6C5B 8BAD 8BAF 900A 8FC5 538B 62BC 9E26 9E2D
5440 4E2B 82BD 7259 869C 5D16 8859 6DAF 96C5 54D1
4E9A 8BB6 7109 54BD 9609 70DF 6DF9 76D0 4E25 7814
8712 5CA9 5EF6 8A00 989C 960E 708E 6CBF 5944 63A9
773C 884D 6F14 8273 5830 71D5 538C 781A 96C1 5501
5F66 7130 5BB4 8C1A 9A8C 6B83 592E 9E2F 79E7 6768
626C 4F6F 75A1 7F8A 6D0B 9633 6C27 4EF0 75D2 517B
6837 6F3E 9080 8170 5996 7476 6447 5C27 9065 7A91
8C23 59DA 54AC 8200 836F 8981 8000 6930 564E 8036
7237 91CE 51B6 4E5F 9875 6396 4E1A 53F6 66F3 814B
591C 6DB2 4E00 58F9 533B 63D6 94F1 4F9D 4F0A 8863
9890 5937 9057 79FB 4EEA 80F0 7591 6C82 5B9C 59E8
5F5D 6905 8681 501A 5DF2 4E59 77E3 4EE5 827A 6291
6613 9091 5C79 4EBF 5F79 81C6 9038 8084 75AB 4EA6
88D4 610F 6BC5 5FC6 4E49 76CA 6EA2 8BE3 8BAE 8C0A
8BD1 5F02 7FFC 7FCC 7ECE 8335 836B 56E0 6BB7 97F3
9634 59FB 541F 94F6 6DEB 5BC5 996E 5C39 5F15 9690
5370 82F1 6A31 5A74 9E70 5E94 7F28 83B9 8424 8425
8367 8747 8FCE 8D62 76C8 5F71 9896 786C 6620 54DF
62E5 4F63 81C3 75C8 5EB8 96CD 8E0A 86F9 548F 6CF3
6D8C 6C38 607F 52C7 7528 5E7D 4F18 60A0 5FE7 5C24
7531 90AE 94C0 72B9 6CB9 6E38 9149 6709 53CB 53F3
4F51 91C9 8BF1 53C8 5E7C 8FC2 6DE4 4E8E 76C2 6986
865E 611A 8206 4F59 4FDE 903E 9C7C 6109 6E1D 6E14
9685 4E88 5A31 96E8 4E0E 5C7F 79B9 5B87 8BED 7FBD
7389 57DF 828B 90C1 5401 9047 55BB 5CEA 5FA1 6108
6B32 72F1 80B2 8A89 6D74 5BD3 88D5 9884 8C6B 9A6D
9E33 6E0A 51A4 5143 57A3 8881 539F 63F4 8F95 56ED
5458 5706 733F 6E90 7F18 8FDC 82D1 613F 6028 9662
66F0 7EA6 8D8A 8DC3 94A5 5CB3 7CA4 6708 60A6 9605
8018 4E91 90E7 5300 9668 5141 8FD0 8574 915D 6655
97F5 5B55 531D 7838 6742 683D 54C9 707E 5BB0 8F7D
518D 5728 54B1 6512 6682 8D5E 8D43 810F 846C 906D
7CDF 51FF 85FB 67A3 65E9 6FA1 86A4 8E81 566A 9020
7682 7076 71E5 8D23 62E9 5219 6CFD 8D3C 600E 589E
618E 66FE 8D60 624E 55B3 6E23 672D 8F67 94E1 95F8
7728 6805 69A8 548B 4E4D 70B8 8BC8 6458 658B 5B85
7A84 503A 5BE8 77BB 6BE1 8A79 7C98 6CBE 76CF 65A9
8F97 5D2D 5C55 8638 6808 5360 6218 7AD9 6E5B 7EFD
6A1F 7AE0 5F70 6F33 5F20 638C 6DA8 6756 4E08 5E10
8D26 4ED7 80C0 7634 969C 62DB 662D 627E 6CBC 8D75
7167 7F69 5146 8087 53EC 906E 6298 54F2 86F0 8F99
8005 9517 8517 8FD9 6D59 73CD 659F 771F 7504 7827
81FB 8D1E 9488 4FA6 6795 75B9 8BCA 9707 632F 9547
9635 84B8 6323 7741 5F81 72F0 4E89 6014 6574 62EF
6B63 653F 5E27 75C7 90D1 8BC1 829D 679D 652F 5431
8718 77E5 80A2 8102 6C41 4E4B 7EC7 804C 76F4 690D
6B96 6267 503C 4F84 5740 6307 6B62 8DBE 53EA 65E8
7EB8 5FD7 631A 63B7 81F3 81F4 7F6E 5E1C 5CD9 5236
667A 79E9 7A1A 8D28 7099 75D4 6EDE 6CBB 7A92 4E2D
76C5 5FE0 949F 8877 7EC8 79CD 80BF 91CD 4EF2 4F17
821F 5468 5DDE 6D32 8BCC 7CA5 8F74 8098 5E1A 5492
76B1 5B99 663C 9AA4 73E0 682A 86DB 6731 732A 8BF8
8BDB 9010 7AF9 70DB 716E 62C4 77A9 5631 4E3B 8457
67F1 52A9 86C0 8D2E 94F8 7B51 4F4F 6CE8 795D 9A7B
6293 722A 62FD 4E13 7816 8F6C 64B0 8D5A 7BC6 6869
5E84 88C5 5986 649E 58EE 72B6 690E 9525 8FFD 8D58
5760 7F00 8C06 51C6 6349 62D9 5353 684C 7422 8301
914C 5544 7740 707C 6D4A 5179 54A8 8D44 59FF 6ECB
6DC4 5B5C 7D2B 4ED4 7C7D 6ED3 5B50 81EA 6E0D 5B57
9B03 68D5 8E2A 5B97 7EFC 603B 7EB5 90B9 8D70 594F
63CD 79DF 8DB3 5352 65CF 7956 8BC5 963B 7EC4 94BB
7E82 5634 9189 6700 7F6A 5C0A 9075 6628 5DE6 4F50
67DE 505A 4F5C 5750 5EA7 E2D8 E2D9 E2DA E2DB E2DC
4E8D 4E0C 5140 4E10 5EFF 5345 4E15 4E98 4E1E 9B32
5B6C 5669 4E28 79BA 4E3F 5315 4E47 592D 723B 536E
6C10 56DF 80E4 9997 6BD3 777E 9F17 4E36 4E9F 9F10
4E5C 4E69 4E93 8288 5B5B 556C 560F 4EC4 538D 539D
53A3 53A5 53AE 9765 8D5D 531A 53F5 5326 532E 533E
8D5C 5366 5363 5202 5208 520E 522D 5233 523F 5240
524C 525E 5261 525C 84AF 527D 5282 5281 5290 5293
5182 7F54 4EBB 4EC3 4EC9 4EC2 4EE8 4EE1 4EEB 4EDE
4F1B 4EF3 4F22 4F64 4EF5 4F25 4F27 4F09 4F2B 4F5E
4F67 6538 4F5A 4F5D 4F5F 4F57 4F32 4F3D 4F76 4F74
4F91 4F89 4F83 4F8F 4F7E 4F7B 4FAA 4F7C 4FAC 4F94
4FE6 4FE8 4FEA 4FC5 4FDA 4FE3 4FDC 4FD1 4FDF 4FF8
5029 504C 4FF3 502C 500F 502E 502D 4FFE 501C 500C
5025 5028 507E 5043 5055 5048 504E 506C 507B 50A5
50A7 50A9 50BA 50D6 5106 50ED 50EC 50E6 50EE 5107
510B 4EDD 6C3D 4F58 4F65 4FCE 9FA0 6C46 7C74 516E
5DFD 9EC9 9998 5181 5914 52F9 530D 8A07 5310 51EB
5919 5155 4EA0 5156 4EB3 886E 88A4 4EB5 8114 88D2
7980 5B34 8803 7FB8 51AB 51B1 51BD 51BC 51C7 5196
51A2 51A5 8BA0 8BA6 8BA7 8BAA 8BB4 8BB5 8BB7 8BC2
8BC3 8BCB 8BCF 8BCE 8BD2 8BD3 8BD4 8BD6 8BD8 8BD9
8BDC 8BDF 8BE0 8BE4 8BE8 8BE9 8BEE 8BF0 8BF3 8BF6
8BF9 8BFC 8BFF 8C00 8C02 8C04 8C07 8C0C 8C0F 8C11
8C12 8C14 8C15 8C16 8C19 8C1B 8C18 8C1D 8C1F 8C20
8C21 8C25 8C27 8C2A 8C2B 8C2E 8C2F 8C32 8C33 8C35
8C36 5369 537A 961D 9622 9621 9631 962A 963D 963C
9642 9649 9654 965F 9667 966C 9672 9674 9688 968D
9697 96B0 9097 909B 909D 9099 90AC 90A1 90B4 90B3
90B6 90BA 90B8 90B0 90CF 90C5 90BE 90D0 90C4 90C7
90D3 90E6 90E2 90DC 90D7 90DB 90EB 90EF 90FE 9104
9122 911E 9123 9131 912F 9139 9143 9146 520D 5942
52A2 52AC 52AD 52BE 54FF 52D0 52D6 52F0 53DF 71EE
77CD 5EF4 51F5 51FC 9B2F 53B6 5F01 755A 5DEF 574C
57A9 57A1 587E 58BC 58C5 58D1 5729 572C 572A 5733
5739 572E 572F 575C 573B 5742 5769 5785 576B 5786
577C 577B 5768 576D 5776 5773 57AD 57A4 578C 57B2
57CF 57A7 57B4 5793 57A0 57D5 57D8 57DA 57D9 57D2
57B8 57F4 57EF 57F8 57E4 57DD 580B 580D 57FD 57ED
5800 581E 5819 5844 5820 5865 586C 5881 5889 589A
5880 99A8 9F19 61FF 8279 827D 827F 828F 828A 82A8
8284 828E 8291 8297 8299 82AB 82B8 82BE 82B0 82C8
82CA 82E3 8298 82B7 82AE 82CB 82CC 82C1 82A9 82B4
82A1 82AA 829F 82C4 82CE 82A4 82E1 8309 82F7 82E4
830F 8307 82DC 82F4 82D2 82D8 830C 82FB 82D3 8311
831A 8306 8314 8315 82E0 82D5 831C 8351 835B 835C
8308 8392 833C 8334 8331 839B 835E 832F 834F 8347
8343 835F 8340 8317 8360 832D 833A 8333 8366 8365
8368 831B 8369 836C 836A 836D 836E 83B0 8378 83B3
83B4 83A0 83AA 8393 839C 8385 837C 83B6 83A9 837D
83B8 837B 8398 839E 83A8 83BA 83BC 83C1 8401 83E5
83D8 5807 8418 840B 83DD 83FD 83D6 841C 8438 8411
8406 83D4 83DF 840F 8403 83F8 83F9 83EA 83C5 83C0
8426 83F0 83E1 845C 8451 845A 8459 8473 8487 8488
847A 8489 8478 843C 8446 8469 8476 848C 848E 8431
846D 84C1 84CD 84D0 84E6 84BD 84D3 84CA 84BF 84BA
84E0 84A1 84B9 84B4 8497 84E5 84E3 850C 750D 8538
84F0 8539 851F 853A 8556 853B 84FF 84FC 8559 8548
8568 8564 855E 857A 77A2 8543 8572 857B 85A4 85A8
8587 858F 8579 85AE 859C 8585 85B9 85B7 85B0 85D3
85C1 85DC 85FF 8627 8605 8629 8616 863C 5EFE 5F08
593C 5941 8037 5955 595A 5958 530F 5C22 5C25 5C2C
5C34 624C 626A 629F 62BB 62CA 62DA 62D7 62EE 6322
62F6 6339 634B 6343 63AD 63F6 6371 637A 638E 63B4
636D 63AC 638A 6369 63AE 63BC 63F2 63F8 63E0 63FF
63C4 63DE 63CE 6452 63C6 63BE 6445 6441 640B 641B
6420 640C 6426 6421 645E 6484 646D 6496 647A 64B7
64B8 6499 64BA 64C0 64D0 64D7 64E4 64E2 6509 6525
652E 5F0B 5FD2 7519 5F11 535F 53F1 53FD 53E9 53E8
53FB 5412 5416 5406 544B 5452 5453 5454 5456 5443
5421 5457 5459 5423 5432 5482 5494 5477 5471 5464
549A 549B 5484 5476 5466 549D 54D0 54AD 54C2 54B4
54D2 54A7 54A6 54D3 54D4 5472 54A3 54D5 54BB 54BF
54CC 54D9 54DA 54DC 54A9 54AA 54A4 54DD 54CF 54DE
551B 54E7 5520 54FD 5514 54F3 5522 5523 550F 5511
5527 552A 5567 558F 55B5 5549 556D 5541 5555 553F
5550 553C 5537 5556 5575 5576 5577 5533 5530 555C
558B 55D2 5583 55B1 55B9 5588 5581 559F 557E 55D6
5591 557B 55DF 55BD 55BE 5594 5599 55EA 55F7 55C9
561F 55D1 55EB 55EC 55D4 55E6 55DD 55C4 55EF 55E5
55F2 55F3 55CC 55CD 55E8 55F5 55E4 8F94 561E 5608
560C 5601 5624 5623 55FE 5600 5627 562D 5658 5639
5657 562C 564D 5662 5659 565C 564C 5654 5686 5664
5671 566B 567B 567C 5685 5693 56AF 56D4 56D7 56DD
56E1 56F5 56EB 56F9 56FF 5704 570A 5709 571C 5E0F
5E19 5E14 5E11 5E31 5E3B 5E3C 5E37 5E44 5E54 5E5B
5E5E 5E61 5C8C 5C7A 5C8D 5C90 5C96 5C88 5C98 5C99
5C91 5C9A 5C9C 5CB5 5CA2 5CBD 5CAC 5CAB 5CB1 5CA3
5CC1 5CB7 5CC4 5CD2 5CE4 5CCB 5CE5 5D02 5D03 5D27
5D26 5D2E 5D24 5D1E 5D06 5D1B 5D58 5D3E 5D34 5D3D
5D6C 5D5B 5D6F 5D5D 5D6B 5D4B 5D4A 5D69 5D74 5D82
5D99 5D9D 8C73 5DB7 5DC5 5F73 5F77 5F82 5F87 5F89
5F8C 5F95 5F99 5F9C 5FA8 5FAD 5FB5 5FBC 8862 5F61
72AD 72B0 72B4 72B7 72B8 72C3 72C1 72CE 72CD 72D2
72E8 72EF 72E9 72F2 72F4 72F7 7301 72F3 7303 72FA
72FB 7317 7313 7321 730A 731E 731D 7315 7322 7339
7325 732C 7338 7331 7350 734D 7357 7360 736C 736F
737E 821B 5925 98E7 5924 5902 9963 9967 9968 9969
996A 996B 996C 9974 9977 997D 9980 9984 9987 998A
998D 9990 9991 9993 9994 9995 5E80 5E91 5E8B 5E96
5EA5 5EA0 5EB9 5EB5 5EBE 5EB3 8D53 5ED2 5ED1 5EDB
5EE8 5EEA 81BA 5FC4 5FC9 5FD6 5FCF 6003 5FEE 6004
5FE1 5FE4 5FFE 6005 6006 5FEA 5FED 5FF8 6019 6035
6026 601B 600F 600D 6029 602B 600A 603F 6021 6078
6079 607B 607A 6042 606A 607D 6096 609A 60AD 609D
6083 6092 608C 609B 60EC 60BB 60B1 60DD 60D8 60C6
60DA 60B4 6120 6126 6115 6123 60F4 6100 610E 612B
614A 6175 61AC 6194 61A7 61B7 61D4 61F5 5FDD 96B3
95E9 95EB 95F1 95F3 95F5 95F6 95FC 95FE 9603 9604
9606 9608 960A 960B 960C 960D 960F 9612 9615 9616
9617 9619 961A 4E2C 723F 6215 6C35 6C54 6C5C 6C4A
6CA3 6C85 6C90 6C94 6C8C 6C68 6C69 6C74 6C76 6C86
6CA9 6CD0 6CD4 6CAD 6CF7 6CF8 6CF1 6CD7 6CB2 6CE0
6CD6 6CFA 6CEB 6CEE 6CB1 6CD3 6CEF 6CFE 6D39 6D27
6D0C 6D43 6D48 6D07 6D04 6D19 6D0E 6D2B 6D4D 6D2E
6D35 6D1A 6D4F 6D52 6D54 6D33 6D91 6D6F 6D9E 6DA0
6D5E 6D93 6D94 6D5C 6D60 6D7C 6D63 6E1A 6DC7 6DC5
6DDE 6E0E 6DBF 6DE0 6E11 6DE6 6DDD 6DD9 6E16 6DAB
6E0C 6DAE 6E2B 6E6E 6E4E 6E6B 6EB2 6E5F 6E86 6E53
6E54 6E32 6E25 6E44 6EDF 6EB1 6E98 6EE0 6F2D 6EE2
6EA5 6EA7 6EBD 6EBB 6EB7 6ED7 6EB4 6ECF 6E8F 6EC2
6E9F 6F62 6F46 6F47 6F24 6F15 6EF9 6F2F 6F36 6F4B
6F74 6F2A 6F09 6F29 6F89 6F8D 6F8C 6F78 6F72 6F7C
6F7A 6FD1 6FC9 6FA7 6FB9 6FB6 6FC2 6FE1 6FEE 6FDE
6FE0 6FEF 701A 7023 701B 7039 7035 704F 705E 5B80
5B84 5B95 5B93 5BA5 5BB8 752F 9A9E 6434 5BE4 5BEE
8930 5BF0 8E47 8B07 8FB6 8FD3 8FD5 8FE5 8FEE 8FE4
8FE9 8FE6 8FF3 8FE8 9005 9004 900B 9026 9011 900D
9016 9021 9035 9036 902D 902F 9044 9051 9052 9050
9068 9058 9062 905B 66B9 9074 907D 9082 9088 9083
908B 5F50 5F57 5F56 5F58 5C3B 54AB 5C50 5C59 5B71
5C63 5C66 7FBC 5F2A 5F29 5F2D 8274 5F3C 9B3B 5C6E
5981 5983 598D 59A9 59AA 59A3 5997 59CA 59AB 599E
59A4 59D2 59B2 59AF 59D7 59BE 5A05 5A06 59DD 5A08
59E3 59D8 59F9 5A0C 5A09 5A32 5A34 5A11 5A23 5A13
5A40 5A67 5A4A 5A55 5A3C 5A62 5A75 80EC 5AAA 5A9B
5A77 5A7A 5ABE 5AEB 5AB2 5AD2 5AD4 5AB8 5AE0 5AE3
5AF1 5AD6 5AE6 5AD8 5ADC 5B09 5B17 5B16 5B32 5B37
5B40 5C15 5C1C 5B5A 5B65 5B73 5B51 5B53 5B62 9A75
9A77 9A78 9A7A 9A7F 9A7D 9A80 9A81 9A85 9A88 9A8A
9A90 9A92 9A93 9A96 9A98 9A9B 9A9C 9A9D 9A9F 9AA0
9AA2 9AA3 9AA5 9AA7 7E9F 7EA1 7EA3 7EA5 7EA8 7EA9
7EAD 7EB0 7EBE 7EC0 7EC1 7EC2 7EC9 7ECB 7ECC 7ED0
7ED4 7ED7 7EDB 7EE0 7EE1 7EE8 7EEB 7EEE 7EEF 7EF1
7EF2 7F0D 7EF6 7EFA 7EFB 7EFE 7F01 7F02 7F03 7F07
7F08 7F0B 7F0C 7F0F 7F11 7F12 7F17 7F19 7F1C 7F1B
7F1F 7F21 7F22 7F23 7F24 7F25 7F26 7F27 7F2A 7F2B
7F2C 7F2D 7F2F 7F30 7F31 7F32 7F33 7F35 5E7A 757F
5DDB 753E 9095 738E 7391 73AE 73A2 739F 73CF 73C2
73D1 73B7 73B3 73C0 73C9 73C8 73E5 73D9 987C 740A
73E9 73E7 73DE 73BA 73F2 740F 742A 745B 7426 7425
7428 7430 742E 742C 741B 741A 7441 745C 7457 7455
7459 7477 746D 747E 749C 748E 7480 7481 7487 748B
749E 74A8 74A9 7490 74A7 74D2 74BA 97EA 97EB 97EC
674C 6753 675E 6748 6769 67A5 6787 676A 6773 6798
67A7 6775 67A8 679E 67AD 678B 6777 677C 67F0 6809
67D8 680A 67E9 67B0 680C 67D9 67B5 67DA 67B3 67DD
6800 67C3 67B8 67E2 680E 67C1 67FD 6832 6833 6860
6861 684E 6862 6844 6864 6883 681D 6855 6866 6841
6867 6840 683E 684A 6849 6829 68B5 688F 6874 6877
6893 686B 68C2 696E 68FC 691F 6920 68F9 6924 68F0
690B 6901 6957 68E3 6910 6971 6939 6960 6942 695D
6984 696B 6980 6998 6978 6934 69CC 6987 6988 69CE
6989 6966 6963 6979 699B 69A7 69BB 69AB 69AD 69D4
69B1 69C1 69CA 69DF 6995 69E0 698D 69FF 6A2F 69ED
6A17 6A18 6A65 69F2 6A44 6A3E 6AA0 6A50 6A5B 6A35
6A8E 6A79 6A3D 6A28 6A58 6A7C 6A91 6A90 6AA9 6A97
6AAB 7337 7352 6B81 6B82 6B87 6B84 6B92 6B93 6B8D
6B9A 6B9B 6BA1 6BAA 8F6B 8F6D 8F71 8F72 8F73 8F75
8F76 8F78 8F77 8F79 8F7A 8F7C 8F7E 8F81 8F82 8F84
8F87 8F8B 8F8D 8F8E 8F8F 8F98 8F9A 8ECE 620B 6217
621B 621F 6222 6221 6225 6224 622C 81E7 74EF 74F4
74FF 750F 7511 7513 6534 65EE 65EF 65F0 660A 6619
6772 6603 6615 6600 7085 66F7 661D 6634 6631 6636
6635 8006 665F 6654 6641 664F 6656 6661 6657 6677
6684 668C 66A7 669D 66BE 66DB 66DC 66E6 66E9 8D32
8D33 8D36 8D3B 8D3D 8D40 8D45 8D46 8D48 8D49 8D47
8D4D 8D55 8D59 89C7 89CA 89CB 89CC 89CE 89CF 89D0
89D1 726E 729F 725D 7266 726F 727E 727F 7284 728B
728D 728F 7292 6308 6332 63B0 643F 64D8 8004 6BEA
6BF3 6BFD 6BF5 6BF9 6C05 6C07 6C06 6C0D 6C15 6C18
6C19 6C1A 6C21 6C29 6C24 6C2A 6C32 6535 6555 656B
724D 7252 7256 7230 8662 5216 809F 809C 8093 80BC
670A 80BD 80B1 80AB 80AD 80B4 80B7 80E7 80E8 80E9
80EA 80DB 80C2 80C4 80D9 80CD 80D7 6710 80DD 80EB
80F1 80F4 80ED 810D 810E 80F2 80FC 6715 8112 8C5A
8136 811E 812C 8118 8132 8148 814C 8153 8174 8159
815A 8171 8160 8169 817C 817D 816D 8167 584D 5AB5
8188 8182 8191 6ED5 81A3 81AA 81CC 6726 81CA 81BB
81C1 81A6 6B24 6B37 6B39 6B43 6B46 6B59 98D1 98D2
98D3 98D5 98D9 98DA 6BB3 5F40 6BC2 89F3 6590 9F51
6593 65BC 65C6 65C4 65C3 65CC 65CE 65D2 65D6 7080
709C 7096 709D 70BB 70C0 70B7 70AB 70B1 70E8 70CA
7110 7113 7116 712F 7131 7173 715C 7168 7145 7172
714A 7178 717A 7198 71B3 71B5 71A8 71A0 71E0 71D4
71E7 71F9 721D 7228 706C 7118 7166 71B9 623E 623D
6243 6248 6249 793B 7940 7946 7949 795B 795C 7953
795A 7962 7957 7960 796F 7967 797A 7985 798A 799A
79A7 79B3 5FD1 5FD0 603C 605D 605A 6067 6041 6059
6063 60AB 6106 610D 615D 61A9 619D 61CB 61D1 6206
8080 807F 6C93 6CF6 6DFC 77F6 77F8 7800 7809 7817
7818 7811 65AB 782D 781C 781D 7839 783A 783B 781F
783C 7825 782C 7823 7829 784E 786D 7856 7857 7826
7850 7847 784C 786A 789B 7893 789A 7887 789C 78A1
78A3 78B2 78B9 78A5 78D4 78D9 78C9 78EC 78F2 7905
78F4 7913 7924 791E 7934 9F9B 9EF9 9EFB 9EFC 76F1
7704 770D 76F9 7707 7708 771A 7722 7719 772D 7726
7735 7738 7750 7751 7747 7743 775A 7768 7762 7765
777F 778D 777D 7780 778C 7791 779F 77A0 77B0 77B5
77BD 753A 7540 754E 754B 7548 755B 7572 7579 7583
7F58 7F61 7F5F 8A48 7F68 7F74 7F71 7F79 7F81 7F7E
76CD 76E5 8832 9485 9486 9487 948B 948A 948C 948D
948F 9490 9494 9497 9495 949A 949B 949C 94A3 94A4
94AB 94AA 94AD 94AC 94AF 94B0 94B2 94B4 94B6 94B7
94B8 94B9 94BA 94BC 94BD 94BF 94C4 94C8 94C9 94CA
94CB 94CC 94CD 94CE 94D0 94D1 94D2 94D5 94D6 94D7
94D9 94D8 94DB 94DE 94DF 94E0 94E2 94E4 94E5 94E7
94E8 94EA 94E9 94EB 94EE 94EF 94F3 94F4 94F5 94F7
94F9 94FC 94FD 94FF 9503 9502 9506 9507 9509 950A
950D 950E 950F 9512 9513 9514 9515 9516 9518 951B
951D 951E 951F 9522 952A 952B 9529 952C 9531 9532
9534 9536 9537 9538 953C 953E 953F 9542 9535 9544
9545 9546 9549 954C 954E 954F 9552 9553 9554 9556
9557 9558 9559 955B 955E 955F 955D 9561 9562 9564
9565 9566 9567 9568 9569 956A 956B 956C 956F 9571
9572 9573 953A 77E7 77EC 96C9 79D5 79ED 79E3 79EB
7A06 5D47 7A03 7A02 7A1E 7A14 7A39 7A37 7A51 9ECF
99A5 7A70 7688 768E 7693 7699 76A4 74DE 74E0 752C
9E20 9E22 9E28 9E29 9E2A 9E2B 9E2C 9E32 9E31 9E36
9E38 9E37 9E39 9E3A 9E3E 9E41 9E42 9E44 9E46 9E47
9E48 9E49 9E4B 9E4C 9E4E 9E51 9E55 9E57 9E5A 9E5B
9E5C 9E5E 9E63 9E66 9E67 9E68 9E69 9E6A 9E6B 9E6C
9E71 9E6D 9E73 7592 7594 7596 75A0 759D 75AC 75A3
75B3 75B4 75B8 75C4 75B1 75B0 75C3 75C2 75D6 75CD
75E3 75E8 75E6 75E4 75EB 75E7 7603 75F1 75FC 75FF
7610 7600 7605 760C 7617 760A 7625 7618 7615 7619
761B 763C 7622 7620 7640 762D 7630 763F 7635 7643
763E 7633 764D 765E 7654 765C 7656 766B 766F 7FCA
7AE6 7A78 7A79 7A80 7A86 7A88 7A95 7AA6 7AA0 7AAC
7AA8 7AAD 7AB3 8864 8869 8872 887D 887F 8882 88A2
88C6 88B7 88BC 88C9 88E2 88CE 88E3 88E5 88F1 891A
88FC 88E8 88FE 88F0 8921 8919 8913 891B 890A 8934
892B 8936 8941 8966 897B 758B 80E5 76B2 76B4 77DC
8012 8014 8016 801C 8020 8022 8025 8026 8027 8029
8028 8031 800B 8035 8043 8046 804D 8052 8069 8071
8983 9878 9880 9883 9889 988C 988D 988F 9894 989A
989B 989E 989F 98A1 98A2 98A5 98A6 864D 8654 866C
866E 867F 867A 867C 867B 86A8 868D 868B 86AC 869D
86A7 86A3 86AA 8693 86A9 86B6 86C4 86B5 86CE 86B0
86BA 86B1 86AF 86C9 86CF 86B4 86E9 86F1 86F2 86ED
86F3 86D0 8713 86DE 86F4 86DF 86D8 86D1 8703 8707
86F8 8708 870A 870D 8709 8723 873B 871E 8725 872E
871A 873E 8748 8734 8731 8729 8737 873F 8782 8722
877D 877E 877B 8760 8770 874C 876E 878B 8753 8763
877C 8764 8759 8765 8793 87AF 87A8 87D2 87C6 8788
8785 87AD 8797 8783 87AB 87E5 87AC 87B5 87B3 87CB
87D3 87BD 87D1 87C0 87CA 87DB 87EA 87E0 87EE 8816
8813 87FE 880A 881B 8821 8839 883C 7F36 7F42 7F44
7F45 8210 7AFA 7AFD 7B08 7B03 7B04 7B15 7B0A 7B2B
7B0F 7B47 7B38 7B2A 7B19 7B2E 7B31 7B20 7B25 7B24
7B33 7B3E 7B1E 7B58 7B5A 7B45 7B75 7B4C 7B5D 7B60
7B6E 7B7B 7B62 7B72 7B71 7B90 7BA6 7BA7 7BB8 7BAC
7B9D 7BA8 7B85 7BAA 7B9C 7BA2 7BAB 7BB4 7BD1 7BC1
7BCC 7BDD 7BDA 7BE5 7BE6 7BEA 7C0C 7BFE 7BFC 7C0F
7C16 7C0B 7C1F 7C2A 7C26 7C38 7C41 7C40 81FE 8201
8202 8204 81EC 8844 8221 8222 8223 822D 822F 8228
822B 8238 823B 8233 8234 823E 8244 8249 824B 824F
825A 825F 8268 887E 8885 8888 88D8 88DF 895E 7F9D
7F9F 7FA7 7FAF 7FB0 7FB2 7C7C 6549 7C91 7C9D 7C9C
7C9E 7CA2 7CB2 7CBC 7CBD 7CC1 7CC7 7CCC 7CCD 7CC8
7CC5 7CD7 7CE8 826E 66A8 7FBF 7FCE 7FD5 7FE5 7FE1
7FE6 7FE9 7FEE 7FF3 7CF8 7D77 7DA6 7DAE 7E47 7E9B
9EB8 9EB4 8D73 8D84 8D94 8D91 8DB1 8D67 8D6D 8C47
8C49 914A 9150 914E 914F 9164 9162 9161 9170 9169
916F 917D 917E 9172 9174 9179 918C 9185 9190 918D
9191 91A2 91A3 91AA 91AD 91AE 91AF 91B5 91B4 91BA
8C55 9E7E 8DB8 8DEB 8E05 8E59 8E69 8DB5 8DBF 8DBC
8DBA 8DC4 8DD6 8DD7 8DDA 8DDE 8DCE 8DCF 8DDB 8DC6
8DEC 8DF7 8DF8 8DE3 8DF9 8DFB 8DE4 8E09 8DFD 8E14
8E1D 8E1F 8E2C 8E2E 8E23 8E2F 8E3A 8E40 8E39 8E35
8E3D 8E31 8E49 8E41 8E42 8E51 8E52 8E4A 8E70 8E76
8E7C 8E6F 8E74 8E85 8E8F 8E94 8E90 8E9C 8E9E 8C78
8C82 8C8A 8C85 8C98 8C94 659B 89D6 89DE 89DA 89DC
89E5 89EB 89EF 8A3E 8B26 9753 96E9 96F3 96EF 9706
9701 9708 970F 970E 972A 972D 9730 973E 9F80 9F83
9F85 9F86 9F87 9F88 9F89 9F8A 9F8C 9EFE 9F0B 9F0D
96B9 96BC 96BD 96CE 96D2 77BF 96E0 928E 92AE 92C8
933E 936A 93CA 938F 943E 946B 9C7F 9C82 9C85 9C86
9C87 9C88 7A23 9C8B 9C8E 9C90 9C91 9C92 9C94 9C95
9C9A 9C9B 9C9E 9C9F 9CA0 9CA1 9CA2 9CA3 9CA5 9CA6
9CA7 9CA8 9CA9 9CAB 9CAD 9CAE 9CB0 9CB1 9CB2 9CB3
9CB4 9CB5 9CB6 9CB7 9CBA 9CBB 9CBC 9CBD 9CC4 9CC5
9CC6 9CC7 9CCA 9CCB 9CCC 9CCD 9CCE 9CCF 9CD0 9CD3
9CD4 9CD5 9CD7 9CD8 9CD9 9CDC 9CDD 9CDF 9CE2 977C
9785 9791 9792 9794 97AF 97AB 97A3 97B2 97B4 9AB1
9AB0 9AB7 9E58 9AB6 9ABA 9ABC 9AC1 9AC0 9AC5 9AC2
9ACB 9ACC 9AD1 9B45 9B43 9B47 9B49 9B48 9B4D 9B51
98E8 990D 992E 9955 9954 9ADF 9AE1 9AE6 9AEF 9AEB
9AFB 9AED 9AF9 9B08 9B0F 9B13 9B1F 9B23 9EBD 9EBE
7E3B 9E82 9E87 9E88 9E8B 9E92 93D6 9E9D 9E9F 9EDB
9EDC 9EDD 9EE0 9EDF 9EE2 9EE9 9EE7 9EE5 9EEA 9EEF
9F22 9F2C 9F2F 9F39 9F37 9F3D 9F3E 9F44
__END__

=head1 NAME

Unicode::Collate::CJK::GB2312 - weighting CJK Unified Ideographs
for Unicode::Collate

=head1 SYNOPSIS

    use Unicode::Collate;
    use Unicode::Collate::CJK::GB2312;

    my $collator = Unicode::Collate->new(
        overrideCJK => \&Unicode::Collate::CJK::GB2312::weightGB2312
    );

=head1 DESCRIPTION

C<Unicode::Collate::CJK::GB2312> provides C<weightGB2312()>,
that is adequate for C<overrideCJK> of C<Unicode::Collate>
and makes tailoring of CJK Unified Ideographs in the order
of CLDR's gb2312han ordering.

=head1 CAVEAT

The gb2312han ordering includes 5 code points in private use area
(E2D8..E2DC), that can't utilize C<weightGB2312()> for collation.
For them, use C<entry> instead.

=head1 SEE ALSO

=over 4

=item CLDR - Unicode Common Locale Data Repository

L<http://cldr.unicode.org/>

=item Unicode Locale Data Markup Language (LDML) - UTS #35

L<http://www.unicode.org/reports/tr35/>

=item L<Unicode::Collate>

=item L<Unicode::Collate::Locale>

=back

=cut
