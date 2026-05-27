.class public final Lnop;
.super Lnmw;


# static fields
.field public static final a:Lnop;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lnnb;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lnop;

    invoke-direct {v0}, Lnop;-><init>()V

    :goto_0
    sput-object v0, Lnop;->a:Lnop;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnmw;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnnb;->cancel(Z)Z

    return-void
.end method
