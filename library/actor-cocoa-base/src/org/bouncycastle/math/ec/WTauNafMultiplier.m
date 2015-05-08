//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/org/bouncycastle/math/ec/WTauNafMultiplier.java
//


#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/math/ec/AbstractECMultiplier.h"
#include "org/bouncycastle/math/ec/ECCurve.h"
#include "org/bouncycastle/math/ec/ECFieldElement.h"
#include "org/bouncycastle/math/ec/ECPoint.h"
#include "org/bouncycastle/math/ec/PreCompInfo.h"
#include "org/bouncycastle/math/ec/Tnaf.h"
#include "org/bouncycastle/math/ec/WTauNafMultiplier.h"
#include "org/bouncycastle/math/ec/WTauNafPreCompInfo.h"
#include "org/bouncycastle/math/ec/ZTauElement.h"

@interface OrgBouncycastleMathEcWTauNafMultiplier ()

- (OrgBouncycastleMathEcECPoint_F2m *)multiplyWTnafWithOrgBouncycastleMathEcECPoint_F2m:(OrgBouncycastleMathEcECPoint_F2m *)p
                                                   withOrgBouncycastleMathEcZTauElement:(OrgBouncycastleMathEcZTauElement *)lambda
                                                   withOrgBouncycastleMathEcPreCompInfo:(id<OrgBouncycastleMathEcPreCompInfo>)preCompInfo
                                                                               withByte:(jbyte)a
                                                                               withByte:(jbyte)mu;

+ (OrgBouncycastleMathEcECPoint_F2m *)multiplyFromWTnafWithOrgBouncycastleMathEcECPoint_F2m:(OrgBouncycastleMathEcECPoint_F2m *)p
                                                                              withByteArray:(IOSByteArray *)u
                                                       withOrgBouncycastleMathEcPreCompInfo:(id<OrgBouncycastleMathEcPreCompInfo>)preCompInfo;

@end

__attribute__((unused)) static OrgBouncycastleMathEcECPoint_F2m *OrgBouncycastleMathEcWTauNafMultiplier_multiplyWTnafWithOrgBouncycastleMathEcECPoint_F2m_withOrgBouncycastleMathEcZTauElement_withOrgBouncycastleMathEcPreCompInfo_withByte_withByte_(OrgBouncycastleMathEcWTauNafMultiplier *self, OrgBouncycastleMathEcECPoint_F2m *p, OrgBouncycastleMathEcZTauElement *lambda, id<OrgBouncycastleMathEcPreCompInfo> preCompInfo, jbyte a, jbyte mu);

__attribute__((unused)) static OrgBouncycastleMathEcECPoint_F2m *OrgBouncycastleMathEcWTauNafMultiplier_multiplyFromWTnafWithOrgBouncycastleMathEcECPoint_F2m_withByteArray_withOrgBouncycastleMathEcPreCompInfo_(OrgBouncycastleMathEcECPoint_F2m *p, IOSByteArray *u, id<OrgBouncycastleMathEcPreCompInfo> preCompInfo);

NSString *OrgBouncycastleMathEcWTauNafMultiplier_PRECOMP_NAME_ = @"bc_wtnaf";

@implementation OrgBouncycastleMathEcWTauNafMultiplier

- (OrgBouncycastleMathEcECPoint *)multiplyPositiveWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)point
                                                            withJavaMathBigInteger:(JavaMathBigInteger *)k {
  if (!([point isKindOfClass:[OrgBouncycastleMathEcECPoint_F2m class]])) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"Only ECPoint.F2m can be used in WTauNafMultiplier");
  }
  OrgBouncycastleMathEcECPoint_F2m *p = (OrgBouncycastleMathEcECPoint_F2m *) check_class_cast(point, [OrgBouncycastleMathEcECPoint_F2m class]);
  OrgBouncycastleMathEcECCurve_F2m *curve = (OrgBouncycastleMathEcECCurve_F2m *) check_class_cast([((OrgBouncycastleMathEcECPoint_F2m *) nil_chk(p)) getCurve], [OrgBouncycastleMathEcECCurve_F2m class]);
  jint m = [((OrgBouncycastleMathEcECCurve_F2m *) nil_chk(curve)) getM];
  jbyte a = [((JavaMathBigInteger *) nil_chk([((OrgBouncycastleMathEcECFieldElement *) nil_chk([curve getA])) toBigInteger])) charValue];
  jbyte mu = [curve getMu];
  IOSObjectArray *s = [curve getSi];
  OrgBouncycastleMathEcZTauElement *rho = OrgBouncycastleMathEcTnaf_partModReductionWithJavaMathBigInteger_withInt_withByte_withJavaMathBigIntegerArray_withByte_withByte_(k, m, a, s, mu, (jbyte) 10);
  return OrgBouncycastleMathEcWTauNafMultiplier_multiplyWTnafWithOrgBouncycastleMathEcECPoint_F2m_withOrgBouncycastleMathEcZTauElement_withOrgBouncycastleMathEcPreCompInfo_withByte_withByte_(self, p, rho, [curve getPreCompInfoWithOrgBouncycastleMathEcECPoint:p withNSString:OrgBouncycastleMathEcWTauNafMultiplier_PRECOMP_NAME_], a, mu);
}

- (OrgBouncycastleMathEcECPoint_F2m *)multiplyWTnafWithOrgBouncycastleMathEcECPoint_F2m:(OrgBouncycastleMathEcECPoint_F2m *)p
                                                   withOrgBouncycastleMathEcZTauElement:(OrgBouncycastleMathEcZTauElement *)lambda
                                                   withOrgBouncycastleMathEcPreCompInfo:(id<OrgBouncycastleMathEcPreCompInfo>)preCompInfo
                                                                               withByte:(jbyte)a
                                                                               withByte:(jbyte)mu {
  return OrgBouncycastleMathEcWTauNafMultiplier_multiplyWTnafWithOrgBouncycastleMathEcECPoint_F2m_withOrgBouncycastleMathEcZTauElement_withOrgBouncycastleMathEcPreCompInfo_withByte_withByte_(self, p, lambda, preCompInfo, a, mu);
}

+ (OrgBouncycastleMathEcECPoint_F2m *)multiplyFromWTnafWithOrgBouncycastleMathEcECPoint_F2m:(OrgBouncycastleMathEcECPoint_F2m *)p
                                                                              withByteArray:(IOSByteArray *)u
                                                       withOrgBouncycastleMathEcPreCompInfo:(id<OrgBouncycastleMathEcPreCompInfo>)preCompInfo {
  return OrgBouncycastleMathEcWTauNafMultiplier_multiplyFromWTnafWithOrgBouncycastleMathEcECPoint_F2m_withByteArray_withOrgBouncycastleMathEcPreCompInfo_(p, u, preCompInfo);
}

- (instancetype)init {
  OrgBouncycastleMathEcWTauNafMultiplier_init(self);
  return self;
}

@end

OrgBouncycastleMathEcECPoint_F2m *OrgBouncycastleMathEcWTauNafMultiplier_multiplyWTnafWithOrgBouncycastleMathEcECPoint_F2m_withOrgBouncycastleMathEcZTauElement_withOrgBouncycastleMathEcPreCompInfo_withByte_withByte_(OrgBouncycastleMathEcWTauNafMultiplier *self, OrgBouncycastleMathEcECPoint_F2m *p, OrgBouncycastleMathEcZTauElement *lambda, id<OrgBouncycastleMathEcPreCompInfo> preCompInfo, jbyte a, jbyte mu) {
  IOSObjectArray *alpha = (a == 0) ? OrgBouncycastleMathEcTnaf_get_alpha0_() : OrgBouncycastleMathEcTnaf_get_alpha1_();
  JavaMathBigInteger *tw = OrgBouncycastleMathEcTnaf_getTwWithByte_withInt_(mu, OrgBouncycastleMathEcTnaf_WIDTH);
  IOSByteArray *u = OrgBouncycastleMathEcTnaf_tauAdicWNafWithByte_withOrgBouncycastleMathEcZTauElement_withByte_withJavaMathBigInteger_withJavaMathBigInteger_withOrgBouncycastleMathEcZTauElementArray_(mu, lambda, OrgBouncycastleMathEcTnaf_WIDTH, JavaMathBigInteger_valueOfWithLong_(OrgBouncycastleMathEcTnaf_POW_2_WIDTH), tw, alpha);
  return OrgBouncycastleMathEcWTauNafMultiplier_multiplyFromWTnafWithOrgBouncycastleMathEcECPoint_F2m_withByteArray_withOrgBouncycastleMathEcPreCompInfo_(p, u, preCompInfo);
}

OrgBouncycastleMathEcECPoint_F2m *OrgBouncycastleMathEcWTauNafMultiplier_multiplyFromWTnafWithOrgBouncycastleMathEcECPoint_F2m_withByteArray_withOrgBouncycastleMathEcPreCompInfo_(OrgBouncycastleMathEcECPoint_F2m *p, IOSByteArray *u, id<OrgBouncycastleMathEcPreCompInfo> preCompInfo) {
  OrgBouncycastleMathEcWTauNafMultiplier_initialize();
  OrgBouncycastleMathEcECCurve_F2m *curve = (OrgBouncycastleMathEcECCurve_F2m *) check_class_cast([((OrgBouncycastleMathEcECPoint_F2m *) nil_chk(p)) getCurve], [OrgBouncycastleMathEcECCurve_F2m class]);
  jbyte a = [((JavaMathBigInteger *) nil_chk([((OrgBouncycastleMathEcECFieldElement *) nil_chk([((OrgBouncycastleMathEcECCurve_F2m *) nil_chk(curve)) getA])) toBigInteger])) charValue];
  IOSObjectArray *pu;
  if ((preCompInfo == nil) || !([preCompInfo isKindOfClass:[OrgBouncycastleMathEcWTauNafPreCompInfo class]])) {
    pu = OrgBouncycastleMathEcTnaf_getPreCompWithOrgBouncycastleMathEcECPoint_F2m_withByte_(p, a);
    OrgBouncycastleMathEcWTauNafPreCompInfo *pre = new_OrgBouncycastleMathEcWTauNafPreCompInfo_init();
    [pre setPreCompWithOrgBouncycastleMathEcECPoint_F2mArray:pu];
    [curve setPreCompInfoWithOrgBouncycastleMathEcECPoint:p withNSString:OrgBouncycastleMathEcWTauNafMultiplier_PRECOMP_NAME_ withOrgBouncycastleMathEcPreCompInfo:pre];
  }
  else {
    pu = [((OrgBouncycastleMathEcWTauNafPreCompInfo *) check_class_cast(preCompInfo, [OrgBouncycastleMathEcWTauNafPreCompInfo class])) getPreComp];
  }
  OrgBouncycastleMathEcECPoint_F2m *q = (OrgBouncycastleMathEcECPoint_F2m *) check_class_cast([((OrgBouncycastleMathEcECCurve *) nil_chk([p getCurve])) getInfinity], [OrgBouncycastleMathEcECPoint_F2m class]);
  for (jint i = ((IOSByteArray *) nil_chk(u))->size_ - 1; i >= 0; i--) {
    q = OrgBouncycastleMathEcTnaf_tauWithOrgBouncycastleMathEcECPoint_F2m_(q);
    jbyte ui = IOSByteArray_Get(u, i);
    if (ui != 0) {
      if (ui > 0) {
        q = [((OrgBouncycastleMathEcECPoint_F2m *) nil_chk(q)) addSimpleWithOrgBouncycastleMathEcECPoint_F2m:IOSObjectArray_Get(nil_chk(pu), ui)];
      }
      else {
        q = [((OrgBouncycastleMathEcECPoint_F2m *) nil_chk(q)) subtractSimpleWithOrgBouncycastleMathEcECPoint_F2m:IOSObjectArray_Get(nil_chk(pu), -ui)];
      }
    }
  }
  return q;
}

void OrgBouncycastleMathEcWTauNafMultiplier_init(OrgBouncycastleMathEcWTauNafMultiplier *self) {
  (void) OrgBouncycastleMathEcAbstractECMultiplier_init(self);
}

OrgBouncycastleMathEcWTauNafMultiplier *new_OrgBouncycastleMathEcWTauNafMultiplier_init() {
  OrgBouncycastleMathEcWTauNafMultiplier *self = [OrgBouncycastleMathEcWTauNafMultiplier alloc];
  OrgBouncycastleMathEcWTauNafMultiplier_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathEcWTauNafMultiplier)
