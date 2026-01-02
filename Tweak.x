#import <Foundation/Foundation.h>

// 1. منع إرسال حدث الانضمام للغرفة للخادم
%hook RaveRoomManager
- (void)sendJoinEventWithUser:(id)arg1 {
    // نتركها فارغة لتعطيل الوظيفة تماماً
}
%end

// 2. إخفاء المستخدم من قائمة المشاركين
%hook RaveParticipant
- (BOOL)isVisible {
    return NO;
}
%end

// 3. محاكاة وضع الشبح في نظام التطبيق
%hook RaveUser
- (BOOL)isGhostMode {
    return YES;
}
%end
