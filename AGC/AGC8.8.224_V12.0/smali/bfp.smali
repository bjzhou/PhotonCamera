.class public final Lbfp;
.super Lbfq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbfq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const/16 v0, 0x1700

    return v0
.end method

.method public final b()Z
    .locals 1

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lbfq;->h(I)Z

    move-result v0

    return v0
.end method
