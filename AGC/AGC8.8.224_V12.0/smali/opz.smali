.class public final Lopz;
.super Ljava/lang/Object;


# static fields
.field public static final a:Loqa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "kotlinx.coroutines.main.delay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lljz;->D(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lopy;->c:Lopy;

    goto :goto_0

    :cond_0
    sget-object v0, Loqf;->a:Lopq;

    sget-object v0, Lowu;->a:Lork;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Loqa;

    if-nez v1, :cond_1

    sget-object v0, Lopy;->c:Lopy;

    goto :goto_0

    :cond_1
    check-cast v0, Loqa;

    :goto_0
    sput-object v0, Lopz;->a:Loqa;

    return-void
.end method
