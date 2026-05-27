.class final Lbrx;
.super Lbry;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbry;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d(ZII)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    :cond_0
    if-ne p2, v0, :cond_2

    :cond_1
    const/4 p1, 0x2

    if-ne p3, p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
