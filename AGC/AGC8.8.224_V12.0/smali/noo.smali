.class public Lnoo;
.super Lnnb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnnb;-><init>()V

    return-void
.end method

.method public static q(Lnou;)Lnoo;
    .locals 1

    instance-of v0, p0, Lnoo;

    if-eqz v0, :cond_0

    check-cast p0, Lnoo;

    goto :goto_0

    :cond_0
    new-instance v0, Lnoe;

    invoke-direct {v0, p0}, Lnoe;-><init>(Lnou;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
