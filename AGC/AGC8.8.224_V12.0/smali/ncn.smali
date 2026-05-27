.class public abstract Lncn;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "ncw"

    sput-object v0, Lncn;->a:Ljava/lang/String;

    const-string v1, "com.google.common.flogger.backend.google.GooglePlatform"

    sput-object v1, Lncn;->b:Ljava/lang/String;

    const-string v2, "com.google.common.flogger.backend.system.DefaultPlatform"

    sput-object v2, Lncn;->c:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    sput-object v3, Lncn;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    sget-object v0, Lndz;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lndz;

    iget v0, v0, Lndz;->b:I

    return v0
.end method

.method public static b()J
    .locals 2

    sget-object v0, Lncl;->a:Lncn;

    invoke-virtual {v0}, Lncn;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(Ljava/lang/String;)Lnbq;
    .locals 1

    sget-object v0, Lncl;->a:Lncn;

    invoke-virtual {v0, p0}, Lncn;->e(Ljava/lang/String;)Lnbq;

    move-result-object p0

    return-object p0
.end method

.method public static f()Lnbu;
    .locals 1

    invoke-static {}, Lncn;->i()Lndd;

    move-result-object v0

    invoke-virtual {v0}, Lndd;->a()Lnbu;

    move-result-object v0

    return-object v0
.end method

.method public static g()Lncm;
    .locals 1

    sget-object v0, Lncl;->a:Lncn;

    invoke-virtual {v0}, Lncn;->h()Lncm;

    move-result-object v0

    return-object v0
.end method

.method public static i()Lndd;
    .locals 1

    sget-object v0, Lncl;->a:Lncn;

    invoke-virtual {v0}, Lncn;->j()Lndd;

    move-result-object v0

    return-object v0
.end method

.method public static k()Lndl;
    .locals 1

    invoke-static {}, Lncn;->i()Lndd;

    move-result-object v0

    invoke-virtual {v0}, Lndd;->b()Lndl;

    move-result-object v0

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lncl;->a:Lncn;

    invoke-virtual {v0}, Lncn;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n(Ljava/lang/String;Ljava/util/logging/Level;Z)Z
    .locals 1

    invoke-static {}, Lncn;->i()Lndd;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lndd;->c(Ljava/lang/String;Ljava/util/logging/Level;Z)V

    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic o()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lncn;->d:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected c()J
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract e(Ljava/lang/String;)Lnbq;
.end method

.method protected abstract h()Lncm;
.end method

.method protected j()Lndd;
    .locals 1

    sget-object v0, Lndf;->a:Lndd;

    return-object v0
.end method

.method protected abstract m()Ljava/lang/String;
.end method
