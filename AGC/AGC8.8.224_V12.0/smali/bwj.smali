.class final Lbwj;
.super Lbwm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbwm;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIII)F
    .locals 0

    int-to-float p4, p4

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    div-float/2addr p4, p2

    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public final b(IIII)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method
