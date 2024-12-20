package cookie;

import java.util.Random;

public class NickCreator {
	static String[] koreanNicknames = {
		    "민준", "서연", "도윤", "하은", "지호", "수빈", "예준", "서윤",
		    "지훈", "지우", "준우", "지아", "유준", "예은", "현우", "은서",
		    "민서", "지민", "예서", "하린", "지용", "서하", "우진", "유나",
		    "지은", "준호", "서영", "예원", "하율", "지혁", "서윤", "지수",
		    "준영", "예린", "하준", "지혜", "준서", "서민", "예진", "하린",
		    "도현", "하늘", "서진", "은우", "윤호", "지안", "채원", "우영",
		    "수현", "지성", "하경", "유진", "민재", "다은", "은지", "현지",
		    "보라", "채은", "세은", "지윤", "하영", "민경", "예림", "나래",
		    "소윤", "하솔", "지율", "소희", "민지", "지원", "규리", "수진",
		    "서현", "다빈", "지율", "유리", "예슬", "현아", "혜진", "지후",
		    "서림", "다혜", "은비", "채희", "예린", "혜원", "민아", "서진",
		    "소희", "예원", "하린", "태윤", "간호", "가온", "가람", "가을",
		    "가인", "가희", "가온", "가빈", "가은", "가을", "가람", "가온",
		    "가은", "가늘", "가온", "가희", "가빈", "가을", "가람", "가온",
		    "가은", "가늘", "가희", "가린", "가은", "가람", "가온", "가진",
		    "가휘", "가을", "가은", "가린", "가희", "가빈", "가람", "가온",
		    "가은", "가희", "가빈", "가람", "가온", "가을", "가은", "가린",
		    "가희", "가빈", "가람", "가온", "가을", "가은", "가린", "가희",
		    "가빈", "가람", "가온", "가을", "가은", "가린", "가희", "가빈",
		    "가람", "가온", "가을", "가은", "가린", "가희", "가빈", "가람",
		    "가온", "가을", "가은", "가린", "가희", "가빈", "가람", "가온",
		    "가을", "가은", "가린", "가희", "가빈", "가람", "가온", "가을",
		    "가은", "가린", "가희", "가빈", "가람", "가온", "가을", "가은",
		    "가린", "가희", "가빈", "가람", "가온", "가을", "가은", "가린",
		    "가희", "가빈", "가람", "가온", "가을", "가은", "가린", "가희",
		    "가빈", "가람", "가온", "가을", "가은", "가린", "가희", "가빈",
		    "가람", "가온", "가을", "가은", "가린", "가희", "가빈", "가람",
		    "가온", "가을", "가은", "가린", "가희", "가빈", "가람", "가온",
		    "가을", "가은", "가린", "가희", "가빈", "가람", "가온", "가을",
		    "가은", "가린", "가희", "가빈", "가람", "가온", "가을", "가은",
		    "가린", "가희", "가빈", "가람", "가온", "가을", "가은", "가린",
		    "가희", "가빈", "가람", "가온", "가을", "가은", "가린", "가희",
		    "가빈", "가람", "가온", "가을", "가은", "가린", "가희", "가빈",
		    "가람", "가온", "가을", "가은", "가린", "가희", "가빈", "가람",
		    "가온", "가을", "가은", "가린", "가희", "가빈", "가람", "가온",
		    "가을", "가은", "가린", "가희", "가빈", "가람", "가온", "가을",
		    "가은", "가린", "가희", "가빈", "가람", "가온", "가을", "가은",
		    "가린", "가희", "가빈", "가람", "가온", "가을", "가은", "가린",
		    "가희", "가빈", "가람", "가온", "가을", "가은", "가린", "가희",
		    "가빈", "가람", "가온", "가을", "가은", "가린", "가희", "가빈",
		    "가람", "가온", "가을", "가은", "가린", "가희", "가빈", "가람",
		    "가온", "끝", "빛", "바다", "하늘", "별", "꽃", "솔바람",
		    "달빛", "해솔", "산호", "구름", "새벽", "봄날", "여름", "가을",
		    "겨울", "사랑", "희망", "행복", "건강", "평화", "자유", "용기",
		    "지혜", "성실", "열정", "창의", "용맹", "우정", "인내", "감사",
		    "친절", "배려", "성공", "미래", "꿈", "기쁨", "영감", "빛나",
		    "반짝", "설레임", "새싹", "녹색", "노을", "바람", "파도", "구름",
		    "비옷", "눈꽃", "겨울", "봄비", "여름밤", "가을밤", "겨울밤",
		    "햇살", "달빛", "별빛", "오로라", "무지개", "산책", "해변", "숲속",
		    "강물", "호수", "계곡", "바위", "나무", "꽃잎", "잎새", "풀잎",
		    "솔개", "참새", "버드나무", "벚꽃", "대나무", "메밀꽃", "유채꽃",
		    "금잔디", "산세",
		    "아름", "빛나", "별이", "달님", "해님", "솔솔", "꽃님", "바람이",
		    "구름다", "산울림", "강흔", "호수빛", "나래", "연꽃", "수련",
		    "매화", "라일락", "철쭉", "진달래", "라벤더", "패랭이",
		    "모란", "튤립", "장미", "프리지아", "해바라기", "라벤더",
		    "귤빛", "밤하늘", "서리", "이슬", "새벽별", "노을빛",
		    "별빛", "달빛", "산호", "연두", "푸른", "빛나", "금빛",
		    "은빛", "둥근달", "하얀눈", "푸른나무", "햇살", "수평선",
		    "가을비", "눈송이", "해맑음", "맑은하늘", "따스함",
		    "상큼", "싱그럽게", "포근함", "조용함", "깊은바다",
		    "황금빛", "은하수", "푸른바다", "산들바람", "은은한",
		    "차가운밤", "따뜻한봄", "환한미소", "부드러운빛",
		    "유리향", "달콤한꿈", "무지개빛", "사과향", "복숭아꽃",
		    "청명", "한여름밤", "겨울밤", "봄햇살", "여름밤",
		    "가을단풍", "노을빛", "겨울눈", "바다소리", "솔바람",
		    "산림욕", "숲속", "모래사장", "파도소리", "조개껍질",
		    "해돋이", "해넘이", "바다별", "새소리", "고요함",
		    "한강밤", "서울밤", "달래", "보라빛", "은하",
		    "별헤는밤", "서리꽃", "눈부신빛", "별빛이", "달빛이",
		    "하늘빛", "바람이", "물결", "해안선", "모량", "아교",
		    "자야", "울림", "선비", "산책", "소나무", "잎새",
		    "초록", "비바람", "바위", "산골", "산호색", "마을",
		    "인연", "연인", "사랑해", "고마워", "행운", "복", "희망",
		    "용기", "지혜", "성공", "평화", "기쁨", "감사",
		    "친절", "배려", "사랑이", "희망찬", "행복한",
		    "용맹한", "지혜로운", "성실한", "열정적인",
		    "창의적인", "용기있는", "우정", "인내심",
		    "감사한", "친절한", "배려심", "성공적인",
		    "평화로운", "기쁜", "희망찬", "행복한", "용감한",
		    "지혜로운", "성실한", "열정적인", "창의적인"
	};
    public static void main(String[] args) {
        System.out.println(koreanNicknames.length);
    }


}
