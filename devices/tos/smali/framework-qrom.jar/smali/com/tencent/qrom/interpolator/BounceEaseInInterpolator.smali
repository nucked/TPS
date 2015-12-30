.class public Lcom/tencent/qrom/interpolator/BounceEaseInInterpolator;
.super Lcom/tencent/qrom/interpolator/BaseInterpolator;
.source "BounceEaseInInterpolator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/tencent/qrom/interpolator/BaseInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public calculate(FFFF)Ljava/lang/Float;
    .locals 5
    .param p1, "t"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F

    .prologue
    const/high16 v4, 0x40f20000    # 7.5625f

    .line 9
    div-float/2addr p1, p4

    const v0, 0x3eba2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 10
    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 16
    :goto_0
    return-object v0

    .line 11
    :cond_0
    const v0, 0x3f3a2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 12
    const v0, 0x3f0ba2e9

    sub-float/2addr p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    add-float/2addr v0, v1

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_1
    float-to-double v0, p1

    const-wide v2, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 14
    const v0, 0x3f51745d

    sub-float/2addr p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f700000    # 0.9375f

    add-float/2addr v0, v1

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 16
    :cond_2
    const v0, 0x3f745d17

    sub-float/2addr p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f7c0000    # 0.984375f

    add-float/2addr v0, v1

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method
