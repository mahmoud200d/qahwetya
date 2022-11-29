import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../cubit/cubit.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = Qahwety.get(context);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
      child: Column(
        children: [
          Image.asset('assets/images/Profile picture.png'),
          SizedBox(
            height: 10,
          ),
          Text(
            'Tasun Prasad',
            style: TextStyle(
              fontFamily: 'Gotham',
              fontSize: 27,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w500,
              height: 1.3703703703703705,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SvgPicture.string(
            '<svg viewBox="152.0 281.3 72.3 12.4" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#ffbb3b" /><stop offset="1.0" stop-color="#ffa90a" /></linearGradient></defs><path transform="translate(183.7, 292.0)" d="M -31.69499778747559 -10.46956825256348 L -27.23346710205078 -10.46956825256348 C -26.56367111206055 -10.46956825256348 -25.9534740447998 -10.3815860748291 -25.40287780761719 -10.20562267303467 C -24.85228157043457 -10.02965927124023 -24.38115310668945 -9.779905319213867 -23.98949241638184 -9.456357955932617 C -23.59782981872559 -9.132811546325684 -23.29698753356934 -8.738312721252441 -23.08696746826172 -8.272859573364258 C -22.8769474029541 -7.807407379150391 -22.77193450927734 -7.279516220092773 -22.77193450927734 -6.689186096191406 L -22.77193450927734 -6.655129432678223 C -22.77193450927734 -6.008037090301514 -22.89681243896484 -5.443249702453613 -23.14657020568848 -4.960769176483154 C -23.39632415771484 -4.478287696838379 -23.73406219482422 -4.072435855865479 -24.15978050231934 -3.743214130401611 C -24.58549880981445 -3.41399097442627 -25.0821704864502 -3.167074680328369 -25.64979553222656 -3.002463340759277 C -26.2174186706543 -2.837852001190186 -26.81910133361816 -2.755546092987061 -27.45484161376953 -2.755546092987061 L -30.34972953796387 -2.755546092987061 L -30.34972953796387 1.450553774833679 L -31.69499778747559 1.450553774833679 L -31.69499778747559 -10.46956825256348 Z M -27.40375518798828 -3.981616020202637 C -26.91559791564941 -3.981616020202637 -26.47001266479492 -4.044054985046387 -26.06699752807617 -4.168932437896729 C -25.66398429870605 -4.29380989074707 -25.31773376464844 -4.472611427307129 -25.02824592590332 -4.705338001251221 C -24.7387580871582 -4.938064098358154 -24.51738166809082 -5.213361740112305 -24.36412239074707 -5.531231880187988 C -24.21086311340332 -5.849101543426514 -24.13423538208008 -6.206705570220947 -24.13423538208008 -6.604043006896973 L -24.13423538208008 -6.638100624084473 C -24.13423538208008 -7.489538192749023 -24.42656135559082 -8.133791923522949 -25.01121711730957 -8.570863723754883 C -25.59587097167969 -9.007933616638184 -26.37067604064941 -9.226469993591309 -27.33563995361328 -9.226469993591309 L -30.34972953796387 -9.226469993591309 L -30.34972953796387 -3.981616020202637 L -27.40375518798828 -3.981616020202637 Z M -20.54117012023926 -7.353307723999023 L -19.22995758056641 -7.353307723999023 L -19.22995758056641 -5.054427146911621 C -19.07102012634277 -5.417707443237305 -18.87235260009766 -5.75260591506958 -18.63395118713379 -6.059123516082764 C -18.39554786682129 -6.365640640258789 -18.12308883666992 -6.629586219787598 -17.81657028198242 -6.850959777832031 C -17.51005172729492 -7.072333335876465 -17.1751537322998 -7.23978328704834 -16.81187438964844 -7.353307723999023 C -16.44859504699707 -7.466833114624023 -16.05693435668945 -7.517919540405273 -15.63689041137695 -7.506567001342773 L -15.63689041137695 -6.093180656433105 L -15.73906326293945 -6.093180656433105 C -16.21586799621582 -6.093180656433105 -16.6671314239502 -6.008037090301514 -17.09284973144531 -5.837749481201172 C -17.51856803894043 -5.66746187210083 -17.89036178588867 -5.412030220031738 -18.20823287963867 -5.071455478668213 C -18.52610397338867 -4.730880737304688 -18.77585792541504 -4.308000087738037 -18.95749664306641 -3.802814483642578 C -19.13913726806641 -3.297627925872803 -19.22995758056641 -2.715812683105469 -19.22995758056641 -2.05736780166626 L -19.22995758056641 1.450553774833679 L -20.54117012023926 1.450553774833679 L -20.54117012023926 -7.353307723999023 Z M -10.17066383361816 1.654898762702942 C -10.77234649658203 1.654898762702942 -11.3399715423584 1.544211864471436 -11.87353897094727 1.322838187217712 C -12.40710639953613 1.101464509963989 -12.87255859375 0.78927081823349 -13.2698974609375 0.3862571716308594 C -13.66723442077637 -0.01675653457641602 -13.98226547241211 -0.4992374181747437 -14.21499252319336 -1.061186194419861 C -14.44771766662598 -1.623134970664978 -14.56408309936523 -2.244683742523193 -14.56408309936523 -2.925833702087402 L -14.56408309936523 -2.959891319274902 C -14.56408309936523 -3.595630645751953 -14.45907020568848 -4.19163703918457 -14.24905014038086 -4.747909545898438 C -14.03903007507324 -5.304181575775146 -13.74670219421387 -5.789500713348389 -13.3720703125 -6.203867435455322 C -12.9974365234375 -6.618233680725098 -12.55185127258301 -6.944618225097656 -12.03531265258789 -7.18302059173584 C -11.51877403259277 -7.421422958374023 -10.95398712158203 -7.540623664855957 -10.34095191955566 -7.540623664855957 C -9.693859100341797 -7.540623664855957 -9.11488151550293 -7.418584823608398 -8.604019165039062 -7.174506187438965 C -8.093156814575195 -6.930427551269531 -7.661762714385986 -6.598366737365723 -7.309835910797119 -6.178324699401855 C -6.957909107208252 -5.758281707763672 -6.691124439239502 -5.26728630065918 -6.509483814239502 -4.705338001251221 C -6.327845096588135 -4.143389225006104 -6.237024784088135 -3.538868427276611 -6.237024784088135 -2.891776084899902 C -6.237024784088135 -2.800956249237061 -6.237024784088135 -2.727164745330811 -6.237024784088135 -2.670402526855469 C -6.237024784088135 -2.613639831542969 -6.242701053619385 -2.545525074005127 -6.254052639007568 -2.466057777404785 L -13.23583984375 -2.466057777404785 C -13.1904296875 -1.989252924919128 -13.076904296875 -1.566372513771057 -12.89526557922363 -1.197416186332703 C -12.713623046875 -0.8284600973129272 -12.48373603820801 -0.5162664651870728 -12.20560073852539 -0.2608352899551392 C -11.92746353149414 -0.005403995513916016 -11.6124324798584 0.1875883340835571 -11.2605037689209 0.3181421756744385 C -10.90857696533203 0.4486958980560303 -10.53394317626953 0.5139727592468262 -10.13660621643066 0.5139727592468262 C -9.52357292175293 0.5139727592468262 -8.998517990112305 0.4004478454589844 -8.56144905090332 0.1733977794647217 C -8.124378204345703 -0.05365204811096191 -7.724202632904053 -0.354493260383606 -7.360922336578369 -0.7291258573532104 L -6.543541431427002 0.003110408782958984 C -6.986289501190186 0.5026202797889709 -7.491475582122803 0.9027957320213318 -8.059101104736328 1.203637003898621 C -8.626724243164062 1.504478096961975 -9.33057975769043 1.654898762702942 -10.17066383361816 1.654898762702942 Z M -7.565266132354736 -3.43669605255127 C -7.599323749542236 -3.834033489227295 -7.681628704071045 -4.21434211730957 -7.812183856964111 -4.577621936798096 C -7.942737102508545 -4.940902233123779 -8.12437629699707 -5.258771896362305 -8.35710334777832 -5.531231880187988 C -8.589828491210938 -5.803691864013672 -8.873641967773438 -6.02222728729248 -9.208539962768555 -6.186838626861572 C -9.543439865112305 -6.351449966430664 -9.932262420654297 -6.433755874633789 -10.37500953674316 -6.433755874633789 C -10.76099395751953 -6.433755874633789 -11.11859703063965 -6.357126235961914 -11.44782066345215 -6.203867435455322 C -11.77704238891602 -6.05060863494873 -12.06653213500977 -5.840587615966797 -12.31628799438477 -5.573803901672363 C -12.56604194641113 -5.30702018737793 -12.7703857421875 -4.991988658905029 -12.9293212890625 -4.628708362579346 C -13.0882568359375 -4.26542854309082 -13.1904296875 -3.868091106414795 -13.23583984375 -3.43669605255127 L -7.565266132354736 -3.43669605255127 Z M -3.9381422996521 -7.353307723999023 L -2.62692928314209 -7.353307723999023 L -2.62692928314209 -5.871807098388672 C -2.479346752166748 -6.087504863739014 -2.317573547363281 -6.297525882720947 -2.141609668731689 -6.501870632171631 C -1.965645790100098 -6.706214904785156 -1.764139175415039 -6.885017395019531 -1.537089347839355 -7.038275718688965 C -1.310039043426514 -7.191534996032715 -1.054608345031738 -7.31357479095459 -0.7707953453063965 -7.404394149780273 C -0.4869832992553711 -7.495214462280273 -0.1577606201171875 -7.540623664855957 0.2168717384338379 -7.540623664855957 C 0.9320790767669678 -7.540623664855957 1.522408723831177 -7.373174667358398 1.987860918045044 -7.038275718688965 C 2.453313589096069 -6.703377723693848 2.805241107940674 -6.286173343658447 3.043643474578857 -5.786663055419922 C 3.202578067779541 -6.025065422058105 3.3813796043396 -6.252115249633789 3.580048322677612 -6.467813014984131 C 3.778717517852783 -6.683510780334473 4.002929210662842 -6.870826721191406 4.252683639526367 -7.02976131439209 C 4.502439022064209 -7.18869686126709 4.783413887023926 -7.31357479095459 5.095607757568359 -7.404394149780273 C 5.407801151275635 -7.495214462280273 5.756890296936035 -7.540623664855957 6.142875194549561 -7.540623664855957 C 7.164600372314453 -7.540623664855957 7.964951038360596 -7.225591659545898 8.543928146362305 -6.595528602600098 C 9.122905731201172 -5.965465068817139 9.412394523620605 -5.099836826324463 9.412394523620605 -3.998644351959229 L 9.412394523620605 1.450553774833679 L 8.101181030273438 1.450553774833679 L 8.101181030273438 -3.692127227783203 C 8.101181030273438 -4.543564796447754 7.899673938751221 -5.199171543121338 7.496660709381104 -5.658947467803955 C 7.093647003173828 -6.11872386932373 6.534536361694336 -6.348611831665039 5.819328308105469 -6.348611831665039 C 5.490106105804443 -6.348611831665039 5.177912712097168 -6.289010524749756 4.882747650146484 -6.169809341430664 C 4.587583065032959 -6.05060863494873 4.3293137550354 -5.874645233154297 4.107939720153809 -5.641918659210205 C 3.886566162109375 -5.409192562103271 3.713440895080566 -5.122541904449463 3.588563442230225 -4.781966686248779 C 3.463685989379883 -4.441392421722412 3.401247262954712 -4.055407047271729 3.401247262954712 -3.62401294708252 L 3.401247262954712 1.450553774833679 L 2.090033531188965 1.450553774833679 L 2.090033531188965 -3.726184844970703 C 2.090033531188965 -4.554917335510254 1.888526678085327 -5.199171543121338 1.485513210296631 -5.658947467803955 C 1.082499265670776 -6.11872386932373 0.5290651321411133 -6.348611831665039 -0.1747894287109375 -6.348611831665039 C -0.5267167091369629 -6.348611831665039 -0.8502635955810547 -6.280496597290039 -1.14542818069458 -6.144267082214355 C -1.440592765808105 -6.008036613464355 -1.698862075805664 -5.815043926239014 -1.920236110687256 -5.565289497375488 C -2.141609668731689 -5.315534591674805 -2.314735412597656 -5.023207664489746 -2.439613342285156 -4.688309192657471 C -2.564490795135498 -4.353410720825195 -2.62692928314209 -3.981616020202637 -2.62692928314209 -3.572926044464111 L -2.62692928314209 1.450553774833679 L -3.9381422996521 1.450553774833679 L -3.9381422996521 -7.353307723999023 Z M 12.29025077819824 -10.72499847412109 L 13.78878021240234 -10.72499847412109 L 13.78878021240234 -9.277555465698242 L 12.29025077819824 -9.277555465698242 L 12.29025077819824 -10.72499847412109 Z M 12.37539482116699 -7.353307723999023 L 13.68660926818848 -7.353307723999023 L 13.68660926818848 1.450553774833679 L 12.37539482116699 1.450553774833679 L 12.37539482116699 -7.353307723999023 Z M 19.97021484375 1.637869954109192 C 19.43664741516113 1.637869954109192 18.96268081665039 1.552726268768311 18.54831504821777 1.382438778877258 C 18.13394927978516 1.212151288986206 17.78202247619629 0.9709107875823975 17.49253463745117 0.6587170958518982 C 17.20304489135742 0.3465234041213989 16.98167037963867 -0.02527081966400146 16.82841110229492 -0.4566658735275269 C 16.6751537322998 -0.8880606889724731 16.59852409362793 -1.364865660667419 16.59852409362793 -1.887080311775208 L 16.59852409362793 -7.353307723999023 L 17.90973663330078 -7.353307723999023 L 17.90973663330078 -2.210626602172852 C 17.90973663330078 -1.393247008323669 18.11975860595703 -0.7461544275283813 18.5398006439209 -0.2693496942520142 C 18.9598445892334 0.2074552774429321 19.56152534484863 0.4458577632904053 20.3448486328125 0.4458577632904053 C 20.71948051452637 0.4458577632904053 21.06856918334961 0.3805809020996094 21.39211654663086 0.2500271797180176 C 21.71566200256348 0.1194734573364258 21.99379730224609 -0.06784272193908691 22.22652435302734 -0.3119214773178101 C 22.45925140380859 -0.5560001134872437 22.64372825622559 -0.8483270406723022 22.77995872497559 -1.188902020454407 C 22.91618919372559 -1.529476761817932 22.98430442810059 -1.904109358787537 22.98430442810059 -2.312798976898193 L 22.98430442810059 -7.353307723999023 L 24.27848815917969 -7.353307723999023 L 24.27848815917969 1.450553774833679 L 22.98430442810059 1.450553774833679 L 22.98430442810059 -0.08203339576721191 C 22.68913841247559 0.3947714567184448 22.30315208435059 0.8006232976913452 21.82634925842285 1.1355220079422 C 21.34954452514648 1.470420718193054 20.73083305358887 1.637869954109192 19.97021484375 1.637869954109192 Z M 27.22446441650391 -7.353307723999023 L 28.53567695617676 -7.353307723999023 L 28.53567695617676 -5.871807098388672 C 28.68325805664062 -6.087504863739014 28.84502983093262 -6.297525882720947 29.02099609375 -6.501870632171631 C 29.19696044921875 -6.706214904785156 29.39846611022949 -6.885017395019531 29.62551689147949 -7.038275718688965 C 29.85256576538086 -7.191534996032715 30.10799789428711 -7.31357479095459 30.39180946350098 -7.404394149780273 C 30.67562294006348 -7.495214462280273 31.00484657287598 -7.540623664855957 31.37947845458984 -7.540623664855957 C 32.09468460083008 -7.540623664855957 32.68501663208008 -7.373174667358398 33.15046691894531 -7.038275718688965 C 33.61592102050781 -6.703377723693848 33.96784591674805 -6.286173343658447 34.20624923706055 -5.786663055419922 C 34.36518478393555 -6.025065422058105 34.54398727416992 -6.252115249633789 34.74265289306641 -6.467813014984131 C 34.94132232666016 -6.683510780334473 35.16553497314453 -6.870826721191406 35.41529083251953 -7.02976131439209 C 35.66504287719727 -7.18869686126709 35.94601821899414 -7.31357479095459 36.25821685791016 -7.404394149780273 C 36.57040786743164 -7.495214462280273 36.91949844360352 -7.540623664855957 37.30548095703125 -7.540623664855957 C 38.32720565795898 -7.540623664855957 39.12755966186523 -7.225591659545898 39.70653533935547 -6.595528602600098 C 40.28551483154297 -5.965465068817139 40.57500076293945 -5.099836826324463 40.57500076293945 -3.998644351959229 L 40.57500076293945 1.450553774833679 L 39.26379013061523 1.450553774833679 L 39.26379013061523 -3.692127227783203 C 39.26379013061523 -4.543564796447754 39.06228256225586 -5.199171543121338 38.65926742553711 -5.658947467803955 C 38.25625228881836 -6.11872386932373 37.6971435546875 -6.348611831665039 36.98193359375 -6.348611831665039 C 36.65271377563477 -6.348611831665039 36.34051895141602 -6.289010524749756 36.04535293579102 -6.169809341430664 C 35.75018692016602 -6.05060863494873 35.49192047119141 -5.874645233154297 35.27054595947266 -5.641918659210205 C 35.04917144775391 -5.409192562103271 34.87604522705078 -5.122541904449463 34.75117111206055 -4.781966686248779 C 34.62629318237305 -4.441392421722412 34.5638542175293 -4.055407047271729 34.5638542175293 -3.62401294708252 L 34.5638542175293 1.450553774833679 L 33.25263977050781 1.450553774833679 L 33.25263977050781 -3.726184844970703 C 33.25263977050781 -4.554917335510254 33.05113220214844 -5.199171543121338 32.64812088012695 -5.658947467803955 C 32.2451057434082 -6.11872386932373 31.69167137145996 -6.348611831665039 30.98781585693359 -6.348611831665039 C 30.63588905334473 -6.348611831665039 30.31234359741211 -6.280496597290039 30.01717758178711 -6.144267082214355 C 29.72201156616211 -6.008036613464355 29.46374320983887 -5.815043926239014 29.24237060546875 -5.565289497375488 C 29.02099609375 -5.315534591674805 28.84786987304688 -5.023207664489746 28.72299385070801 -4.688309192657471 C 28.59811592102051 -4.353410720825195 28.53567695617676 -3.981616020202637 28.53567695617676 -3.572926044464111 L 28.53567695617676 1.450553774833679 L 27.22446441650391 1.450553774833679 L 27.22446441650391 -7.353307723999023 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
            allowDrawingOutsideViewBox: true,
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text(
              'Account',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SvgPicture.string(
            '<svg viewBox="30.9 390.0 344.1 1.0" ><path transform="translate(5038.81, -36.0)" d="M -4663.8125 426.0120239257812 L -5007.88525390625 426.0120239257812" fill="none" fill-opacity="0.26" stroke="#ffffff" stroke-width="1" stroke-opacity="0.26" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
          ListTile(
            leading: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            title: Text(
              'Notifications',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SvgPicture.string(
            '<svg viewBox="30.9 390.0 344.1 1.0" ><path transform="translate(5038.81, -36.0)" d="M -4663.8125 426.0120239257812 L -5007.88525390625 426.0120239257812" fill="none" fill-opacity="0.26" stroke="#ffffff" stroke-width="1" stroke-opacity="0.26" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w300,
              ),
              softWrap: false,
            ),
          ),
          SvgPicture.string(
            '<svg viewBox="30.9 390.0 344.1 1.0" ><path transform="translate(5038.81, -36.0)" d="M -4663.8125 426.0120239257812 L -5007.88525390625 426.0120239257812" fill="none" fill-opacity="0.26" stroke="#ffffff" stroke-width="1" stroke-opacity="0.26" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              color: Colors.white,
            ),
            title: Text(
              'Help',
              style: TextStyle(
                fontFamily: 'Gotham',
                fontSize: 17,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w300,
              ),
              softWrap: false,
            ),
          ),
          SvgPicture.string(
            '<svg viewBox="30.9 390.0 344.1 1.0" ><path transform="translate(5038.81, -36.0)" d="M -4663.8125 426.0120239257812 L -5007.88525390625 426.0120239257812" fill="none" fill-opacity="0.26" stroke="#ffffff" stroke-width="1" stroke-opacity="0.26" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
          InkWell(
            onTap: () {
              cubit.logout();
              if (cubit.logoutUser!.status) {
                Fluttertoast.showToast(
                    msg: cubit.logoutUser!.message,
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.green,
                    textColor: Colors.white,
                    fontSize: 16.0);
              } else {
                Fluttertoast.showToast(
                    msg: cubit.logoutUser!.message,
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              }
            },
            child: ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 17,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w300,
                ),
                softWrap: false,
              ),
            ),
          ),
          SvgPicture.string(
            '<svg viewBox="30.9 390.0 344.1 1.0" ><path transform="translate(5038.81, -36.0)" d="M -4663.8125 426.0120239257812 L -5007.88525390625 426.0120239257812" fill="none" fill-opacity="0.26" stroke="#ffffff" stroke-width="1" stroke-opacity="0.26" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}